`timescale 1ns / 1ps

module tb_semaforo;

    reg clk;
    wire [2:0] led;

    // Instancia del semáforo
    Semaforo uut (
        .clk(clk),
        .led(led)
    );

    // Generador de reloj
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Secuencia de prueba
    initial begin

        // Archivo para GTKWave
        $dumpfile("semaforo.vcd");
        $dumpvars(0, tb_semaforo);

        // Empezamos en rojo
        force uut.counter = 0;
        #20;

        // Amarillo
        force uut.counter = 80000000;
        #20;

        // Verde
        force uut.counter = 160000000;
        #20;

        // Amarillo
        force uut.counter = 240000000;
        #20;

        // Rojo nuevamente
        force uut.counter = 0;
        #20;

        // Liberamos el contador
        release uut.counter;

        #20;

        $finish;
    end

endmodule