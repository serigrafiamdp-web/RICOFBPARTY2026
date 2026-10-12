# Master provenance

This repository preserves two canonical snapshots that were explicitly marked as final.

## Final source master

`RICO_FB_CODIGO_FUENTE_FINAL_MASTER_22_SEPTIEMBRE_2026.zip`

- SHA-256: `47b0b0d6bb4b8d08198f2a2dda99d87041d2ddab137c9abf8f3b6f2d65ad4329`
- Size: 154982 bytes
- Contains TRSE project, `main.ras`, generated `main.asm`, symbols, helper ASM/Python sources and binary resources.
- Does **not** contain a final `main.prg`.

## Final release master

`RICO_FP_2026_RELEASE_FINAL_MASTER_NO_BORRAR.zip`

- SHA-256: `66cd4a0434c2a13eb95b147c6351081ab1df2726941aaf17928906793c7f87c2`
- Size: 34733 bytes

| File | Size | SHA-256 |
|---|---:|---|
| `VICIOSRICO.d64` | 174848 | `0eea8ac6e3013582ec8def7547a431663165694a4a67ba930db6907156787406` |
| `USER README HOTKEYS EASTER EGGS.txt` | 10518 | `ba3cfb9eff6b3b1167de3618ca864c7713060051d88cddf281dfd66f72b465e2` |
| `kernal-drean.bin` | 8192 | `8f54641860f508e7f66d10c860e9ad072be519fba8dbd55ba644e19da1d1c33c` |

## Preservation rule

Treat both final master snapshots as immutable reference artifacts.

For future research:
- make changes in branches;
- preserve fixed addresses unless a deliberate relocation is being studied;
- record PASS/FAIL results per machine profile;
- compare generated binaries and D64 images by hash before calling a build equivalent to the release.

The repository may store archival masters in base64-split form for transport. Reconstruction instructions live in `archive/README.md`; the SHA-256 above remains the authority.
