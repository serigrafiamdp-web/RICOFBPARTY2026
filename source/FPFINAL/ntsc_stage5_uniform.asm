; NTSC NORMAL (2) and OLD (1): stage 5 constant 2-pixel pre-correction.
; Exactly $EFE8-$EFFF (24 bytes), after immutable outro colors EC00-EFE7
; and before immutable F000 static loader. Under KERNAL RAM, demo memory config $35.
; This routine does not alter the NTSC visual adjustment, SID or PAL-B helper.
* = $EFE8
ntsc_stage5_uniform:
    pha
    lda $38C0
    cmp #3
    bcs done
    lda $3946
    cmp #5
    bne done
    lda #2
    sta $3902
done:
    pla
    rts
