; PAL-B retains its prior uniform stages 5/11/12 and GLOBAL approx. -2.25%;
; NTSC OLD (physical marker 1) reuses ONLY the existing -1/44 pixel correction,
; bypassing PAL-B stage rewrites.  NTSC NEW/PAL-N/Drean skip unchanged.
; Against original OLD with +4% bonus: (1 - 1/44) / 1.04 - 1 = -6.0315% nominal.
; Runtime accumulator relocated from $FFF9 to a proven filler byte at $8B9E. (actual -2.2727%; 1 pixel per 44 base pixels) after overrides.
; Same fixed address $FFC8; 50 bytes executable through $FFF9; shared phase in padding at $8B9E.
; No RAM-test scratch, KERNAL vectors $FFFA-$FFFF untouched.
; The positive bonus at $8B10 stays bypassed for PAL-B (as in the tested base).
; PAL-N/NTSC skip both changes; A/stack preserved; original scroll helper reached.
* = $FFC8
palb_uniform_cadence:
    pha
    lda $8BBF
    lsr
    bcc done
    beq minus
    lda $3946
    cmp #5
    beq two
    ; CMP #5 supplies Carry: stages 0..4 underflow, only 11/12 fall below 2.
    sbc #11
    cmp #2
    bcs minus
 two:
    lda #2
    sta $3902
minus:
    lda $8B9E
    clc
    adc $3902
    cmp #44
    bcc store
    sbc #44
    dec $3902
store:
    sta $8B9E
done:
    pla
    jmp $8B10
; Phase accumulator now lives at the previously unused $8B9E byte.
; $FFF9 is reclaimed as the last executable byte; CPU vectors $FFFA+ untouched.
