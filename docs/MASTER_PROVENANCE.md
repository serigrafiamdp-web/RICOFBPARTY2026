# Master provenance

Two snapshots were explicitly marked as final.

## Final source master

`RICO_FB_CODIGO_FUENTE_FINAL_MASTER_22_SEPTIEMBRE_2026.zip`

- SHA-256: `47b0b0d6bb4b8d08198f2a2dda99d87041d2ddab137c9abf8f3b6f2d65ad4329`
- Size: 154982 bytes
- Stored directly in `archive/`.
- Contains the TRSE project, `main.ras`, generated `main.asm`, symbols, helper ASM/Python sources and binary resources.
- Does **not** contain a final `main.prg`.

## Final release master

Original name:

`RICO FP 2026 RELEALSE FINAL MASTER NO BORRAR.zip`

- SHA-256: `66cd4a0434c2a13eb95b147c6351081ab1df2726941aaf17928906793c7f87c2`
- Size: 34733 bytes

| File | Size | SHA-256 |
|---|---:|---|
| `VICIOSRICO.d64` | 174848 | `0eea8ac6e3013582ec8def7547a431663165694a4a67ba930db6907156787406` |
| `USER README HOTKEYS EASTER EGGS.txt` | 10518 | `ba3cfb9eff6b3b1167de3618ca864c7713060051d88cddf281dfd66f72b465e2` |
| `kernal-drean.bin` | 8192 | `8f54641860f508e7f66d10c860e9ad072be519fba8dbd55ba644e19da1d1c33c` |

The release master is kept separately as a protected final artifact. The repository contains its user README and exact cryptographic provenance.

## Preservation rule

Treat both final masters as immutable references.

For future research:

- work on branches or copies;
- preserve fixed addresses unless relocation is the experiment;
- record PASS/FAIL by machine profile;
- compare generated binaries and D64 images by hash before calling a rebuild equivalent to the release.
