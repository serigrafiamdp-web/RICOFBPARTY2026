# TEST BLINK 01 — TRSE

ZIP completo de pruebas: `RICO_TRSE_TEST_BLINK_01_50T.zip`.

Se retrasa la entrada de STAGE 13 (blink) al terminar STAGE 12, reteniendo la imagen negra durante 50 ticks logicos. El SID sigue reproduciendose en la interrupcion raster, que se mantiene intacta. Se modifica solo `FPFINAL/main.ras` y se conservan los recursos del master del 22 de septiembre.

Cambiar `stage13_black_hold := 50;` para ajustar la pausa. ZIP NO compilado; probar en TRSE y VICE, verificando margen de MAIN, IRQ y sincronizacion en las cuatro maquinas.
