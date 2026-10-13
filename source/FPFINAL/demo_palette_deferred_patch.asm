; RicOS Palette Helper - delta de prueba (direcciones absolutas OrgAsm)
; Base exacta: DEMO_INTRO_OUTRO_VOLUMEN_10_RESTAURADO_FADE_80_OUTRO_125_PRUEBA.zip
; Esta fuente documenta SOLO los bloques cambiados; el resto del BIN conserva los bytes base.
; La rutina original de teclado $811E..$81AB, el constructor de mapas
; $81E4..$824A y las tablas $82F7..$8356 no se modifican.
; El worker usa ZP $FA/$FB como ya hacia el helper anterior.
; REQ=$3758, TEMP=$833D, ACTIVE=$8346, MAP=$8347..$8356.
; PHASE=$83F8 (0 idle,1 datos,2 color RAM), TARGET=$83F9, PTR=$83FA/B, LIMIT=$83FC.
; Remapeo datos fijos 63 bytes al iniciar; después 3000 bytes (B0A0..BC57),
; por bloques de 8, y finalmente 1000 color RAM (D800..DBE7) en bloques de 8.
; Cuando $38BE=$FF omite color RAM, exactamente igual que el helper original.
; En N/S se termina cualquier remapeo y se restaura gris antes de reiniciar.
; Fragmentos ASM con .org explicitos y etiquetas; el script de build fija bytes y valida offsets.

; BLOQUE $81AC .. $81AE
    .org $81AC
entry_apply:
    jmp handle  ; $81AC

; BLOQUE $81CE .. $81D0
    .org $81CE
entry_reset:
    jmp reset  ; $81CE

; BLOQUE $8287 .. $82EE
    .org $8287
scanner_init:
    lda #$01
    sta $83F8
    lda #$A0
    sta $83FA
    lda #$B0
    sta $83FB
    rts
handle:
    lda $83F8
    bne run_tick
    lda $3758
    beq handler_end
    cmp $8346
    beq clear_request
    sta $833D
    sta $83F9
    jsr $81E4
    lda #$00
    sta $3758
    jsr $824B
run_tick:
    jsr worker
handler_end:
    rts
clear_request:
    lda #$00
    jmp $82A6
    rts
reset:
    lda $83F8
    beq reset_to_default
drain_old:
    jsr worker
    lda $83F8
    bne drain_old
reset_to_default:
    lda #$00
    sta $3758
    sta $833D
    lda $8346
    beq reset_end
    lda #$00
    sta $83F9
    jsr $81E4
    jsr $824B
drain_reset:
    jsr worker
    lda $83F8
    bne drain_reset
reset_end:
    rts

; BLOQUE $8357 .. $83F7
    .org $8357
worker:
    lda $83FA
    sta $FA
    lda $83FB
    sta $FB
    lda #$08
    sta $83FC
    lda $83F8
    cmp #$02
    beq color_count
    lda $FA
    cmp #$A0
    bne start_map
    lda $FB
    cmp #$BB
    bne start_map
    lda #$08
    sta $83FC
    jmp start_map
color_count:
    lda $FA
    cmp #$C0
    bne start_map
    lda $FB
    cmp #$DB
    bne start_map
    lda #$08
    sta $83FC
start_map:
    ldy #$00
map_loop:
    lda ($FA),Y
    and #$0F
    tax
    lda $8347,X
    sta ($FA),Y
    iny
    cpy $83FC
    bne map_loop
    tya
    clc
    adc $FA
    sta $83FA
    lda $FB
    adc #$00
    sta $83FB
    lda $83F8
    cmp #$02
    beq check_color_end
    lda $83FA
    cmp #$58
    bne work_done
    lda $83FB
    cmp #$BC
    bne work_done
    lda $38BE
    cmp #$FF
    beq complete
    lda #$02
    sta $83F8
    lda #$00
    sta $83FA
    lda #$D8
    sta $83FB
    rts
check_color_end:
    lda $83FA
    cmp #$E8
    bne work_done
    lda $83FB
    cmp #$DB
    bne work_done
complete:
    lda $83F9
    sta $8346
    lda #$00
    sta $83F8
work_done:
    rts
