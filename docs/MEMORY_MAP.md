# Memory map — fixed blocks

Extracted from `@startblock` declarations in the final `main.ras`. This is not a complete linker map; inline/variable blocks can extend beyond the single address shown.

| Address / range | Block | Source | Bytes |
|---|---|---|---:|
| `$1000–$13E7` | `INTRO_ART_MAP` | `ricotestmap.bin` | 1000 |
| `$13E8–$13FB` | `INTRO_SID2_HEART_START` | `intro_sid2_heart_start.bin` | 20 |
| `$1400–$17E7` | `INTRO_ART_COLOR` | `ricotestcolor.bin` | 1000 |
| `$17E8–$17F6` | `INTRO_SID2_HEART_DONE` | `intro_sid2_heart_done.bin` | 15 |
| `$1800–$18C6` | `INTRO_PIXEL_SCROLL` | `intro_pixel_scroll.bin` | 199 |
| `$18C7–$18F1` | `INTRO_PENDING_HEART_COLORS` | `intro_heart_pending.bin` | 43 |
| `$18F2–$18FC` | `INTRO_PROMPT_HIDE_TEST_SCREEN` | `intro_prompt_hide_initial.bin` | 11 |
| `$1900–$1A2D` | `INTRO_IEC_09` | `intro_iec_09.bin` | 302 |
| `$1A2E` | `SYSINFO_PROMPT_S_O_WRAPPER` | `inline in main.ras` | inline/variable |
| `$1A40–$1A93` | `INTRO_IEC_HEART` | `intro_iec_heart.bin` | 84 |
| `$1A94` | `SYSINFO_PROMPT_S_DESPACHO_EN_FUENTE` | `inline in main.ras` | inline/variable |
| `$1AA0–$1B67` | `INTRO_FAKE_HEARTS` | `intro_fake_hearts.bin` | 200 |
| `$1B68–$1BBA` | `INTRO_BASIC_TESTS_TICK` | `intro_basic_tests_tick.bin` | 83 |
| `$1BC0–$1BF7` | `INTRO_SID1_MODEL_VECTORS` | `intro_sid1_vectors.bin` | 56 |
| `$1C00–$1CC0` | `INTRO_ART_LOADER` | `intro_art_loader.bin` | 193 |
| `$1CC1–$1CFD` | `INTRO_SID1_MODEL_RENDER` | `intro_sid1_render.bin` | 61 |
| `$1D00–$1DE0` | `INTRO_MACHINE_ROW` | `intro_machine_row.bin` | 225 |
| `$1DE1–$1DF0` | `INTRO_COMPLETED_HEART_COLORS` | `intro_heart_completed.bin` | 16 |
| `$1DF1–$1DFB` | `INTRO_PROMPT_HIDE_FINAL_SCREEN` | `intro_prompt_hide_final.bin` | 11 |
| `$1E00–$1FF9` | `INTRO_LFSR_HEART` | `intro_lfsr_heart.bin` | 506 |
| `$1FFA` | `INTRO_BASIC_TEST_FLAGS` | `inline in main.ras` | inline/variable |
| `$3400` | `INTRO_DATA` | `inline in main.ras` | inline/variable |
| `$3978–$39CF` | `SHARED_OCEAN_BRIDGE` | `shared_ocean_bridge.bin` | 88 |
| `$39D2–$39F9` | `INTRO_SID2_HEART_TICK` | `intro_sid2_heart_tick.bin` | 40 |
| `$3A00–$3ABB` | `SEA_WAVES_HELPER` | `sea_waves.bin` | 188 |
| `$3ABC–$3B46` | `INTRO_CHARSET_ANIM` | `intro_charset_anim.bin` | 139 |
| `$3B47–$3B89` | `INTRO_SID_ADDRESS_HIDE` | `intro_sid_addresses_a.bin` | 67 |
| `$3B8A–$3B95` | `INTRO_PROMPT_REVEAL_AFTER_SEA` | `intro_prompt_reveal.bin` | 12 |
| `$3BA1–$3BDB` | `INTRO_SID_ADDRESS_REVEAL` | `intro_sid_addresses_b.bin` | 59 |
| `$5000` | `MAIN` | `inline in main.ras` | inline/variable |
| `$8000–$811D` | `OUTRO_RESTART_CHARSET_PATCH` | `outro_restart_charset_patch.bin` | 286 |
| `$811E–$83FF` | `DEMO_PALETTE_HELPER` | `demo_palette_helper.bin` | 738 |
| `$8400–$8B06` | `INTRO_OCEAN_AUDIO_TEST` | `intro_ocean_audio.bin` | 1799 |
| `$8B07–$8B0F` | `OUTRO_EARLY_AUDIO_INIT` | `outro_early_audio_init.bin` | 9 |
| `$8B10–$8BBF` | `SCROLL_BONUS_2P` | `scroll_bonus_2pct.bin` | 176 |
| `$8BC0–$8BFF` | `OUTRO_ONLY_GAIN` | `outro_gain_only.bin` | 64 |
| `$8C00–$A0C0` | `VICIOS_MUSIC` | `music.bin` | 5313 |
| `$A0C1` | `TECLA_O_RAM_SEGURA` | `inline in main.ras` | inline/variable |
| `$BC60–$BFB8` | `INTRO_RAM_TESTS` | `intro_diagnostics_charset_bankfix.bin` | 857 |
| `$BFC0–$BFF9` | `INTRO_BASIC_TESTS_WRAPPERS` | `intro_basic_tests_wrappers.bin` | 58 |
| `$C000–$C3AA` | `RICOS_UI` | `ui.bin` | 939 |
| `$C3AB–$C44F` | `SID2_VISUAL_SAFE` | `sid2_visual_safe.bin` | 165 |
| `$C450–$C4FD` | `INTRO_BASIC_TESTS_VISUAL` | `intro_basic_tests_visual.bin` | 174 |
| `$CE60–$CFE9` | `LIVE_DUAL_SID_HELPER` | `stereo.bin` | 394 |
| `$CFEA–$CFFF` | `INTRO_BASIC_TESTS_BRIDGE` | `intro_basic_tests_bridge.bin` | 22 |
| `$EFE8–$EFFD` | `NTSC_NORMAL_STAGE5_UNIFORM_PRE_CORRECTION` | `ntsc_stage5_uniform.bin` | 22 |
| `$F000–$F0C0` | `OUTRO_STATIC_LOADER` | `outro_static_loader.bin` | 193 |
| `$F0C1–$F0FA` | `OUTRO_SCROLL_DECODE_A` | `outro_scroll_decode_a.bin` | 58 |
| `$F100–$F1B4` | `OUTRO_SEA_PIXEL_PAN` | `outro_sea_pan.bin` | 181 |
| `$F1B5–$F1EC` | `OUTRO_SCROLL_DECODE_B` | `outro_scroll_decode_b.bin` | 56 |
| `$F200–$FFC7` | `OUTRO_LINE25_SCROLL` | `outro_line25_scroll.bin` | 3528 |
| `$FFC8–$FFF9` | `PALB_UNIFORM_CADENCE_AFTER_OUTRO` | `palb_uniform_cadence_safe.bin` | 50 |

## Core locations called out directly by the source
- `$0801`: BASIC launcher
- `$0810`: machine-code entry area
- `$0400`: Screen A
- `$3000`: Screen B
- `$2000`: demo charset
- `$2800`: mask
- `$3400`: intro data
- `$5000`: MAIN
- `$8C00`: SID music
- `$C500`: PETSCII map
- `$D800–$DBE7`: Color RAM range used by deferred palette remapping
- `$E000+`: outro resources under KERNAL
- `$FFC8`: PAL-B cadence helper under KERNAL RAM

## Warning
Several helpers intentionally live under BASIC or KERNAL ROM and require the correct `$01` memory configuration. Check ROM/RAM visibility and interrupt state before reusing them.
