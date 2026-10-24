# MASTER MULTINORMA — SÁBADO 24 DE OCTUBRE DE 2026

**Estado: PASS declarado por el usuario (24/10/2026).**

Punto de guardado del proyecto RicOS / Flashparty 2026, procedente de
`RICO_TEST75E_PALB_22_24_SIN_OVERLAP_Y_RADIAL_EFECTIVA_TRSE_COMPLETO.zip`.

## Archivo fuente reproducible

- **Archivo:** `MASTER_MULTINORMA_SABADO_24_DE_OCTUBRE_2026_TRSE_COMPLETO.zip`
- **Contenido:** 78 archivos de proyecto, incluyendo `FPFINAL/FPFINAL.trse`, `FPFINAL/main.ras`, fuentes ASM y archivos BIN.
- **Tamaño ZIP:** 96.685 bytes
- **SHA-256:** `7cdfaee10918a6318ad412c09ae84b4b0583ff992dbfb17cb22bc34ab80233c9`
- **Git blob SHA-1:** `1f677b1bc23e792f3ac033139a63fa426d055c30`

## Comportamiento confirmado

- PAL-B detectado como perfil propio (ID 3), con ruta de velocidad independiente de Drean (ID 4).
- STAGES radiales 14–21 PAL-B: 2 píxeles por actualización.
- STAGE 22 PAL-B: corrección fraccionaria 2/3 píxeles según fase del SID (objetivo ~2,25 píxeles/actualización).
- STAGE 24 PAL-B: corrección fraccionaria 4/5 píxeles (objetivo ~4,25).
- En las pruebas anteriores TEST74 se recuperó la escena final ascendente de caracteres detenidos y cargó correctamente el OUTRO.
- TEST75E fue confirmado PASS por el usuario tras resolver el solapamiento de OrgAsm y evitar que la corrección del radial fuese anulada.
- Drean, NTSC y NTSC OLD: se pretende preservar el comportamiento de las rutas originales. La retirada de dos NOP reduce cuatro ciclos de una rama NTSC; esta modificación está documentada y no debe confundirse con identidad binaria.

## Preservación / recuperación

Este snapshot **no reemplaza** el `RICO_FB_CODIGO_FUENTE_FINAL_MASTER_22_SEPTIEMBRE_2026.zip` guardado en `archive/`.
Es un master nuevo de octubre, sin borrar ni modificar los masters anteriores.

Para trabajar: extraer este ZIP y abrir `FPFINAL/FPFINAL.trse` conservando los BIN junto al código fuente.
Para verificar integridad comparar SHA-256. No llamar a una compilación nueva equivalente binariamente al release de septiembre sin comparar artefactos y probar los cuatro perfiles.

**Origen:** TEST74 PASS → TEST75E PASS.
