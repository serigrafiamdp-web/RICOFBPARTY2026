# Architecture

## Boot / BASIC entry
Generated assembly starts with a BASIC stub at `$0801` that transfers control to machine code near `$0810`.

## SYSINFO64 diagnostic intro
The intro detects the machine timing profile and presents hardware information before the visual demo starts.

Machine profiles encoded in the final source:
1. NTSC OLD
2. NTSC
3. PAL-B
4. Drean PAL-N

The diagnostic sequence includes VIC/machine timing, CPU/VIC/CIA/RAM presentation, SID characterization, optional second-SID probing and IEC checks. The source explicitly notes that the joystick row is cosmetic rather than a real joystick-port test.

A synthesized ocean scene is also used in the intro.

## Main visual engine
`main.ras` describes the core as:
- PETSCII/custom-character scrolling
- VIC-II fine scrolling
- double buffering
- stage-based visual sequencing
- SID playback synchronized to the visual timeline

Important locations called out by the source:
- MAIN `$5000`
- charset `$2000`
- mask `$2800`
- PETSCII map `$C500`
- Screen A `$0400`
- Screen B `$3000`
- music `$8C00`

The final stage system contains 26 stages. Source comments highlight:
- stage 5: special cadence
- stages 11/12: special cadence
- stage 13: centered PETSCII + blink
- stage 14+: independent character animation
- stages 23–25: circular closing sequence

## Palette / AYAHUASCA engine
A helper at `$811E` handles ten selectable palettes without expanding MAIN.

## Shared ocean engine
Intro and outro intentionally share one procedural SID ocean engine. Fixed-address bridges allow code under ROM areas to run with the required memory configuration.

## Outro
The outro has its own charset/map/color data under KERNAL RAM, a static loader, line-25 scroller, sea-pan helper and audio initialization.

## Reusable architectural pattern
A recurring technique is **small fixed-address helpers outside MAIN**. Instead of allowing a monolithic program block to grow into music or data, specialized routines live in verified RAM gaps and are called through stable entry points.
