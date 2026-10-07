"""Integration checks for the supplied APK, archive preservation, and signing."""
import hashlib
import io
from pathlib import Path
import struct
import sys
import tempfile
import unittest
from zipfile import ZipFile

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT))
from hooo import build, signing
from hooo.dex import Dex, FACTORY, PATCHED_PREFIX
from hooo.manifest import summary


class ProjectTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        temporary = ROOT/'.local/test-tmp'
        temporary.mkdir(parents=True,exist_ok=True)
        cls.temp = tempfile.TemporaryDirectory(dir=temporary)
        cls.directory = Path(cls.temp.name)
        cls.original = build.check_original(ROOT/'inputs/original.apk')
        cls.unsigned, cls.patch = build.compatibility_unsigned(cls.original)
        cls.signed = signing.sign(cls.unsigned,cls.directory/'keys')

    @classmethod
    def tearDownClass(cls):
        cls.temp.cleanup()

    def test_known_working_payload_reproduced(self):
        # The user confirmed this exact reference installed and ran on an A55.
        # Compare ALL uncompressed entry bytes, independent of ZIP/signing identity.
        with ZipFile(io.BytesIO(self.unsigned)) as result, ZipFile(ROOT/'reference/confirmed-working.apk') as confirmed:
            self.assertEqual(set(result.namelist()),set(confirmed.namelist()))
            for name in result.namelist():
                self.assertEqual(result.read(name),confirmed.read(name),name)

    def test_only_expected_original_entries_change(self):
        with ZipFile(io.BytesIO(self.original)) as original, ZipFile(io.BytesIO(self.unsigned)) as patched:
            removed = set(original.namelist())-set(patched.namelist())
            self.assertTrue(removed)
            self.assertTrue(all(n.startswith(('lib/','META-INF/')) for n in removed))
            changed = {n for n in patched.namelist() if patched.read(n) != original.read(n)}
            self.assertEqual(changed,{'classes.dex','AndroidManifest.xml'})
            before, after = original.read('classes.dex'),patched.read('classes.dex')
            start = self.patch['instruction_offset']
            self.assertEqual(before[32:start],after[32:start])
            self.assertEqual(before[start+8:],after[start+8:])
            dex = Dex(after)
            self.assertEqual(dex.units(dex.find(FACTORY),8),PATCHED_PREFIX)
            self.assertEqual(summary(patched.read('AndroidManifest.xml'))['effective_targetSdkVersion'],24)

    def test_wrong_apk_rejected(self):
        path = self.directory/'wrong.apk'
        path.write_bytes(self.signed)
        with self.assertRaisesRegex(ValueError,'not the supplied original'):
            build.check_original(path)

    def test_signature_detects_content_tampering(self):
        signing.verify(self.signed)
        corrupted = bytearray(self.signed)
        corrupted[100] ^= 1
        with self.assertRaisesRegex(ValueError,'digest mismatch'):
            signing.verify(corrupted)

    def test_signature_detects_signature_tampering(self):
        _, (_,_,signature) = signing.verify(self.signed)
        offset = self.signed.index(signature)
        corrupted = bytearray(self.signed)
        corrupted[offset] ^= 1
        with self.assertRaisesRegex(ValueError,'signature verification failed'):
            signing.verify(corrupted)

    def test_same_key_reused_and_reproducible(self):
        self.assertEqual(self.signed,signing.sign(self.unsigned,self.directory/'keys'))

    def test_asset_overlay_only_changes_requested_asset(self):
        with ZipFile(io.BytesIO(self.unsigned)) as base:
            name = next(n for n in base.namelist() if n.startswith('assets/') and n.endswith('.cf'))
            data = base.read(name)
        asset_root = self.directory/'assets'
        file = asset_root/name.removeprefix('assets/')
        file.parent.mkdir(parents=True,exist_ok=True)
        file.write_bytes(data+b'asset-overlay-test')
        result,_ = build.compatibility_unsigned(self.original,assets=asset_root)
        with ZipFile(io.BytesIO(self.unsigned)) as before, ZipFile(io.BytesIO(result)) as after:
            changed = {n for n in after.namelist() if after.read(n) != before.read(n)}
            self.assertEqual(changed,{name})

    def test_stored_entries_aligned(self):
        with ZipFile(io.BytesIO(self.signed)) as archive:
            for info in archive.infolist():
                if info.compress_type == 0:
                    namesize,extrasize = struct.unpack_from('<HH',self.signed,info.header_offset+26)
                    self.assertEqual((info.header_offset+30+namesize+extrasize)%4,0,info.filename)

    def test_original_inputs_unchanged(self):
        self.assertEqual(hashlib.sha256((ROOT/'inputs/original.apk').read_bytes()).hexdigest(),build.ORIGINAL_SHA256)
        self.assertEqual(hashlib.sha256((ROOT/'reference/confirmed-working.apk').read_bytes()).hexdigest(),build.CONFIRMED_SHA256)


if __name__ == '__main__':
    unittest.main()
