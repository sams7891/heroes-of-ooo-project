# Setup, build, and install

## What you have

The project is already decoded. You do not need to find or download the game
again. It contains the original APK, the exact working compatibility APK, all
smali classes from that working APK, and its assets and encoded Android resources.

Use a desktop computer with **Python 3.11 or newer** and **Java/JDK 17 or newer**.
The project was exercised with Python 3.12, OpenJDK 17, cryptography 46.0.0, and
Apktool 2.12.1. Download Python from [python.org](https://www.python.org/downloads/)
and a JDK from its provider, for example [Eclipse Temurin](https://adoptium.net/).
Apktool is already bundled. Android Studio and the Android SDK are optional.

Extract the ZIP first. Keep the folder path short; `C:\ooo` is a convenient
Windows location. Run every command below from the folder containing `project.py`.

## Windows, using PowerShell

These commands use the virtual environment directly, so you do not need to
change PowerShell's script-execution policy.

```powershell
py -3 -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe project.py doctor
.\.venv\Scripts\python.exe project.py build
```

If the Python launcher `py` is unavailable, use `python -m venv .venv` for the
first command. Check that `java -version` works after installing the JDK. Reopen
the terminal if PATH changed. `JAVA_HOME` may also point to the installed JDK.

## Linux or macOS

```bash
python3 -m venv .venv
.venv/bin/python -m pip install -r requirements.txt
.venv/bin/python project.py doctor
.venv/bin/python project.py build
```

Some Linux distributions package Python's venv support separately. If creating
the environment fails, install that distribution's venv package and try again.

Throughout the other guides, `python` means the Python interpreter inside this
virtual environment. You can substitute the full interpreter path shown above.

## What the first build does

`build` recompiles `decoded/smali/`, imports `decoded/assets/`, preserves the
encoded Android resources and manifest, repacks the archive, and signs it with
a key created in `.local/keys/`. It verifies the result before replacing the
output APK.

The outputs are:

- `build/heroes-of-ooo-build.apk`
- `build/heroes-of-ooo-build.build.json`

The first build uses your own new signing identity. Later builds reuse it.
Do not delete `.local/keys/`: losing that key prevents installing future builds
as updates to earlier builds signed with it. Store a private backup of both
`key.pem` and `certificate.der` together.

## Install on the A55

Your currently installed APK is `reference/confirmed-working.apk`. Keep using
it while setting up and reading the project.

Android normally requires an update to have the same package name and signing
certificate as the installed app. Your first locally built APK has a different
certificate. A direct update will therefore fail, often with
`INSTALL_FAILED_UPDATE_INCOMPATIBLE` or an app-conflict message.

Before switching to your locally signed build, preserve your progress through
any supported backup/export mechanism. **Uninstalling normally removes the
game's private save files.** This package does not contain a save-backup tool or
the private signing key for the APK currently on your phone. If you cannot
back up your progress, keep the working installation while you develop.

Once you are ready to make that first switch:

1. Uninstall the existing copy after preserving any data you need.
2. Copy the newly built APK to the phone and open it in the file manager.
3. Allow that file manager to install unknown apps when Android requests it.
4. Install and launch the game.

After that first switch, builds signed with the same `.local/keys/` identity
can update the app. With Android SDK Platform Tools, an update is also possible
using:

```bash
adb install -r build/heroes-of-ooo-build.apk
```

This command requires a computer connection, USB debugging, and authorization
of that computer on the phone. The project does not change phone settings or
install anything on the phone automatically.

## Open the code

Start with `reference/java/com/globalfun/adventuretime/free/Main.java` to read
the reconstructed Java. Edit the corresponding
`decoded/smali/com/globalfun/adventuretime/free/Main.smali` to change the APK.
Read [CODE_GUIDE.md](CODE_GUIDE.md) for a first edit that enables existing log calls.
