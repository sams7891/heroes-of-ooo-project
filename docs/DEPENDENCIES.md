# Dependencies and provenance

## What is bundled versus installed

| Component | Role | Availability |
|---|---|---|
| Original game APK | Source binary for the version-specific patch | `inputs/original.apk`, supplied by you |
| Working compatibility APK | Recovery/reference baseline | `reference/confirmed-working.apk`, the exact file you reported working |
| Smali classes | Gameplay and bundled SDK bytecode to rebuild | Already decoded under `decoded/smali/` |
| Game assets/Android resources | Images, sound and custom data | Already under `decoded/` |
| Apktool 2.12.1 | Disassemble/assemble DEX and repack an APK | Bundled in `tools/apktool.jar`, SHA-256 checked before use |
| Python | Runs this project's tools | Install Python 3.11+ on your computer |
| cryptography 46.0.0 | RSA keys, certificates and signature verification | Install from `requirements.txt` into a virtual environment |
| Java/JDK | Runs Apktool | Install JDK 17+ on your computer |
| JADX 1.5.6 | Produced readable Java references | Game reference files included; JADX application itself is optional and not bundled |
| Android SDK Platform/Build Tools | `adb`, Logcat access and `apksigner` | Optional; the normal project build does not require them |
| Immersion native library | Video-ad haptics | Present only inside the preserved original; absent from the working APK |

You do not need to download every old SDK as a Maven or Gradle dependency to
use this workflow. Their bytecode is already in the decoded smali project.
The Python dependency is needed by this project's builder, not by the game on
the phone. Java/JDK and Apktool likewise run on the computer.

## The other SDK code

The game bundles advertising, mediation, analytics and support code. Observed
namespaces include AdColony (`com.jirbo.adcolony`), Fyber (`com.fyber`), Flurry,
Google Play Services, Facebook Ads, InMobi, Chartboost, Unity Ads, and Immersion.
They account for most of the thousands of classes in the APK. The compatibility
patch keeps their Java bytecode while disabling the Immersion factory's native
initialization path.

If you later remove or replace integrations, trace callers in `Main`, callback
classes, the manifest and the SDKs themselves. Deleting class folders without
updating references can cause verification failures or crashes.

## Original source versus reconstructed project

This package makes an APK modding workflow immediately usable. It does not
recover missing publisher comments, original Gradle files, source dependencies,
asset-authoring tools, or the C/C++ source for Immersion's library.

To make a conventional Java/Android Studio source project later, you would
need to repair the reconstructed Java, resolve library interfaces and imports,
restore Android resource handling, replace or supply dependencies, create an
Android Gradle application, and test its behavior against the working game.
JADX's Gradle export can provide scaffolding, but does not establish that the
generated project compiles or faithfully reproduces the original.

For now, read Java and edit smali. That preserves the game's existing compiled
structure and avoids needing to reconstruct all SDK source.

## Provenance and licenses

The original APK's SHA-256 is:

```text
f8e3fe08e682e7a6a3dc0c66cb5a71ba080452ee440b2d6842bc717e245a2360
```

The working compatibility APK's SHA-256 is:

```text
4eee205339a0b4a4b0a49e5bdad043ed7c17caafb5b3f7549d5298bc7913a955
```

The game binary, reconstructed game/SDK code, and assets retain their existing
ownership; the MIT license in this project applies only to the newly written
Python tooling, tests and documentation. Apktool is distributed under Apache
2.0; its bundled notices/license files are preserved with the jar. See
`THIRD_PARTY_NOTICES.md` and `reports/tool-provenance.json`.

Primary references:

- [Apktool 2.12.1 release](https://github.com/iBotPeaches/Apktool/releases/tag/v2.12.1)
- [Apktool 2.x CLI documentation](https://apktool.org/docs/2.x/cli-parameters/)
- [JADX repository and limitations](https://github.com/skylot/jadx)
- [JADX 1.5.6 release](https://github.com/skylot/jadx/releases/tag/v1.5.6)
- [Android 64-bit requirements](https://developer.android.com/google/play/requirements/64-bit)
- [Android ABI reference](https://developer.android.com/ndk/guides/abis)
- [Android SDK declaration defaults](https://developer.android.com/guide/topics/manifest/uses-sdk-element)
- [APK v2 signing specification](https://source.android.com/docs/security/features/apksigning/v2)
