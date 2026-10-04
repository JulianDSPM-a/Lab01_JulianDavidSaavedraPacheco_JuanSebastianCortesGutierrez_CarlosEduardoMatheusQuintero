# Montaje experimental

## Parte 1: protoboard

![Switches externos y resistencias de pulldown en la protoboard](montaje-pt1.png)

## Parte 2: tarjeta

![Zybo Z7 y conexión de los jumpers](montaje-pt2.jpg)

Se utilizaron jumpers para conectar la Zybo Z7 con una protoboard que contiene dos switches y sus resistencias de pulldown. El nodo de un switch se conecta a JC1 (V15, `BTN[4]`) y el del otro a JC2 (W15, `BTN[5]`). Cada nodo tiene una resistencia a tierra y recibe 3,3 V cuando se cierra su switch. La protoboard comparte tierra con la tarjeta.

El primer switch selecciona la inversión de B y el segundo selecciona suma o resta. Sus posiciones estables facilitan modificar y mantener los modos durante las pruebas.

[Ver la descripción de las conexiones](../../README.md#montaje-de-los-switches-externos)
