# Routine and file catalog

Descriptions are based on the final source, inline comments and file roles; binary-only resources are described conservatively.

| File | Bytes | SHA-256 prefix | Study role |
|---|---:|---|---|
| `FPFINAL.trse` | 1291 | `be357291cb97` | TRSE project file. |
| `ayah_linear_mask_helper.asm` | 383 | `2cff53cbf9cc` | Prototype linear-mask optimization helper source. |
| `ayah_linear_mask_helper.bin` | 210 | `9a1a371645cf` | Binary form of linear-mask helper. |
| `build_outro_3_effects_alternation.py` | 10557 | `d07e47906c00` | Binary/source resource retained from the final source master. |
| `build_palette_async.py` | 14208 | `eb43dc87d3d1` | Builder/validation script for palette helper variants. |
| `char.bin` | 2400 | `b1854c32fd62` | PETSCII/custom character data. |
| `demo_palette_deferred_patch.asm` | 4162 | `975b221961cd` | Assembly reference for deferred palette worker. |
| `demo_palette_helper.bin` | 738 | `82a60347b7b4` | Runtime palette request/deferred remap worker. |
| `intro_art_loader.bin` | 193 | `a066789792f3` | Binary/source resource retained from the final source master. |
| `intro_basic_tests_bridge.bin` | 22 | `aa451370e81e` | Binary/source resource retained from the final source master. |
| `intro_basic_tests_tick.bin` | 83 | `8efbeaf67a31` | Binary/source resource retained from the final source master. |
| `intro_basic_tests_visual.bin` | 174 | `2a55c77de3b9` | Binary/source resource retained from the final source master. |
| `intro_basic_tests_wrappers.bin` | 58 | `df507c777935` | Binary/source resource retained from the final source master. |
| `intro_charset_anim.bin` | 139 | `5a1ed56711a2` | Binary/source resource retained from the final source master. |
| `intro_diagnostics_charset_bankfix.bin` | 857 | `bfee08416e9b` | Binary/source resource retained from the final source master. |
| `intro_fake_hearts.bin` | 200 | `fc42594b7827` | Binary/source resource retained from the final source master. |
| `intro_heart_completed.bin` | 16 | `368aac41200d` | Binary/source resource retained from the final source master. |
| `intro_heart_pending.bin` | 43 | `bcc943626bad` | Binary/source resource retained from the final source master. |
| `intro_iec_09.bin` | 302 | `3a927ea53172` | Binary/source resource retained from the final source master. |
| `intro_iec_heart.bin` | 84 | `285552eabd39` | Binary/source resource retained from the final source master. |
| `intro_lfsr_heart.bin` | 506 | `e7af1fec10a9` | Binary/source resource retained from the final source master. |
| `intro_machine_row.bin` | 225 | `b5c0c1221f66` | Binary/source resource retained from the final source master. |
| `intro_ocean_audio.asm` | 21447 | `1537f4016246` | Procedural ocean sound engine source/reference and tuning notes. |
| `intro_ocean_audio.bin` | 1799 | `1a13c54ab8fb` | Ocean audio engine binary loaded at fixed address. |
| `intro_pixel_scroll.bin` | 199 | `727f67bc2112` | Binary/source resource retained from the final source master. |
| `intro_prompt_hide_final.bin` | 11 | `d19dc29c0249` | Binary/source resource retained from the final source master. |
| `intro_prompt_hide_initial.bin` | 11 | `f5d431c61f46` | Binary/source resource retained from the final source master. |
| `intro_prompt_reveal.bin` | 12 | `525e4def4d99` | Binary/source resource retained from the final source master. |
| `intro_sid1_render.bin` | 61 | `e47fad5d78ef` | Binary/source resource retained from the final source master. |
| `intro_sid1_vectors.bin` | 56 | `3dcf4917173d` | Binary/source resource retained from the final source master. |
| `intro_sid2_heart_done.bin` | 15 | `6164ffff6014` | Binary/source resource retained from the final source master. |
| `intro_sid2_heart_start.bin` | 20 | `13aa7f707fae` | Binary/source resource retained from the final source master. |
| `intro_sid2_heart_tick.bin` | 40 | `0c4af7e3fcf1` | Binary/source resource retained from the final source master. |
| `intro_sid_addresses_a.bin` | 67 | `ec1ab66d5c62` | Binary/source resource retained from the final source master. |
| `intro_sid_addresses_b.bin` | 59 | `ff09492b18a6` | Binary/source resource retained from the final source master. |
| `main.asm` | 301656 | `d66dc1a0324d` | Generated 6502 assembly output from the TRSE source snapshot. |
| `main.ras` | 197652 | `30e6be309655` | TRSE source; top-level program, diagnostics, visual engine, timing, hotkeys and outro. |
| `main.sym` | 55096 | `63150155f46b` | Generated symbol/address listing for memory/address study. |
| `music.bin` | 5313 | `f1c8d2817c3d` | SID music data by Glenn Rune Gallefoss. |
| `ntsc_stage5_uniform.asm` | 471 | `a862e90a27fc` | NTSC stage-5 timing/pixel correction reference. |
| `ntsc_stage5_uniform.bin` | 22 | `40f1190280bd` | Binary NTSC correction helper. |
| `outro_early_audio_init.asm` | 425 | `d4fb01cc6c25` | Outro early audio initialization reference. |
| `outro_early_audio_init.bin` | 9 | `7363ddbcfb8a` | Binary early-init helper. |
| `outro_gain_only.asm` | 1259 | `386147257776` | Ocean gain wrapper/reference source. |
| `outro_gain_only.bin` | 64 | `b7c49b024702` | Binary ocean gain helper. |
| `outro_line25_scroll.bin` | 3528 | `d56cc95115c2` | Outro line-25 text scroller and final-cycle behavior area. |
| `outro_restart_charset_patch.bin` | 286 | `75029593155c` | Restores changed/animated glyphs on replay. |
| `outro_scroll_decode_a.bin` | 58 | `7d7db3f4d0e7` | Outro long-text decoder helper A. |
| `outro_scroll_decode_b.bin` | 56 | `fa61e33cf90e` | Outro long-text decoder helper B. |
| `outro_sea_pan.bin` | 181 | `81fe98f76da8` | Outro sea pixel/coarse pan helper. |
| `outro_static_loader.bin` | 193 | `039c97102a20` | Loads static outro charset/map/color resources. |
| `outro_voice1_tres_efectos.asm` | 2385 | `13c82b0abde8` | Experimental/reference three-effect voice-1 ocean routine documentation. |
| `outrotileset.bin` | 2048 | `4b8a3fa6a68f` | Outro charset. |
| `palb_uniform_cadence_safe.asm` | 1332 | `094e5a0a9f0e` | PAL-B cadence correction and NTSC OLD handling reference. |
| `palb_uniform_cadence_safe.bin` | 50 | `cd064aacfed5` | Binary cadence helper. |
| `palette_7_toggle_fix.asm` | 2091 | `78a8452fa7e0` | Historical/reference patch notes for palette key behavior. |
| `radial_maps_high.bin` | 4000 | `4c1e7dad2a19` | High radial-map table data. |
| `radial_maps_low.bin` | 5000 | `4d58bdd4e06c` | Low radial-map table data. |
| `ricotestcolor.bin` | 1000 | `195c226f6270` | Diagnostic/test color data. |
| `ricotestmap.bin` | 1000 | `9b876f3c9ad2` | Diagnostic/test screen map data. |
| `rotating_lines_double_base.bin` | 3000 | `90b929d1f276` | Precomputed rotating-lines base data. |
| `screenoutrochars.bin` | 1000 | `2e148cc1c180` | Outro screen character map. |
| `screenoutrocolors.bin` | 1000 | `00dbfbde4fb8` | Outro color map. |
| `scroll_bonus_2pct.asm` | 2905 | `e54af611825a` | Historical/fine-tuning scroll correction source with detailed notes. |
| `scroll_bonus_2pct.bin` | 176 | `e40e56ff5a59` | Binary scroll correction helper in source snapshot. |
| `sea_waves.bin` | 188 | `1ccc85cf03b2` | Wave helper/data used by ocean system. |
| `shared_ocean_bridge.asm` | 1313 | `dbeb0015a06c` | ROM-safe bridge for shared ocean engine. |
| `shared_ocean_bridge.bin` | 88 | `36d54a85f181` | Binary bridge used by final source. |
| `sid2_visual_safe.bin` | 165 | `1a8e1031653b` | Visual-only SID2 presentation helper. |
| `stereo.bin` | 394 | `7bacb20ee928` | Second-SID/stereo-related helper resource. |
| `tileset.bin` | 2048 | `0c793f78ad89` | Main visual charset/tileset resource. |
| `ui.bin` | 939 | `0fd50e5db757` | SYSINFO/UI binary resource. |

## Best starting points
1. `main.ras` — overall architecture and calling conventions.
2. `main.sym` — exact addresses.
3. `demo_palette_deferred_patch.asm` — bounded per-frame palette work.
4. `shared_ocean_bridge.asm` — ROM-safe fixed-address bridge pattern.
5. `palb_uniform_cadence_safe.asm` and `ntsc_stage5_uniform.asm` — multi-standard timing corrections.
6. `intro_ocean_audio.asm` — procedural SID ocean design.
7. `build_palette_async.py` — binary patch/build validation methodology.
