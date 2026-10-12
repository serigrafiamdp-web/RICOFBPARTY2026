# AYAHUASCA color mode

AYAHUASCA is the optional ten-palette color journey in the final release.

## User behavior
During the first scroll:
- press `0`–`9` to enable the mode;
- the number chooses the starting palette;
- later palettes advance automatically;
- an up/down scroll cycle keeps the same palette;
- palette changes are prepared while the characters are off-screen;
- pressing the same number again returns toward grayscale;
- another number selects another starting color.

The release README intentionally warns not to “overdose”: repeated requests can distort the perceived timeline and make the journey end earlier than expected.

## Implementation
`demo_palette_helper.bin` is placed at `$811E`, outside MAIN.

`demo_palette_deferred_patch.asm` documents the deferred remapping state:
- request around `$3758`
- active palette / map around `$8346+`
- worker phase/target/pointer/chunk state near `$83F8–$83FC`
- data and Color RAM are remapped in small chunks instead of all at once

## Reusable lesson
Convert expensive global visual changes into a bounded per-frame background state machine. The same idea can be reused for palette remaps, decompression, streaming prep and table conversion.
