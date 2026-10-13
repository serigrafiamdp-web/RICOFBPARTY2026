# Source snapshot

This directory contains source/reference files extracted from the **final source master dated 22 September 2026**.

Canonical source archive:

`RICO_FB_CODIGO_FUENTE_FINAL_MASTER_22_SEPTIEMBRE_2026.zip`

SHA-256:

`47b0b0d6bb4b8d08198f2a2dda99d87041d2ddab137c9abf8f3b6f2d65ad4329`

## Imported source files

The repository currently includes the most useful human-readable source/reference files from the final project under `source/FPFINAL/`, including:

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

The complete final source master also contains `main.ras`, generated `main.asm`, `main.sym`, Python build helpers and all binary resources.

## Important preservation note

The canonical source ZIP in the original archive remains the authority for byte-level provenance. Some large/binary project files are documented by hashes rather than duplicated here because the GitHub connector used for this preservation import cannot safely transfer every binary as a normal repository file.

Do not treat an individual helper ASM as a standalone complete build. Several files are reference/patch sources for binary helpers included by `main.ras`.

For architectural study, begin with:

1. `docs/ARCHITECTURE.md`
2. `docs/MEMORY_MAP.md`
3. `docs/VIDEO_TIMING.md`
4. `docs/ROUTINE_CATALOG.md`
5. `docs/STUDY_GUIDE.md`
