; Prueba OUTRO solamente. Colocar exactamente en $8B07..$8B0F, antes de $8B10.
; Sustituye SOLO el JSR $F200 original en InicializarOutroMar por JSR $8B07.
; Llama el mismo init de linea 25 que antes, luego priming suave del fade.
; No cambia el retraso de pantalla negra ni el sonido de la INTRO.
* = $8B07
outro_early_audio_init:
    jsr $F200
    lda #$02
    sta $8871  ; fade_volume (modulo de audio compartido)
    rts
