; EXPERIMENT: physical PAL-B bypasses fractional +0.5%; cadence unchanged.
; RicOS CLEAN Drean-reference experiment. NOT MASTER.
; Only new main source change: $1A94 dispatcher post-test JMP $5A90 -> JMP $8B95.
; SYSINFO keeps physical machine 1/2/3/4 until the PRESS A KEY prompt ends.
; At $8B95 remembers hardware in $8BBF, aliases ONLY physical PAL-B 3 -> 4.
; True Drean physical=4 keeps its original #213 threshold and all main scene logic.
; Physical PAL-B=3 + runtime4 skips bonus entirely; NTSC NEW #25, Drean #213.
; TEST ONLY NTSC OLD=1: bypass previous +4% pixel bonus (threshold 25).
; This is approx -3.846% versus old +4% base, not an extra -4% accumulator.
; NTSC NEW=2 and PAL family retain original behavior.
; A/X/Y preserved by helper AND alias stub. No main code size change.
; The original NTSC guard routines are copied here verbatim.
* = $8B10
scroll_bonus_entry:
    pha
    lda $38C0
    beq pal
    cmp #3
    beq pal
    bcs profile4_dispatch
    cmp #2
    bcc no_bonus_palb
    lda $3757
    clc
    adc $3902
    cmp #25
    bcc store
    sbc #25
    bcs crossed
pal:
    lda $3757
    clc
    adc $3902
    cmp #102
    bcc store
    sbc #102
crossed:
    pha
    lda $3902
    cmp #7
    bcs skip_inc
    inc $3902
skip_inc:
    pla
store:
    sta $3757
no_bonus_palb:
    pla
    rts
drean:
    lda $3757
    clc
    adc $3902
    cmp #213
    bcc store
    sbc #213
    bcs crossed
profile4_dispatch:
    lda $8BBF
    cmp #3
    beq no_bonus_palb
    jmp drean
post_test_return:
    sta $8BBF
    bne no_palb_alias
    inc $38C0
no_palb_alias:
    pla
    rts
* = $8B70
ntsc_mask_switch_guard:
    php
    sei
    pha
    lda $38C0
    cmp #1
    bcc ntsc_mask_use_real
    cmp #3
    bcs ntsc_mask_use_real
    lda $D012
    cmp #63
    bcs ntsc_mask_use_real
    pla
    pha
    ora #$02
    sta $D018
    pla
    plp
    rts
ntsc_mask_use_real:
    pla
    sta $D018
    plp
    rts

; TEST ONLY: NTSC 24-row first visible scanline 55, first row ends at 62.
; Existing restore IRQ at raster 60 exposed the final 3 scanlines of row 1.
; Mask in NTSC stays selected through raster 62 and real charset returns at 63.
; PAL-B and PAL-N retain the approved original raster 60 and guard behavior.
; A/P preserved, X/Y untouched. This changes no SID, animation, scroll or palette timing.

* = $8B95
post_test_entry:
    pha
    lda $38C0
    cmp #3
    jmp post_test_return

* = $8B9E
ntsc_old_and_palb_negative_phase:
    .byte 0
* = $8BA0
mask_irq_restore_target_ntsc63:
    php
    pha
    lda $38C0
    cmp #1
    bcc mask_irq_restore_target_original
    cmp #3
    bcs mask_irq_restore_target_original
    pla
    clc
    adc #3
    sta $D012
    sec
    sbc #3
    plp
    rts
mask_irq_restore_target_original:
    pla
    sta $D012
    plp
    rts

* = $8BBF
physical_machine_marker: .byte 0
