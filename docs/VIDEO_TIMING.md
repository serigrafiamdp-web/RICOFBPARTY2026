# Video timing and multi-standard strategy

RicOS does not assume one universal C64 frame rate.

## Machine IDs
| ID | Profile |
|---:|---|
| 1 | NTSC OLD |
| 2 | NTSC |
| 3 | PAL-B |
| 4 | Drean PAL-N |

The intro measures VIC timing using a full-frame observation with CIA1 Timer B.

## Logical clock
Source comments document:
- PAL-B / PAL-N: one logical tick per frame
- NTSC OLD: 37 ticks per 45 frames
- NTSC: 31 ticks per 37 frames

The goal is to keep stage timing and music/visual progression comparable while respecting physical frame cadence.

## Targeted correction helpers
- `ntsc_stage5_uniform.*`
- `palb_uniform_cadence_safe.*`
- `scroll_bonus_2pct.*`

## Reusable lesson
Separate:
1. physical frame timing;
2. logical demo time;
3. effect-specific pixel corrections.

## Regression matrix
Timing-sensitive changes should be checked on PAL-B, Drean PAL-N, NTSC and NTSC OLD, with special attention to stage 5, stages 11/12, stage 13, SID end timing and outro black intervals.
