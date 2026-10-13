# Build and reproduction notes

## Preserved source master

The final source archive is:

`RICO_FB_CODIGO_FUENTE_FINAL_MASTER_22_SEPTIEMBRE_2026.zip`

SHA-256:

`47b0b0d6bb4b8d08198f2a2dda99d87041d2ddab137c9abf8f3b6f2d65ad4329`

It is a TRSE C64 project centered on `main.ras`.

## Important limitation

The final source master does **not** contain a final `main.prg`.

Therefore:

- the source snapshot is the authoritative source state;
- `VICIOSRICO.d64` from the final release master is the authoritative distributed executable;
- a future compile must be considered a **reproduction build**, not automatically the same release.

## Before claiming a reproduction is equivalent

1. Build from a copy/branch, never from the preserved master.
2. Record TRSE/OrgAsm version and relevant project settings.
3. Compare symbol map/fixed block addresses.
4. Compare generated PRG/D64 hashes.
5. Test all four timing profiles.
6. Check visual/music synchronization, stage 13 and the outro.
7. Verify all hotkeys and restart paths.
8. If bytes differ but behavior appears identical, document the difference instead of overwriting history.

## TRSE project settings visible in the preserved project

- system: C64
- startup origin override: `$0810`
- debug symbols: enabled
- remove unused symbols: enabled
- output type: PRG
- Exomizer: enabled in the saved project state
- main working source: `main.ras`

## Fixed-address sensitivity

This project deliberately places many BIN helpers with `@startblock` directives. A harmless-looking source change can increase MAIN or move inline data into a fixed block.

When reproducing:

- read `docs/MEMORY_MAP.md`;
- inspect `main.sym`;
- treat `$8C00` music and `$F000+` outro areas as hard boundaries;
- preserve KERNAL-vector area `$FFFA–$FFFF`;
- verify RAM-under-ROM assumptions around `$E000–$FFFF`.

## Recommended output naming

Never call a newly compiled build “MASTER” until verified.

Example:

`RICO_REPRO_TEST_<date>_<short-change>.zip`

Keep the 22 September masters immutable.
