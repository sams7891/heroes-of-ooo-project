# Fixed-step rendering

The editable smali now keeps simulation ticks at 70 ms and draws at approximately
16 ms intervals between ticks. `Engine.updateTime` uses Android's monotonic
uptime clock and advances an absolute deadline rather than sleeping 70 ms after
each draw. `frameRate` and `frameTime` are both 70 for gameplay and UI timers.
Input processing, animation, collision, combat, and UI updates remain in the
simulation loop. Rendering does not update those systems.

Before each simulation update, `Actor.snapshotRender` saves actor pixel positions,
jump height, and camera position. `RenderClock.blend` interpolates those previous
values toward the current values using the elapsed fraction of 70 ms. Actor
sprites, shadows, and room tiles use the same fraction. Simulation coordinates
remain untouched; the original room projection methods retain their behavior.
Interpolation adds one simulation tick of visual latency.

New actors and explicit `setLocation` calls snap to their current position.
Quick camera focus on room entry also snaps. Hidden/rotated screens and stalls
longer than 280 ms restart the deadline, avoiding a large backlog after suspension
or loading. Smaller overruns catch up using fixed ticks; rendering is skipped
while catching up. Actual drawing frequency depends on device and surface cost.

Build with `.venv\Scripts\python.exe project.py build`. This uses the existing
`.local/keys` identity and leaves the haptics compatibility gate intact.
The Java files in `reference/java` still describe the supplied reference APK.

Validation: the modified smali assembles, and the build verifier checks DEX
integrity, the compatibility gate, and the APK v2 signature. Run
`.venv\Scripts\python.exe -m unittest discover -s tests` for archive and signing
regressions. Device execution is still required to check movement, jump/shadow
alignment, camera scrolling, room entry, menus, and background/resume behavior.
