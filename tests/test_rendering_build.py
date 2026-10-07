"""Integration checks for the fixed-step APK produced by project.py build."""
from pathlib import Path
import hashlib
import unittest
from zipfile import ZipFile

from hooo import build
from hooo.dex import Dex

ROOT = Path(__file__).resolve().parents[1]
APK = ROOT / 'build/heroes-of-ooo-build.apk'


@unittest.skipUnless(APK.exists(), 'Run project.py build first')
class RenderingBuildTests(unittest.TestCase):
    def test_signed_build_keeps_identity_and_compatibility(self):
        report = build.verify(APK)
        self.assertEqual(report['signature']['certificate_sha256'],
                         hashlib.sha256((ROOT / '.local/keys/certificate.der').read_bytes()).hexdigest())
        self.assertEqual(report['haptics_factory_failure_path'], 'verified')
        self.assertEqual(report['native_library_count'], 0)

    def test_assets_are_preserved_and_render_helpers_are_assembled(self):
        with ZipFile(APK) as apk, ZipFile(ROOT / 'reference/confirmed-working.apk') as reference:
            for name in reference.namelist():
                if name.startswith(('assets/', 'res/')):
                    self.assertEqual(apk.read(name), reference.read(name), name)
            dex = Dex(apk.read('classes.dex'))
            ns = 'Lcom/globalfun/adventuretime/free/'
            for descriptor in ('RenderClock;->blend(II)I', 'Actor;->snapshotRender()V',
                               'Actor;->renderpx()I', 'Actor;->renderpy()I',
                               'Actor;->renderjump()I', 'Room;->snapshotRender()V',
                               'Room;->renderProjectX(I)I', 'Room;->renderProjectY(I)I'):
                self.assertGreater(dex.find(ns + descriptor)['code'], 0)
