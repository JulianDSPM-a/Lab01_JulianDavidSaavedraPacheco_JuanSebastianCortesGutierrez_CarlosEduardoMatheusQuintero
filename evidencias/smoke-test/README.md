# Smoke test del semáforo

**Video:** [Ver smoke test](smoke-test.mp4)


El módulo `Semaforo`, programado mediante su bitstream, controla el LED RGB LD6. La secuencia es **rojo → amarillo → verde → amarillo → rojo**, con un periodo aproximado de 2,56 s.

| Fase | `led[2:0]` | Duración calculada |
|---|---|---|
| Rojo | `001` | 0,64 s |
| Amarillo 1 | `011` | 0,64 s |
| Verde | `010` | 0,64 s |
| Amarillo 2 | `011` | 0,640000008 s |

**Observaciones del video:** [Describir la secuencia observada.]

[Volver al informe](../../README.md#evidencias-de-funcionamiento)
