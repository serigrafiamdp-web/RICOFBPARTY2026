# Regression checklist

Use this when extracting or modifying a routine from RicOS.

## Machine matrix

Test separately on:

- PAL-B
- Drean PAL-N
- NTSC
- NTSC OLD

Do not assume a PASS on one standard proves the others.

## Boot / SYSINFO64

- machine profile detected correctly
- CPU/VIC/CIA/RAM presentation intact
- SID1 model/status intact
- optional SID2 detection does not false-trigger on mirrors
- IEC 8–11 scan returns cleanly
- PRESS A KEY handoff works
- S, O and RUN/STOP paths work

## Main demo

- no screen-memory corruption
- fine scroll remains smooth
- double-buffer transitions remain clean
- stage order unchanged
- stage 5 cadence correct
- stages 11/12 cadence correct
- stage 13 centered/blink behavior correct
- stage 14+ animation still starts correctly
- stages 23–25 closing sequence correct

## Audio

- music starts at expected point
- no new clicks at scene boundaries
- SID tail/cut timing correct
- one-SID path works
- two-SID path works when available
- no accidental writes to mirrored/nonexistent SID2

## AYAHUASCA

- grayscale default unchanged
- 0–9 request accepted during first scroll
- selected starting palette correct
- same palette used across up/down cycle
- hidden palette transition completes off-screen
- same key returns toward grayscale
- different number changes request
- repeated input does not corrupt state

## Outro

- transition to black clean
- ocean starts correctly
- line-25 scroll intact
- V hides/shows picture while audio continues
- N replay works without SYSINFO
- S reruns SYSINFO then replay
- Y and RUN/STOP return to BASIC
- replay restores modified charset data

## Memory safety

Before relocating or enlarging any helper:

- check `docs/MEMORY_MAP.md`
- inspect `main.sym`
- verify `$01` RAM/ROM mapping
- check KERNAL vectors `$FFFA–$FFFF`
- confirm music block at `$8C00` is untouched
- compare output hashes

## PASS/FAIL discipline

Record:

- exact base commit/archive
- exact change
- machine profile
- emulator/hardware
- PASS or FAIL
- first visible/audio symptom
- resulting artifact hash

Change one variable per test whenever possible.
