# RicOS / Vicious Circles — study index

This page is the technical navigation index for the RicOS part of the repository.

## Preservation

- [Archive provenance](archive/README.md)
- [Master provenance and hashes](docs/MASTER_PROVENANCE.md)
- [Final release information](release/README.md)
- [Source snapshot notes](source/README.md)

The exact final source master ZIP is stored under `archive/`.

## Understand the demo

- [Architecture](docs/ARCHITECTURE.md)
- [Memory map](docs/MEMORY_MAP.md)
- [Key runtime symbols](docs/KEY_SYMBOLS.md)
- [Video timing and multi-standard strategy](docs/VIDEO_TIMING.md)
- [Audio, SID2 and procedural ocean](docs/AUDIO_AND_SID.md)
- [AYAHUASCA palette engine](docs/AYAHUASCA.md)

## Extract reusable solutions

- [Routine catalog](docs/ROUTINE_CATALOG.md)
- [Study guide](docs/STUDY_GUIDE.md)
- [Regression checklist](docs/REGRESSION_CHECKLIST.md)
- [Build/reproduction notes](docs/BUILD_REPRODUCTION.md)

## Exact human-readable helper sources already extracted

Under `source/FPFINAL/`:

- `FPFINAL.trse`
- `demo_palette_deferred_patch.asm`
- `shared_ocean_bridge.asm`
- `ntsc_stage5_uniform.asm`
- `palb_uniform_cadence_safe.asm`
- `scroll_bonus_2pct.asm`
- `outro_gain_only.asm`
- `outro_early_audio_init.asm`
- `palette_7_toggle_fix.asm`
- `ayah_linear_mask_helper.asm`

For the complete source tree, use the canonical final source ZIP in `archive/`.

## Best techniques to revisit for future C64 projects

1. fixed-address helper modules to protect the main memory block;
2. PAL/NTSC logical timing separated from effect-specific corrections;
3. deferred palette remapping with a strict per-frame budget;
4. RAM-under-ROM bridge routines that preserve CPU-port state;
5. procedural environmental SID audio instead of samples;
6. precomputed radial/rotating data to reduce runtime CPU load;
7. PASS/FAIL regression testing across PAL-B, PAL-N, NTSC and NTSC OLD.

