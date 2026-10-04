## Smoke test Semaforo: solo puertos existentes en src/semaforo.v.
## Zybo Z7, reloj de 125 MHz y LED RGB LD6.
set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; # Rojo
set_property -dict { PACKAGE_PIN F17 IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; # Verde
set_property -dict { PACKAGE_PIN M17 IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; # Azul
