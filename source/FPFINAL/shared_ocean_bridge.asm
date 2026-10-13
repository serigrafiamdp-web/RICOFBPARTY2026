; OCEAN SHARED ENGINE - assembable 6502 source reference.
; TRSE loads the matching binary at $3978, do not independently include this ASM.
; The original package and MASTER are not overwritten.
* = $3978
shared_ocean_init_vector:
    jmp shared_ocean_init
shared_ocean_tick_vector:
    jmp shared_ocean_tick
shared_ocean_init:
    php
    sei
    pha
    lda $01
    sta shared_saved_port
    lda #$35
    sta $01
    pla
    jsr $F900
    jmp shared_restore
shared_ocean_tick:
    php
    sei
    pha
    lda $01
    sta shared_saved_port
    lda #$35
    sta $01
    pla
    jsr $F903
    jmp shared_restore
shared_restore:
    pha
    lda shared_saved_port
    sta $01
    pla
    plp
    rts
shared_ocean_cleanup:
    lda #$00
    sta $D404
    cpx #$00
    beq shared_cleanup_single
    ldy #$04
    sta ($FB),y
shared_cleanup_single:
    lda #$80
    sta $D412
    sta $D40B
    cpx #$00
    beq shared_cleanup_done
    ldy #$12
    sta ($FB),y
    ldy #$0B
    sta ($FB),y
shared_cleanup_done:
    rts
shared_saved_port:
    .byte $00

; Compiled entrypoints:
; $3978 -> $397E (init); $397B -> $3991 (tick)
; Private cleanup $39AD; bytes $3978-$39CF.
; The existing $3AA7 JSR destination is patched to JMP shared_ocean_cleanup.
; Audio bodies remain at $840C/$84A6; F900/F903 effect code single instance.
