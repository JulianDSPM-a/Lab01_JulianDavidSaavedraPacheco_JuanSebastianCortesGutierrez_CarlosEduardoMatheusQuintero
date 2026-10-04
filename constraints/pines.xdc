## TestFuncional, Zybo Z7.
## Switches de la placa: SW[3:0].
set_property -dict { PACKAGE_PIN G15 IOSTANDARD LVCMOS33 } [get_ports { SW[0] }];
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { SW[1] }];
set_property -dict { PACKAGE_PIN W13 IOSTANDARD LVCMOS33 } [get_ports { SW[2] }];
set_property -dict { PACKAGE_PIN T16 IOSTANDARD LVCMOS33 } [get_ports { SW[3] }];
## Cuatro botones integrados: BTN[3:0].
set_property -dict { PACKAGE_PIN K18 IOSTANDARD LVCMOS33 } [get_ports { BTN[0] }];
set_property -dict { PACKAGE_PIN P16 IOSTANDARD LVCMOS33 } [get_ports { BTN[1] }];
set_property -dict { PACKAGE_PIN K19 IOSTANDARD LVCMOS33 } [get_ports { BTN[2] }];
set_property -dict { PACKAGE_PIN Y16 IOSTANDARD LVCMOS33 } [get_ports { BTN[3] }];
## Switches externos en Pmod JC: JC1=V15 y JC2=W15.
## Resistencias de pulldown en protoboard, 3.3 V y tierra comun.
set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33 } [get_ports { BTN[4] }];
set_property -dict { PACKAGE_PIN W15 IOSTANDARD LVCMOS33 } [get_ports { BTN[5] }];
## Cuatro LEDs verdes: bit 0 menos significativo.
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports { LED[0] }];
set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports { LED[1] }];
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS33 } [get_ports { LED[2] }];
set_property -dict { PACKAGE_PIN D18 IOSTANDARD LVCMOS33 } [get_ports { LED[3] }];
## LED RGB LD6.
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports { RGB_R }];
set_property -dict { PACKAGE_PIN F17 IOSTANDARD LVCMOS33 } [get_ports { RGB_G }];
set_property -dict { PACKAGE_PIN M17 IOSTANDARD LVCMOS33 } [get_ports { RGB_B }];
## Diseno combinacional: no existe clk y no se declara create_clock.
