# RICO / Vicious Circles — Flashparty 2026

Preservation and technical-study repository for the Commodore 64 demo **RICO / Vicious Circles**, prepared for Flashparty 2026.

The goal is to preserve the final project state and make its strongest routines, timing solutions and memory strategies easy to study for future C64 projects.

## Canonical source master

The exact final source archive is stored in:

`archive/RICO_FB_CODIGO_FUENTE_FINAL_MASTER_22_SEPTIEMBRE_2026.zip`

- Size: 154982 bytes
- SHA-256: `47b0b0d6bb4b8d08198f2a2dda99d87041d2ddab137c9abf8f3b6f2d65ad4329`

Do not overwrite it.

## Final release

The protected final release master is:

`RICO FP 2026 RELEALSE FINAL MASTER NO BORRAR.zip`

SHA-256:

`66cd4a0434c2a13eb95b147c6351081ab1df2726941aaf17928906793c7f87c2`

Its exact contents and per-file hashes are documented in `release/README.md`.

The user manual is also available directly at:

`release/USER README HOTKEYS EASTER EGGS.txt`

## What RicOS contains

RicOS begins as **SYSINFO64**, continues as a custom-character / PETSCII visual demo synchronized to SID music, and ends in an interactive synthesized ocean.

It targets:

- PAL-B
- Drean PAL-N
- NTSC
- NTSC OLD

The project includes optional second-SID support, procedural SID ocean audio, custom scrolling and fine-scroll logic, double buffering, radial/rotating effects and the optional **AYAHUASCA** ten-palette color journey.

## Study map

- `RICOS_STUDY_INDEX.md` — best starting point
- `archive/` — protected source master and provenance
- `source/FPFINAL/` — selected human-readable source/reference files extracted for study
- `release/` — release manual and exact release hashes
- `docs/ARCHITECTURE.md` — overall program flow
- `docs/MEMORY_MAP.md` — fixed memory blocks
- `docs/KEY_SYMBOLS.md` — important runtime addresses
- `docs/VIDEO_TIMING.md` — PAL/NTSC strategy
- `docs/AUDIO_AND_SID.md` — SID2 and ocean engine
- `docs/AYAHUASCA.md` — palette engine
- `docs/ROUTINE_CATALOG.md` — routine/resource catalog
- `docs/REGRESSION_CHECKLIST.md` — PASS/FAIL checklist
- `docs/BUILD_REPRODUCTION.md` — reproduction-build rules
- `docs/STUDY_GUIDE.md` — reusable techniques

## Best reusable ideas

1. fixed-address helper modules that protect the main memory block;
2. logical timing separated from PAL/NTSC-specific corrections;
3. deferred palette remapping with bounded work per frame;
4. safe RAM-under-ROM bridges;
5. procedural environmental SID audio;
6. precomputed visual data to reduce runtime CPU load;
7. strict PASS/FAIL regression testing across machine standards.

## Credits

- **RICO** — concept, graphics and scroll engine
- **Glenn Rune Gallefoss** — SID music

Released for **Flashparty 2026**.

## License / reuse

No explicit open-source license was included in the preserved masters. Treat this repository as a preservation and technical-study archive unless a license is added later. Do not assume bundled music or ROM material is freely relicensable.

## Separate project

`FPINTRO-TRIBUTE/` is a separate preserved Fairlight tribute intro. It does not replace or modify the RicOS September 2026 masters.
