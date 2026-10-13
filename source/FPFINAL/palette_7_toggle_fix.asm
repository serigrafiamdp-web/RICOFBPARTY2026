; RicOS 21/09/2026 - documentacion de parche exclusivamente para variante experimental.
; NO ensamblar esta fuente en MAIN. Direcciones son de los BIN del ZIP.
; Reemplazo $8189: B9 FC 82 -> 20 25 F7 (JSR $F725).
; Reemplazo $F660: AD 58 37 -> 4C 80 F7 (JMP $F780).
; Nuevo estado libre $3B9B: tecla7 armada. $83FD=2: regreso gris gradual.
; Otros bytes, paletas, tabla de escenas y worker 8 bytes/cuadro sin cambios.

; HOOK TECLADO
; $F725  Load original key number 1..10
; $F728  Is this key 7?
; $F72A  BEQ rel seven
; $F72C  Other digit: disarm 7 latch
; $F72E  STA abs 15259
; $F731  Return original digit
; $F734  RTS imp
; $F735  seven:
; $F735  Has 7 been activated before?
; $F738  BEQ rel arm
; $F73A  Only toggle while auto mode is running
; $F73D  CMP imm 1
; $F73F  BNE rel arm
; $F741  Disarm 7
; $F743  STA abs 15259
; $F746  Drop pending scene palette requests
; $F749  Special mode: grayscale return in progress
; $F74B  STA abs 33789
; $F74E  Worker currently running?
; $F751  BEQ rel idle
; $F753  Queue gray AFTER current worker target
; $F756  JMP abs set_req
; $F759  idle:
; $F759  Queue gray from current palette
; $F75C  set_req:
; $F75C  Remember expected request until worker accepts it
; $F75F  RTS imp
; $F760  arm:
; $F760  Arm next press of key7 for grayscale
; $F762  STA abs 15259
; $F765  Preserve original selection on first press
; $F767  RTS imp

; GATE AYAHUASCA
; $F780  AYAH special off/gray phase?
; $F783  CMP imm 2
; $F785  BNE rel normal
; $F787  Get queued grayscale request
; $F78A  BEQ rel no_req
; $F78C  Still grayscale request, rather than another key?
; $F78F  BNE rel new_key
; $F791  Process worker without restarting AYAH
; $F794  no_req:
; $F794  Is worker finished?
; $F797  BNE rel gray_tick
; $F799  Return to normal manual mode
; $F79B  STA abs 33789
; $F79E  gray_tick:
; $F79E  Keep ticking worker
; $F7A1  new_key:
; $F7A1  User changed their mind; allow new manual key
; $F7A3  STA abs 33789
; $F7A6  normal:
; $F7A6  Execute original LDA overwritten by trampoline
; $F7A9  Resume original AYAH logic with Z flag from LDA
