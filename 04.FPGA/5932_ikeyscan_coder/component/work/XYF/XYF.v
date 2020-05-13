`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module XYF(
       Reset,
       Row,
       Clk,
       Valid,
       Col,
       Code
    );
input  Reset;
input  [3:0] Row;
input  Clk;
output Valid;
output [3:0] Col;
output [3:0] Code;

    wire Synchronizer_0_S_Row, GND_net, VCC_net;
    
    VCC VCC (.Y(VCC_net));
    Synchronizer Synchronizer_0 (.S_Row(Synchronizer_0_S_Row), .Row({
        Row[3], Row[2], Row[1], Row[0]}), .Clk(Clk), .Reset(Reset));
    Keypad Keypad_0 (.Code({Code[3], Code[2], Code[1], Code[0]}), .Col({
        Col[3], Col[2], Col[1], Col[0]}), .Valid(Valid), .Row({Row[3], 
        Row[2], Row[1], Row[0]}), .S_Row(Synchronizer_0_S_Row), .Clk(
        Clk), .Reset(Reset));
    GND GND (.Y(GND_net));
    
endmodule
