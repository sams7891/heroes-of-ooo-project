# Build commands and troubleshooting

Run commands from the project root, with the Python environment described in
[GETTING_STARTED.md](GETTING_STARTED.md).

## Three build paths

| Command | Input you edit | Use |
|---|---|---|
| `python project.py build` | `decoded/smali/` and `decoded/assets/` | Gameplay/code edits and asset edits; requires Java |
| `python project.py build-assets` | `decoded/assets/` | Asset edits while keeping the original patched bytecode; no Java required |
| `python project.py build-compat` | `project.py` and `hooo/` | Reproduce and experiment with the original compatibility-patch tooling; no Java required |

All paths require the Python dependencies and generate signed APKs and JSON
reports in `build/`. The ordinary `build` command forces smali reassembly to
avoid stale build files. Output verification checks the v2 signature, APK
content digest, ZIP CRCs, DEX integrity/instruction decoding, absent native
libraries, package, SDK declarations and haptics factory gate.

`build-assets` overlays files found under its asset directory. It preserves
original assets that are not in that directory, so deleting a local asset is
not a request to remove it from the APK. It ignores smali changes.
`build-compat` uses the immutable original and ignores both smali and asset edits.

Examples:

```bash
python project.py build --output build/my-game.apk
python project.py build-assets --output build/my-assets.apk
python project.py build-compat --output build/my-compat.apk
python project.py inspect inputs/original.apk --report build/inspection.json
python project.py verify build/my-game.apk --compare reference/confirmed-working.apk
python -m unittest discover -s tests -v
```

Each build accepts `--key-dir path/to/private-key-folder`. `build` also accepts
`--decoded path/to/decoded-folder`; `build-assets` accepts `--assets path/to/assets`.
`python project.py --help` lists the commands.

## Why Android resources are kept encoded

The project was decoded using Apktool's `--no-res` option. Its manifest,
`resources.arsc`, and `res/` entries are preserved rather than converted into
editable Android XML. This avoids resource reconstruction changes: a full
decode of this old APK encounters missing Google sign-in nine-patch resources
and substitutes fallback values. The game assets under `assets/` remain
ordinary editable files.

Consequently, **do not edit `decoded/AndroidManifest.xml` as text**: it is binary
Android XML. `reference/manifest-apktool-view.xml` is a readable snapshot from
a separate full decode; Apktool moves some SDK/version metadata into its YAML,
so that snapshot is not an exact standalone textual source manifest.
The inspection reports show the actual manifest values.

If you want to reconstruct and edit Android XML resources, create a separate
experimental folder using the bundled tool:

```bash
java -jar tools/apktool.jar d reference/confirmed-working.apk -o decoded-xml -p tools/framework
python project.py build --decoded decoded-xml --output build/xml-experiment.apk
```

Choose a new folder name if it exists. The full resource-rebuild workflow may
need additional resource fixes and device testing; it is not the validated
default. Avoid manually raising the target SDK while learning the project,
because newer targets enable additional Android behavior changes.

## Decode another clean working copy

```bash
python project.py decode --output decoded-clean
```

This decodes the confirmed reference APK with raw Android resources preserved.
It refuses to overwrite an existing directory, so it cannot erase your edits.
The reference APK's hash is checked first.

## Signing details

`hooo/signing.py` implements the single-signer RSA/SHA-256 subset of
[APK Signature Scheme v2](https://source.android.com/docs/security/features/apksigning/v2).
It creates a 2048-bit RSA development key and self-signed certificate, then
reuses that pair. Stored ZIP payloads are aligned to four-byte boundaries
before signing. Original `META-INF` signature entries are removed because
modifying the APK invalidates them.

The signer provides v2 signatures, supported from Android 7.0. The compatibility
manifest declares API 24 as its minimum, so a v1 signature is not required for
this project's supported baseline. The bundled verifier supports this project's
signing format; it is not a general verifier for arbitrary APKs.

For an independent check with installed Android SDK Build Tools:

```bash
apksigner verify --verbose --print-certs build/my-game.apk
```

For an independent RSA check using OpenSSL:

```bash
python project.py verify build/my-game.apk --export-crypto build/crypto
openssl dgst -sha256 -verify build/crypto/public-key.pem -signature build/crypto/signature.bin build/crypto/signed-data.bin
```

OpenSSL verifies the RSA signature on the signed data; the Python verifier
separately checks the APK content digest and certificate/public-key match.
Signing is the final archive operation. Editing an APK after signing invalidates it.

## Common problems

| Problem | What to check |
|---|---|
| `Missing Python dependency` | Run the requirements installation using the same interpreter used for `project.py`. |
| Java missing or fails to start | Install a JDK, reopen the terminal, and check `java -version` or `JAVA_HOME`. |
| Apktool hash mismatch | Restore the bundled `tools/apktool.jar`; `setup-tools` downloads it if it is absent. It checks the pinned SHA-256. |
| Smali assembly error | The error names the file/line. Check registers, labels, type descriptors and invoke formats. |
| Verification says haptics gate changed | Restore `HapticContentSDKFactory.smali` from a clean decode unless you are intentionally redesigning compatibility. |
| App update conflicts with installed copy | Certificates differ. Follow the first-install/data-preservation guidance. |
| Changing Java appears to do nothing | Java is reference only. Edit the corresponding smali, then use `build`. |
| Smali edits appear to do nothing with `build-assets` | Use `build`; the asset path deliberately preserves the original patched bytecode. |
| Changing a constant field has no effect | It may have been inlined. Find and change the actual method instructions that use it. |
| Game crashes after an edit | Restore the last working change; inspect Logcat for `AndroidRuntime`, `VerifyError`, missing classes, or resource errors. |

For a first device check, launch, enter gameplay, move/attack, use sound and
vibration options, background/resume, and save/reopen. Test the features you
change; successful assembly cannot prove correct gameplay.
