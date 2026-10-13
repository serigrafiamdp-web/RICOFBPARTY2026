# Key runtime symbols

Selected addresses from the final source master's generated `main.sym`.

| Address | Symbol | Why it matters |
|---|---|---|
| `$3758` | `demo_palette_request` | Palette request / AYAHUASCA control handoff |
| `$38A6` | `limit_up` | Upper scroll boundary |
| `$38A7` | `limit_down` | Lower scroll boundary |
| `$38BD` | `demo_finished` | Main demo finished state |
| `$38BE` | `basic_return_counter` | Outro/BASIC return state; also checked by palette worker |
| `$38C0` | `detected_machine` | Physical machine/timing profile |
| `$38C6` | `hardware_profile` | Hardware profile state |
| `$38CE` | `screen_active` | Active double-buffer screen |
| `$38D1` | `next_line` | Current coarse vertical source line |
| `$390D` | `direction` | Ping-pong scroll direction |
| `$3942` | `stage13_static_active` | Stage-13 centered/blink special state |
| `$3946` | `show_stage` | Current visual stage |

## Palette helper private state

From the final helper/reference source:

| Address | Meaning |
|---|---|
| `$8346` | active palette |
| `$8347–$8356` | palette remap table |
| `$83F8` | worker phase |
| `$83F9` | target palette |
| `$83FA–$83FB` | worker pointer |
| `$83FC` | chunk limit |

## Why keep this document

A large part of RicOS' reliability came from treating addresses as a contract. Before extracting a helper into another C64 project, identify which addresses are:

1. true hardware registers;
2. fixed external helper entry points;
3. runtime variables that can be relocated;
4. accidental/historical addresses that should be replaced by proper parameters.

Do not copy absolute addresses blindly into a new project.
