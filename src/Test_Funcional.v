`timescale 1ns / 1ps

// Test combinacional de operaciones logicas y aritmeticas.
module TestFuncional (
    input  wire [3:0] SW,
    input  wire [5:0] BTN,
    output wire [3:0] LED,
    output wire       RGB_R,
    output wire       RGB_G,
    output wire       RGB_B
);
    wire [3:0] A;
    wire [3:0] B_temp;
    wire [3:0] B;
    wire [3:0] res_and;
    wire [3:0] res_or;
    wire [3:0] res_xor;
    wire [4:0] resultado;

    // Operandos sin signo: switches y cuatro botones de la placa.
    assign A = SW[3:0];
    assign B_temp = BTN[3:0];
    // BTN[4] invierte los cuatro bits de B; no es negacion aritmetica.
    assign B = BTN[4] ? ~B_temp : B_temp;

    // Operaciones bit a bit, antes de las reducciones del RGB.
    assign res_and = A & B;
    assign res_or  = A | B;
    assign res_xor = A ^ B;

    // BTN[5]: 0 suma, 1 resta. El contexto de resultado es de 5 bits.
    assign resultado = BTN[5] ? (A - B) : (A + B);
    // Nibble inferior: resultado modulo 16, incluso si A < B.
    assign LED = resultado[3:0];

    // Prioridad: rojo > verde > azul > apagado (entradas binarias estables).
    // Rojo: acarreo en suma o prestamo (A < B) en resta sin signo.
    assign RGB_R = resultado[4];
    // Verde: sin bandera roja y al menos un 1 comun entre A y B.
    assign RGB_G = ~resultado[4] & (|res_and);
    // Azul: sin rojo ni bits comunes, con OR y XOR no nulos.
    assign RGB_B = ~resultado[4] &
                   ~(|res_and) &
                   (|res_or) &
                   (|res_xor);
endmodule
