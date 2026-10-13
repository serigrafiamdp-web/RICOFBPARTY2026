; AYAH linear mask prototype - generated helper at $3C00
; Inputs: $22 subdivision, $23 mirror, $24 next_line.
; Scratch: $25-$2A,$FC-$FD.
; Exact char.bin mask repeats every 3 source rows:
; phase 0: SPACE on even columns -> write odd columns only
; phase 1: no SPACE -> write all 40
; phase 2: SPACE on odd columns -> write even columns only
; Condensed palette: 0B,0C,0F,01,0F,0C
