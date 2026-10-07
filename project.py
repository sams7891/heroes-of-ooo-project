#!/usr/bin/env python3
"""Heroes of Ooo personal development commands. Run --help for usage."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import urllib.request

ROOT = Path(__file__).resolve().parent
# Also works when Python's safe-path mode omits the script directory.
sys.path.insert(0,str(ROOT))

APKTOOL = {
    'version':'2.12.1',
    'url':'https://github.com/iBotPeaches/Apktool/releases/download/v2.12.1/apktool_2.12.1.jar',
    'sha256':'66cf4524a4a45a7f56567d08b2c9b6ec237bcdd78cee69fd4a59c8a0243aeafa',
}


def apktool_jar():
    path = ROOT/'tools/apktool.jar'
    if not path.exists():
        print('Downloading pinned Apktool '+APKTOOL['version']+' from its official release...',flush=True)
        path.parent.mkdir(parents=True,exist_ok=True)
        request = urllib.request.Request(APKTOOL['url'],headers={'User-Agent':'HeroesOfOooPersonalProject/1.0'})
        temporary = path.with_suffix('.download')
        try:
            with urllib.request.urlopen(request,timeout=60) as source, temporary.open('wb') as target:
                shutil.copyfileobj(source,target)
            if hashlib.sha256(temporary.read_bytes()).hexdigest() != APKTOOL['sha256']:
                raise ValueError('Apktool download hash mismatch')
            os.replace(temporary,path)
        finally:
            if temporary.exists():
                temporary.unlink()
    if hashlib.sha256(path.read_bytes()).hexdigest() != APKTOOL['sha256']:
        raise ValueError('tools/apktool.jar is not the pinned version; restore it before building')
    return path


def java_command():
    configured = os.environ.get('JAVA_HOME')
    if configured:
        candidate = Path(configured)/'bin'/('java.exe' if os.name == 'nt' else 'java')
        if candidate.is_file():
            return str(candidate)
    found = shutil.which('java')
    if not found:
        raise ValueError('Java not found. Install a JDK 17 or later, then reopen your terminal (docs/BUILDING.md).')
    return found


def run_apktool(arguments):
    temporary = ROOT/'.local/java-tmp'
    temporary.mkdir(parents=True,exist_ok=True)
    command = [java_command(),'-Djava.io.tmpdir='+str(temporary),'-jar',str(apktool_jar()),*map(str,arguments),
               '-p',str(ROOT/'tools/framework')]
    subprocess.run(command,cwd=ROOT,check=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest='command',required=True)
    commands.add_parser('doctor',help='Check Python, Java and bundled Apktool')
    commands.add_parser('setup-tools',help='Validate/download the pinned Apktool jar')
    inspect_parser = commands.add_parser('inspect',help='Inspect an APK and list game methods')
    inspect_parser.add_argument('apk',nargs='?',type=Path,default=ROOT/'inputs/original.apk')
    inspect_parser.add_argument('--report',type=Path)
    verify_parser = commands.add_parser('verify',help='Verify this project’s v2 signature, DEX and compatibility gate')
    verify_parser.add_argument('apk',type=Path)
    verify_parser.add_argument('--compare',type=Path,help='List changed/removed archive entries relative to this APK')
    verify_parser.add_argument('--export-crypto',type=Path,help='Export public data for independent OpenSSL verification')
    decode_parser = commands.add_parser('decode',help='Decode the confirmed APK into a NEW smali/resources folder')
    decode_parser.add_argument('--output',type=Path,required=True,help='Must not already exist; your edits are never deleted')
    for name, help_text in [('build','Rebuild editable smali/assets using Apktool and sign'),
                            ('build-assets','Rebuild assets without recompiling game bytecode; no Java needed'),
                            ('build-compat','Reproduce the original compatibility patch; no Java needed')]:
        build_parser = commands.add_parser(name,help=help_text)
        build_parser.add_argument('--output',type=Path,default=ROOT/'build'/('heroes-of-ooo-'+name+'.apk'))
        build_parser.add_argument('--key-dir',type=Path,default=ROOT/'.local/keys')
        if name == 'build':
            build_parser.add_argument('--decoded',type=Path,default=ROOT/'decoded')
        if name == 'build-assets':
            build_parser.add_argument('--assets',type=Path,default=ROOT/'decoded/assets')
    args = parser.parse_args()

    if args.command == 'setup-tools':
        print('Verified: '+str(apktool_jar()))
        return
    if args.command == 'doctor':
        import cryptography
        print('Python:',sys.version.split()[0])
        print('cryptography:',cryptography.__version__)
        print('Apktool:',apktool_jar())
        subprocess.run([java_command(),'-version'],check=True)
        print('Ready. Read README.md, then run: python project.py build')
        return

    from hooo import build
    if args.command == 'inspect':
        result = build.inspect(args.apk)
        if args.report:
            args.report.parent.mkdir(parents=True,exist_ok=True)
            args.report.write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
            print('Wrote '+str(args.report))
        else:
            print(json.dumps(result,indent=2))
        return
    if args.command == 'verify':
        print(json.dumps(build.verify(args.apk,original=args.compare,export_crypto=args.export_crypto),indent=2))
        return
    if args.command == 'decode':
        if args.output.exists():
            raise ValueError('Decode output already exists; choose a new folder to keep your edits')
        if hashlib.sha256((ROOT/'reference/confirmed-working.apk').read_bytes()).hexdigest() != build.CONFIRMED_SHA256:
            raise ValueError('The confirmed reference APK was modified')
        run_apktool(['d','-r',ROOT/'reference/confirmed-working.apk','-o',args.output.resolve()])
        return

    source = ROOT/'inputs/original.apk'
    protected = [source,ROOT/'reference/confirmed-working.apk']
    # Check output before invoking Apktool or creating a signing identity.
    output = build.safe_output(args.output,protected)
    if args.command == 'build':
        decoded = args.decoded.resolve()
        if not (decoded/'apktool.yml').is_file() or not (decoded/'smali').is_dir():
            raise ValueError('Decoded project not found; use the included decoded/ folder')
        unsigned_path = ROOT/'build/unsigned-code.apk'
        unsigned_path.parent.mkdir(parents=True,exist_ok=True)
        # Force rebuild so edits do not depend on stale filesystem timestamps.
        run_apktool(['b','-f',decoded,'-o',unsigned_path])
        unsigned = build.repack(unsigned_path.read_bytes())
    else:
        original = build.check_original(source)
        unsigned, patch = build.compatibility_unsigned(original,
                           assets=args.assets if args.command == 'build-assets' else None)
        print('Applied compatibility patch to '+patch['method'])
    result = build.finish(unsigned,output,args.key_dir,source,protected)
    # Keep the normal output concise; full entry diffs are in the build report.
    print(json.dumps({k:result[k] for k in ('file','sha256','bytes','signature','native_library_count')},indent=2))
    print('APK: '+str(output))
    print('Report: '+str(output.with_suffix('.build.json')))


if __name__ == '__main__':
    try:
        main()
    except ModuleNotFoundError as exc:
        sys.exit('Missing Python dependency: '+str(exc)+'\nRun: python -m pip install -r requirements.txt')
    except (ValueError,OSError,subprocess.CalledProcessError) as exc:
        sys.exit('Error: '+str(exc))
