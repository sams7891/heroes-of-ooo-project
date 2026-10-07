# The optional library and the A55 fix

## What was incompatible

The original APK contained exactly two native-library entries:

```text
lib/armeabi/libImmEndpointWarpJ.so
lib/armeabi-v7a/libImmEndpointWarpJ.so
```

They contain identical 236,920-byte **32-bit ARM ELF** files. There is no
`arm64-v8a` counterpart. Android's package installer considers the native
library directories when deciding whether the APK supports the device ABI.
Your installer reported an ABI mismatch on the A55.

The game's own 47 classes are Android bytecode, with no native methods. Bytecode
does not require converting ARM32 instructions into ARM64 instructions: ART
executes it on the phone's runtime. Android's [64-bit support guide](https://developer.android.com/google/play/requirements/64-bit)
distinguishes Java/Kotlin code from packaged native libraries.

## What `libImmEndpointWarpJ.so` did

The library implements **Immersion's haptic-content/media SDK**. Its JNI exports
refer to `com.immersion.content.EndpointWarp` and `HapticHeaderUtils`, including
operations for creating, starting, stopping and updating a haptic effect.

In this APK, AdColony's video-ad code uses that SDK. It provides authored
vibration effects associated with video advertising. It is a native support
library for that integration, rather than the native game engine.

The optional behavior is visible in the existing factory's failure path: if
the shared library cannot be loaded, `HapticContentSDKFactory.GetNewSDKInstance`
returns `null`. AdColony also has exception/null handling around its haptics
setup. The compatibility patch deliberately takes that existing failure path.

The library is **optional for the gameplay path demonstrated on your phone**.
That is supported by the inspected callers and by your report that the patched
APK installed and ran. It does not establish that every old ad-network feature
will work indefinitely or that every possible code path has been exercised.

## What changed

| Component | Original | Compatibility APK |
|---|---|---|
| Game methods and assets | Original 1.2.10 content | Preserved in the initial compatibility build |
| Immersion factory load gate | Calls `EndpointWarp.loadSharedLibrary()` and tests its result | Supplies `false`, so the existing failure branch returns `null` |
| Native libraries | Two ARM32 copies of `libImmEndpointWarpJ.so` | Both removed; no packaged native libraries remain |
| `minSdkVersion` | 9 | 24 |
| `targetSdkVersion` | Absent, effective value 9 | Absent, effective value 24 |
| Package/version | `com.globalfun.adventuretime.free`, 1.2.10 / 24 | Same |
| Signing identity | Publisher certificate | Separate compatibility-test certificate |

Android defaults an omitted target SDK to the declared minimum SDK. See the
official [`uses-sdk` reference](https://developer.android.com/guide/topics/manifest/uses-sdk-element).
Raising the existing integer from 9 to 24 therefore also raises the effective
target to 24, meeting the low-target installation threshold introduced in
[Android 15](https://developer.android.com/about/versions/15/behavior-changes-all).
The APK now requires Android 7.0/API 24 or newer. Updating that declaration
does not itself modernize old APIs or replace the bundled SDKs.

## The exact bytecode patch

The method is:

```text
Lcom/immersion/hapticmediasdk/HapticContentSDKFactory;
  ->GetNewSDKInstance(ILandroid/content/Context;)
    Lcom/immersion/hapticmediasdk/HapticContentSDK;
```

Conceptually, its original prefix was:

```smali
const/4 v0, 0x0
invoke-static {}, Lcom/immersion/content/EndpointWarp;->loadSharedLibrary()Z
move-result v1
if-nez v1, :continue_initialization
return-object v0
```

The patched prefix is:

```smali
const/4 v0, 0x0
const/4 v1, 0x0
nop
nop
nop
if-nez v1, :continue_initialization
return-object v0
```

For the binary-patch workflow, this changes eight instruction bytes without
moving any instructions or exception metadata. The DEX header SHA-1 and Adler32
are then recomputed. `hooo/dex.py` resolves the method and load-method ID from
the DEX tables and checks the expected instructions before applying the patch.
It refuses an unexpected APK version or method body.

The decoded smali project already contains this patch. Rebuilding your own
gameplay edits preserves it; the verifier checks that this factory still
returns `null` through the forced-false gate.

## Does this disable the game's vibration?

The patch disables **this Immersion video-ad haptics path**. Ordinary game
vibration has a separate route: `Engine.vibrate` calls the game-canvas helper,
which calls `Main.vibrate`, which uses Android's `Vibrator` service. That code
and the `android.permission.VIBRATE` permission remain present. Actual tactile
behavior still depends on game settings, device settings, and runtime behavior.

AdColony and the other advertising SDK classes also remain present. This patch
does not remove advertising or change purchases/progression.

## Could the library itself be ported to ARM64?

With its native source and dependencies, one could rebuild it for `arm64-v8a`
and fix any architecture-sensitive code. This APK only provides the ARM32
machine-code library and Java wrappers. Changing filenames, manifest flags or
ABI labels cannot turn that machine code into an ARM64 implementation.
Removing the demonstrated optional dependency avoids needing that port here.

The preserved original APK remains available in `inputs/original.apk` for
inspection. The working/reference APK contains no `.so` files.
