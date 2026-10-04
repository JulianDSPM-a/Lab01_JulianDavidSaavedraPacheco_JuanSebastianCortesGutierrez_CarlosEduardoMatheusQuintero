# Prueba funcional 3

**Video:** [Ver prueba funcional 3](tercera-prueba.mp4)

Registro en video de la prueba funcional 3 sobre la Zybo Z7.

### Caso 3 — Complemento de B

**Descripción de la prueba:** Se configura `A = 0` (`0000`) y B inicialmente en `2` (`0010`). Se activa `BTN[4] = 1`, por lo que los cuatro bits de B son invertidos mediante complemento bit a bit, obteniendo un B efectivo de `13` (`1101`). `BTN[5] = 0`, por lo que se realiza la suma entre A y el B efectivo. Se verifican las operaciones lógicas AND, OR y XOR, sus reducciones y la activación del indicador azul.

| Instante | SW `[3:0]` | BTN `[5:0]` | B efectivo | Operación | `res_and` | `res_or` | `res_xor` | `\|res_and` | `\|res_or` | `\|res_xor` | LED | RGB |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 20 ns | `0000` | `010010` | `1101` (13) | `0 + 13 = 13` | `0000` | `1101` | `1101` | `0` | `1` | `1` | `1101` (13) | Azul |

[Consultar las tablas del diseño](../../README.md#actividad-2-test-funcional-personalizado) · [Volver al informe](../../README.md#evidencias-de-funcionamiento)
