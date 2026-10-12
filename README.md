# RICO / Vicious Circles — Flashparty 2026

Preservation and study repository for the Commodore 64 demo **RICO / Vicious Circles**, prepared for Flashparty 2026.

This repository exists for two reasons:

1. preserve the **final release** and the **final source master** exactly as archived on 22 September 2026;
2. make the routines, memory layout, timing workarounds and C64-specific solutions easier to study and reuse as references in future projects.

## Canonical snapshots

Two archives are preserved in `archive/` without modification:

- `RICO_FB_CODIGO_FUENTE_FINAL_MASTER_22_SEPTIEMBRE_2026.zip`
  - SHA-256: `47b0b0d6bb4b8d08198f2a2dda99d87041d2ddab137c9abf8f3b6f2d65ad4329`
- `RICO_FP_2026_RELEASE_FINAL_MASTER_NO_BORRAR.zip`
  - SHA-256: `66cd4a0434c2a13eb95b147c6351081ab1df2726941aaf17928906793c7f87c2`

The extracted source is under `source/FPFINAL/`.  
The final public-facing release files are under `release/`.

## Final release contents

- `release/VICIOSRICO.d64` — final Commodore 64 disk image
- `release/USER README HOTKEYS EASTER EGGS.txt` — end-user manual, hotkeys and easter eggs
- `release/kernal-drean.bin` — optional Drean KERNAL bonus ROM image

## What the demo does

RicOS begins as **SYSINFO64**, a theatrical hardware-diagnostic terminal; moves into a custom-character / PETSCII visual demo driven by SID music; and ends in an interactive synthesized ocean.

The code targets multiple C64 video standards:

- PAL-B
- Drean PAL-N
- NTSC
- NTSC OLD

It also includes optional second-SID detection and support, a shared synthesized-ocean audio engine, custom scrolling / fine-scroll logic, double buffering, radial and rotating effects, and the optional **AYAHUASCA** ten-palette color journey.

## Repository map

- `source/FPFINAL/` — final source snapshot and binary helpers
- `release/` — final executable release files
- `archive/` — exact ZIP masters for provenance
- `docs/ARCHITECTURE.md` — high-level program flow
- `docs/MEMORY_MAP.md` — fixed blocks and important addresses
- `docs/ROUTINE_CATALOG.md` — source/helper inventory and study notes
- `docs/VIDEO_TIMING.md` — PAL/NTSC timing strategy
- `docs/AUDIO_AND_SID.md` — SID music, second SID and ocean engine
- `docs/AYAHUASCA.md` — color-mode behavior and implementation notes
- `docs/MASTER_PROVENANCE.md` — canonical hashes and preservation rules
- `docs/STUDY_GUIDE.md` — suggested path for extracting reusable ideas

## Toolchain

The source snapshot is a **TRSE** project (`source/FPFINAL/FPFINAL.trse`) centered on `main.ras`.

Important preservation note: the final source snapshot includes generated `main.asm`, `main.sym`, many fixed-address binary helpers and Python build scripts, but **does not include a final `main.prg`**. The authoritative executable for release study is therefore the preserved `VICIOSRICO.d64`.

When experimenting, work on a branch or copy. Do not rewrite the two files in `archive/`.

## Credits

- **RICO** — concept, graphics and scroll engine
- **Glenn Rune Gallefoss** — SID music

Released for **Flashparty 2026**.

## License / reuse

No explicit software/content license was included in the preserved masters. This repository is published for preservation and technical study. Do not assume that third-party assets or music are freely relicensable.

## Separate project: FPINTRO-TRIBUTE

The Fairlight tribute intro is preserved separately under [`FPINTRO-TRIBUTE/`](FPINTRO-TRIBUTE/). Its current user-designated master is the **12 October 2026 full version** of the intro: [PRG](FPINTRO-TRIBUTE/MASTER_FPINTRO_TRIBUTE.prg) / [ZIP backup](FPINTRO-TRIBUTE/MASTER_FPINTRO_TRIBUTE_12_OCT_2026.zip). The screen **does not switch to black** at the end of the scroll. Druid II and the intro animation continue normally.

This separate tribute project does **not** replace or modify the RicOS / Vicious Circles source snapshot or its September 2026 release archives. See [documentation](FPINTRO-TRIBUTE/README.md).
