; PRUEBA AISLADA: escalar TODA la envolvente del OUTRO hasta pico maximo 15/15 (SID).
; Se conserva el mismo fade=2 inicial y exactamente el mismo timing aprobado.
; SID 4-bit cuantizado: salida anterior 0,1,2,5,6,7,8,10,12 => nueva 0,1,3,6,8,9,10,13,15.
; Pico nuevo 15/15: limite del registro de volumen SID. No equivale a +25% en dB ni sonoridad percibida.
; INTRO y OUTRO: misma ganancia, ambos via motor compartido.
; X temporal guardado en el unico byte libre $8BBF; X restaurado; Y intacto.
; Flag=$8BC0 / wrapper=$8BC1 / gain=$8BD3; codigo+tabla ocupa $8BC0..$8BFF.
* = $8BC0
outro_boost_mode: .byte $00
outro_boost_tick:
    pha
    lda #$01
    sta outro_boost_mode
    pla
    jsr $84A6 ; original audio-tick body, avoid recursion through public JMP
    pha
    lda #$00
    sta outro_boost_mode
    pla
    rts
outro_boost_gain:
    lsr a
    pha
    lda outro_boost_mode
    bne outro_gain
    pla
    jmp $885F
outro_gain:
    lda $8871
    cmp #$0C
    pla
    bcc map_gain
    cmp #$05
    adc #$00      ; carry from CMP v>=5 => +1, otherwise unchanged
map_gain:
    stx $8BBF     ; single-byte reserved gap after scroll-bonus code
    tax
    lda volume_lut,x
    ldx $8BBF
    jmp $885F
volume_lut: .byte $00,$01,$03,$06,$08,$09,$0A,$0D,$0F
