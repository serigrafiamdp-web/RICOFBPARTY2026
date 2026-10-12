# Study guide — extracting reusable C64 solutions

## 1. Start with the memory contract
Read `docs/MEMORY_MAP.md`, `main.sym`, and the `@startblock` declarations in `main.ras`.

Reusable pattern: define a memory contract first, then add features through fixed-address modules.

## 2. Separate timing from effects
Read `docs/VIDEO_TIMING.md`, `palb_uniform_cadence_safe.asm`, `ntsc_stage5_uniform.asm` and the logical-clock code.

Reusable pattern: normalize logical time, then add small physical-standard corrections.

## 3. Study deferred palette work
Read `docs/AYAHUASCA.md`, `demo_palette_deferred_patch.asm` and `build_palette_async.py`.

Reusable pattern: turn one expensive operation into a state machine with a strict per-frame budget.

## 4. Study ROM-safe bridges
Read `shared_ocean_bridge.asm` and the memory-configuration calls in `main.ras`.

Reusable pattern: save CPU-port state, expose RAM under ROM only for the call, then restore state and registers.

## 5. Study procedural SID audio
Read `docs/AUDIO_AND_SID.md` and `intro_ocean_audio.asm`.

Reusable pattern: environmental audio can be built from phase/state machines instead of long sample data.

## 6. Study data-driven visuals
Radial maps, rotating-line bases and charset resources move expensive calculations offline.

Reusable pattern: precompute geometry/data where possible and make runtime work deterministic.

## 7. Regression discipline
For future experiments:
- preserve the original hash;
- change one variable at a time;
- log PASS/FAIL by machine profile;
- check memory overlap;
- re-check music synchronization;
- test restart and exit paths, not just first-run visuals.

## 8. Do not assume
- This repository has not independently rebuilt the source and proven byte-for-byte equivalence with the final D64.
- Some `.asm` files explicitly document patches/experiments and are not meant to be included independently.
- Historical comments can describe earlier tests; the final authority is `main.ras` + included BINs + preserved final D64.
