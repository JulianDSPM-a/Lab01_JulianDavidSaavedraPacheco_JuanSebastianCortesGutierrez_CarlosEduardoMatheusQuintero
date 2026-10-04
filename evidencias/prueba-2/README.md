# Prueba funcional 2

**Video:** [Ver prueba funcional 2](segunda-prueba.mp4)

Registro en video de la prueba funcional 2 sobre la Zybo Z7.

### Caso 2 — Resta 4 − 15

**Descripción de la prueba:** Se configuran los switches para establecer `A = 4` (`0100`) y los cuatro bits inferiores de los botones para establecer `B = 15` (`1111`). `BTN[5] = 1`, por lo que se selecciona la operación de resta, mientras que `BTN[4] = 0`, por lo que B no es invertido. Debido a que `A < B`, se verifica la condición asociada al bit más significativo del resultado y la activación del indicador rojo.

| Instante | SW `[3:0]` | BTN `[5:0]` | B efectivo | Operación | `res_and` | `res_or` | `res_xor` | `\|res_and` | `\|res_or` | `\|res_xor` | LED | RGB |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 10 ns | `0100` | `101111` | `1111` (15) | `4 - 15 = -11` | `0100` | `1111` | `1011` | `1` | `1` | `1` | `0101` (5) | Rojo |

[Consultar las tablas del diseño](../../README.md#actividad-2-test-funcional-personalizado) · [Volver al informe](../../README.md#evidencias-de-funcionamiento)
