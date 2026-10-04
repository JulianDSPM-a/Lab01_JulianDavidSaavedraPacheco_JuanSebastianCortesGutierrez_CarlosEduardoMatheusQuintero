# Prueba funcional 2

**Video:** [Ver prueba funcional 2](segunda-prueba.mp4)

Registro en video de la prueba funcional 2 sobre la Zybo Z7.

Para interpretar las entradas, `SW[3:0]` representa A y `BTN[3:0]` representa B antes del complemento. Los switches externos conectados a `BTN[4]` y `BTN[5]` seleccionan, respectivamente, el complemento de B y la operación: suma con `BTN[5]=0` y resta con `BTN[5]=1`.

Los cuatro LEDs muestran los bits inferiores del resultado. El RGB indica rojo ante acarreo o préstamo; en su ausencia, verde si los operandos tienen unos comunes, azul si no los tienen y alguno es distinto de cero, o apagado si ambos son cero.

[Consultar las tablas del diseño](../../README.md#actividad-2-test-funcional-personalizado) · [Volver al informe](../../README.md#evidencias-de-funcionamiento)
