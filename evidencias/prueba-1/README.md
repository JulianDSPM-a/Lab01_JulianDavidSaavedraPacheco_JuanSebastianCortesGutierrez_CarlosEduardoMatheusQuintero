# Prueba funcional 1

**Video:** [Ver prueba funcional 1](primera-prueba.mp4)

Registro en video de la prueba funcional 1 sobre la Zybo Z7.

### Caso 1 — Suma 9 + 3

**Descripción de la prueba:** Se configuran los switches para establecer `A = 9` (`1001`) y los cuatro bits inferiores de los botones para establecer `B = 3` (`0011`). `BTN[5] = 0`, por lo que se selecciona la operación de suma, y `BTN[4] = 0`, por lo que B no es invertido. Se calculan las operaciones lógicas AND, OR y XOR, junto con sus reducciones, para verificar la respuesta de los indicadores LED y RGB.

| Instante | SW `[3:0]` | BTN `[5:0]` | B efectivo | Operación | `res_and` | `res_or` | `res_xor` | `\|res_and` | `\|res_or` | `\|res_xor` | LED | RGB |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 0 ns | `1001` | `000011` | `0011` (3) | `9 + 3 = 12` | `0001` | `1011` | `1010` | `1` | `1` | `1` | `1100` (12) | Verde |

[Consultar las tablas del diseño](../../README.md#actividad-2-test-funcional-personalizado) · [Volver al informe](../../README.md#evidencias-de-funcionamiento)
