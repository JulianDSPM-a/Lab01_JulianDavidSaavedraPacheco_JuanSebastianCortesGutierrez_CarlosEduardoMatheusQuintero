`timescale 1ns / 1ps

module TestFuncional_tb;

    reg [3:0] SW;
    reg [5:0] BTN;

    wire [3:0] LED;
    wire RGB_R;
    wire RGB_G;
    wire RGB_B;

    TestFuncional uut (
        .SW(SW),
        .BTN(BTN),
        .LED(LED),
        .RGB_R(RGB_R),
        .RGB_G(RGB_G),
        .RGB_B(RGB_B)
    );

    initial begin

        $dumpfile("TestFuncional.vcd");
        $dumpvars(0, TestFuncional_tb);

        // Caso 1 (0-10 ns): A=9, B=12, suma=21 (5'h15).
        // LED=5; AND=8, OR=D, XOR=5; RGB rojo por acarreo.
        SW  = 4'b1001;
        BTN = 6'b001100;
        #10;

        // Caso 2 (10-20 ns): A=4, B_temp=13, BTN4=1 -> B=2.
        // BTN5=1: 4-2=2. AND=0, OR=6, XOR=6; RGB azul.
        SW  = 4'b0100;
        BTN = 6'b111101;
        #10;

        // Caso 3 (20-30 ns): A=0, B=10, BTN4=0, BTN5=0.
        // Suma=10 (A hexadecimal); AND=0, OR=A, XOR=A; RGB azul.
        SW  = 4'b0000;
        BTN = 6'b001010;
        #10;

        // Caso 4 (30-40 ns): A=5, B=8, BTN4=0, BTN5=1.
        // Resta=-3 -> 5'h1D; LED=D; AND=0, OR=D, XOR=D; RGB rojo.
        SW  = 4'b0101;
        BTN = 6'b101000;
        #10;

        // Caso 5 (40-60 ns): A=7, B=4, BTN4=0, BTN5=0.
        // Suma=11 (B hexadecimal); AND=4, OR=7, XOR=3; RGB verde.
        SW  = 4'b0111;
        BTN = 6'b000100;
        #10;

        #10;
        $finish;

    end

endmodule