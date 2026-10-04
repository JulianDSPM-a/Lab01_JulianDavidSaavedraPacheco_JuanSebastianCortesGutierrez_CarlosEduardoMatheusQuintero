`timescale 1ns / 1ps

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

    // 1. Construccion de operandos (usamos BTN[5:2] y SW[3:0])
    // assign A[3] = SW[3] ^ BTN[5];
    // assign A[2] = SW[2] | BTN[4];
    // assign A[1] = SW[1] & BTN[5]; 
    // assign A[0] = SW[0] ^ BTN[4];

    // assign B_temp[3] = SW[0] ^ BTN[3];
    // assign B_temp[2] = SW[1] | BTN[2];
    // assign B_temp[1] = SW[2] & BTN[3];
    // assign B_temp[0] = SW[3] ^ BTN[2];

    assign A= SW[3:0];
    assign B_temp= BTN[3:0];    

    // BTN[1] invierte el operando B 
    assign B = BTN[4] ? ~B_temp : B_temp;

    // 2. Operaciones logicas
    assign res_and = A & B;
    assign res_or  = A | B;
    assign res_xor = A ^ B;

    // 3. Operacion aritmetica (BTN[0] selecciona suma o resta)
    assign resultado = BTN[5] ? (A - B) : (A + B);

    // 4. Asignacion a los LEDs verdes
    assign LED = resultado[3:0];

    // 5. Asignacion del RGB (Solo se enciende un color a la vez)
    assign RGB_R = resultado[4];

    assign RGB_G = ~resultado[4] & (|res_and);

    assign RGB_B = ~resultado[4] & 
                   ~(|res_and)   & 
                   (|res_or)     & 
                   (|res_xor);

endmodule