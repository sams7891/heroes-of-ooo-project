"""Archive operations, compatibility build, and validation."""
import copy
import hashlib
import io
import json
import os
from pathlib import Path
import struct
from zipfile import ZipFile, ZipInfo, ZIP_DEFLATED, ZIP_STORED

from .dex import Dex, patch_haptics, verify_haptics
from .manifest import patch_sdk, summary as manifest_summary
from . import signing

ORIGINAL_SHA256 = 'f8e3fe08e682e7a6a3dc0c66cb5a71ba080452ee440b2d6842bc717e245a2360'
CONFIRMED_SHA256 = '4eee205339a0b4a4b0a49e5bdad043ed7c17caafb5b3f7549d5298bc7913a955'


def check_original(path):
    raw = Path(path).read_bytes()
    if hashlib.sha256(raw).hexdigest() != ORIGINAL_SHA256:
        raise ValueError('Input is not the supplied original Heroes of Ooo 1.2.10 APK; refusing a version-specific patch')
    return raw


def safe_output(path, protected):
    path = Path(path).resolve()
    if path in {Path(item).resolve() for item in protected}:
        raise ValueError('Output must not overwrite an original/reference APK')
    path.parent.mkdir(parents=True, exist_ok=True)
    return path


def repack(source, replacements=None, remove_native=False):
    """Strip invalidated META-INF signatures; align stored ZIP payloads to 4 bytes."""
    replacements = dict(replacements or {})
    buffer = io.BytesIO()
    seen = set()
    with ZipFile(io.BytesIO(source)) as original, ZipFile(buffer,'w') as output:
        if original.testzip() is not None:
            raise ValueError('Input ZIP has a damaged entry')
        for entry in original.infolist():
            name = entry.filename
            if name in seen:
                raise ValueError('Duplicate ZIP entry: '+name)
            seen.add(name)
            if name.startswith('META-INF/') or (remove_native and name.startswith('lib/')):
                continue
            info = copy.copy(entry)
            content = replacements.pop(name, original.read(name))
            _write_entry(output, info, content, buffer)
        for name, content in sorted(replacements.items()):
            if name.startswith('/') or '..' in name.split('/') or name.startswith(('lib/','META-INF/')):
                raise ValueError('Invalid replacement path: '+name)
            info = ZipInfo(name, date_time=(2026,10,4,0,0,0))
            info.compress_type = ZIP_DEFLATED
            _write_entry(output, info, content, buffer)
    return buffer.getvalue()


def _write_entry(output, info, content, buffer):
    if info.compress_type == ZIP_STORED:
        filename, _ = info._encodeFilenameFlags()
        offset = buffer.tell()+30+len(filename)+len(info.extra)
        if offset % 4:
            padding = (-offset-4) % 4
            info.extra += struct.pack('<HH',0xd935,padding)+b'\0'*padding
    output.writestr(info, content)


def asset_overlay(directory):
    result = {}
    directory = Path(directory)
    if not directory.is_dir():
        raise ValueError('Assets directory missing: '+str(directory))
    for path in sorted(directory.rglob('*')):
        if path.is_symlink():
            raise ValueError('Symlink assets are not supported: '+str(path))
        if path.is_file():
            result['assets/'+path.relative_to(directory).as_posix()] = path.read_bytes()
    return result


def compatibility_unsigned(source, assets=None):
    with ZipFile(io.BytesIO(source)) as archive:
        patched_dex, patch = patch_haptics(archive.read('classes.dex'))
        replacements = {'classes.dex':patched_dex,
                        'AndroidManifest.xml':patch_sdk(archive.read('AndroidManifest.xml'))}
    if assets is not None:
        replacements.update(asset_overlay(assets))
    return repack(source,replacements,remove_native=True), patch


def inspect(path):
    raw = Path(path).read_bytes()
    with ZipFile(io.BytesIO(raw)) as archive:
        dex = Dex(archive.read('classes.dex'))
        game = dex.game_report()
        return {
            'file':Path(path).name, 'bytes':len(raw), 'sha256':hashlib.sha256(raw).hexdigest(),
            'manifest':manifest_summary(archive.read('AndroidManifest.xml')),
            'native_libraries':[n for n in archive.namelist() if n.endswith('.so')],
            'class_count':len(dex.classes), 'defined_method_count':len(dex.defined),
            'game_class_count':len(game), 'game_method_count':sum(len(m) for m in game.values()),
            'game_native_method_count':sum(m['native'] for ms in game.values() for m in ms),
            'game_classes':game,
        }


def verify(path, original=None, export_crypto=None):
    raw = Path(path).read_bytes()
    signature, crypto = signing.verify(raw)
    with ZipFile(io.BytesIO(raw)) as archive:
        if archive.testzip() is not None:
            raise ValueError('ZIP CRC verification failed')
        if len(archive.namelist()) != len(set(archive.namelist())):
            raise ValueError('Duplicate archive paths')
        if any(n.startswith('lib/') or n.endswith('.so') for n in archive.namelist()):
            raise ValueError('Compatibility build must not contain native libraries')
        dex = verify_haptics(archive.read('classes.dex'))
        manifest = manifest_summary(archive.read('AndroidManifest.xml'))
        if manifest['package'] != 'com.globalfun.adventuretime.free':
            raise ValueError('Unexpected package name')
        if manifest['minSdkVersion'] < 24 or manifest['effective_targetSdkVersion'] < 24:
            raise ValueError('Compatibility build must declare API 24 or later')
        count = sum(1 for m in dex.defined if m['code'] for _ in dex.instructions(m['code']))
        changes = []
        removed = []
        if original is not None:
            with ZipFile(original) as base:
                removed = sorted(set(base.namelist())-set(archive.namelist()))
                for name in sorted(set(archive.namelist()) | set(base.namelist())):
                    if name in removed:
                        continue
                    if name not in base.namelist() or archive.read(name) != base.read(name):
                        changes.append(name)
    if export_crypto:
        directory = Path(export_crypto)
        directory.mkdir(parents=True,exist_ok=True)
        key = signing.serialization.load_der_public_key(crypto[0])
        (directory/'public-key.pem').write_bytes(key.public_bytes(
            signing.serialization.Encoding.PEM,signing.serialization.PublicFormat.SubjectPublicKeyInfo))
        (directory/'signed-data.bin').write_bytes(crypto[1])
        (directory/'signature.bin').write_bytes(crypto[2])
    result = {'file':Path(path).name, 'sha256':hashlib.sha256(raw).hexdigest(),
              'bytes':len(raw), 'archive_crc':'passed', 'signature':signature,
              'manifest':manifest, 'native_library_count':0,
              'dex_integrity':'passed', 'decoded_instruction_count':count,
              'haptics_factory_failure_path':'verified', 'runtime_test':'not performed by this verifier'}
    if original is not None:
        result.update({'changed_entries':changes,'removed_entries':removed})
    return result


def finish(unsigned, output, key_dir, original, protected):
    output = safe_output(output, protected)
    signed = signing.sign(unsigned,key_dir)
    temporary = output.with_name(output.name+'.tmp')
    try:
        temporary.write_bytes(signed)
        report = verify(temporary,original=original)
        os.replace(temporary,output)
    finally:
        if temporary.exists():
            temporary.unlink()
    report['file'] = output.name
    output.with_suffix('.build.json').write_text(json.dumps(report,indent=2)+'\n',encoding='utf-8')
    return report
