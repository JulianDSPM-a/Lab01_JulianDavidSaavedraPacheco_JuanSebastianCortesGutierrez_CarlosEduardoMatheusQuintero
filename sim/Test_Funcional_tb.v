`timescale 1ns / 1ps

module TestFuncional_tb;

    // Entradas
    reg [3:0] SW;
    reg [5:0] BTN;

    // Salidas
    wire [3:0] LED;
    wire RGB_R;
    wire RGB_G;
    wire RGB_B;

    // Instancia del circuito
    TestFuncional uut (
        .SW(SW),
        .BTN(BTN),
        .LED(LED),
        .RGB_R(RGB_R),
        .RGB_G(RGB_G),
        .RGB_B(RGB_B)
    );

    initial begin

        // Archivo para GTKWave
        $dumpfile("TestFuncional.vcd");
        $dumpvars(0, TestFuncional_tb);


        // =================================================
        // CASO 1: SUMA
        // =================================================
        // A = 9
        // B = 3
        //
        // 9 + 3 = 12
        //
        // A       = 1001
        // B       = 0011
        // Resultado = 01100
        //
        // res_and = 0001
        // resultado[4] = 0
        //
        // RGB_G = ~resultado[4] & |res_and
        // RGB_G = 1
        //
        // Se enciende VERDE
        // =================================================

        SW  = 4'b1001;
        BTN = 6'b000011;
        #10;


        // =================================================
        // CASO 2: RESTA
        // =================================================
        // A = 4
        // B = 15
        //
        // 4 - 15 = -11
        //
        // En 5 bits:
        // -11 = 10101
        //
        // resultado[4] = 1
        //
        // RGB_R = 1
        //
        // Se enciende ROJO
        // =================================================

        SW  = 4'b0100;
        BTN = 6'b101111;
        #10;


        // =================================================
        // CASO 3: COMPLEMENTO DE B
        // =================================================
        // A = 0
        // B = 2
        //
        // BTN[4] = 1 -> se invierte B
        //
        // B = 0010
        // ~B = 1101
        //
        // 0 + 13 = 13
        //
        // Resultado = 01101
        //
        // res_and = 0000
        // res_or  = 1101
        // res_xor = 1101
        //
        // RGB_B = 1
        //
        // Se enciende AZUL
        // =================================================

        SW  = 4'b0000;
        BTN = 6'b010010;
        #10;


        // =================================================
        // CASO 4: SUMA 5 + 10
        // =================================================
        // A = 5
        // B = 10
        //
        // 5 + 10 = 15
        //
        // Resultado = 01111
        //
        // resultado[4] = 0
        //
        // res_and = 0000
        // res_or  = 1111
        // res_xor = 1111
        //
        // Se enciende AZUL
        // =================================================

        SW  = 4'b0101;
        BTN = 6'b001010;
        #10;


        // =================================================
        // CASO 5: SUMA 7 + 1
        // =================================================
        // A = 7
        // B = 1
        //
        // 7 + 1 = 8
        //
        // Resultado = 01000
        //
        // res_and = 0001
        // resultado[4] = 0
        //
        // RGB_G = 1
        //
        // Se enciende VERDE
        // =================================================

        SW  = 4'b0111;
        BTN = 6'b000001;
        #10;


        // Fin de la simulación
        #10;
        $finish;

    end

endmodule