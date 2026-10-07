# Heroes of Ooo — personal development project

This is an editable APK project for **Adventure Time: Heroes of Ooo 1.2.10**,
based on the APK you supplied and the compatibility APK you confirmed installed
and ran on your **Galaxy A55 5G**.

You can edit the game's **smali code and assets**, rebuild, and sign an APK.
The package also contains **47 decompiled Java files** to help you understand
the game. The Java files are reference material; the build uses smali. The
publisher's original Java source, build project, and native-library source were
not available.

## Current personal changes

This snapshot includes A55 compatibility changes, faster dialogue, and fixed-step
rendering with position interpolation. Read [the project guide](docs/PROJECT_GUIDE.md)
for what changed, why, setup, safe updates, editing, and emulator testing.
See [release notes](docs/RELEASE_NOTES.md) for validation and remaining checks.

## Start here

1. Extract this ZIP to a short path, such as `C:\ooo` or `~/ooo`.
2. Open the whole folder in VS Code or your preferred editor.
3. Follow [the setup guide](docs/GETTING_STARTED.md).
4. Read [the code guide](docs/CODE_GUIDE.md) and try its logging example.

After installing Python dependencies and Java, the main command is:

```bash
python project.py build
```

It produces `build/heroes-of-ooo-build.apk` and a verification report.

## What to open

| Path | Purpose |
|---|---|
| `decoded/smali/com/globalfun/adventuretime/free/` | Editable game code |
| `decoded/assets/high/`, `decoded/assets/medium/` | Editable game assets |
| `reference/java/com/globalfun/adventuretime/free/` | Readable Java reconstruction of the 47 game classes |
| `project.py`, `hooo/` | Editable Python build, patch, inspection, and signing tools |
| `inputs/original.apk` | Unmodified original supplied APK |
| `reference/confirmed-working.apk` | Exact APK you reported working on the A55 |
| `tools/apktool.jar` | Bundled, hash-checked Apktool 2.12.1 |
| `reports/` | Inspection and validation evidence |
| `examples/enable-logging.patch` | A small, tested code-edit example |

## Documentation

- [Setup, build, and install](docs/GETTING_STARTED.md)
- [Game code map, smali basics, and first edit](docs/CODE_GUIDE.md)
- [What the optional library did and why the patch works](docs/COMPATIBILITY.md)
- [Build commands, signing, checks, and troubleshooting](docs/BUILDING.md)
- [Dependencies, provenance, and source reconstruction](docs/DEPENDENCIES.md)
- [Validation status](docs/VALIDATION.md)

The build creates a personal signing key on your computer. That key differs
from the key used for the currently installed compatibility APK. Read the
installation section before replacing it: uninstalling an app normally deletes
its saved data. Keep the local key for subsequent updates.
