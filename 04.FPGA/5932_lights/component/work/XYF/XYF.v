`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module XYF(
       sel_0,
       led_0,
       sel_1,
       led_1,
       sel_2,
       led_2,
       rst,
       clk
    );
input  [1:0] sel_0;
output [7:0] led_0;
input  [1:0] sel_1;
output [7:0] led_1;
input  [1:0] sel_2;
output [7:0] led_2;
input  rst;
input  clk;

    wire GND_net, VCC_net;
    
    paomadeng paomadeng_1 (.rst(rst), .clk(clk), .sel({sel_1[1], 
        sel_1[0]}), .led({led_1[7], led_1[6], led_1[5], led_1[4], 
        led_1[3], led_1[2], led_1[1], led_1[0]}));
    VCC VCC (.Y(VCC_net));
    paomadeng paomadeng_2 (.rst(rst), .clk(clk), .sel({sel_2[1], 
        sel_2[0]}), .led({led_2[7], led_2[6], led_2[5], led_2[4], 
        led_2[3], led_2[2], led_2[1], led_2[0]}));
    paomadeng paomadeng_0 (.rst(rst), .clk(clk), .sel({sel_0[1], 
        sel_0[0]}), .led({led_0[7], led_0[6], led_0[5], led_0[4], 
        led_0[3], led_0[2], led_0[1], led_0[0]}));
    GND GND (.Y(GND_net));
    
endmodule
