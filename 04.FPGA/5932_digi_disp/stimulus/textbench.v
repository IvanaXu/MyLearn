// textbench.v
`timescale 1ns/1ns
module testbench();
reg clk,reset;
wire[7:0]seg;
wire[3:0]sl;
parameter DELY=20;
dymamic_led u1(.Clk(clk),.Reset(reset),.Seg(seg),.Sl(sl));

always#(DELY/2)clk=~clk;
initial
 begin 
  clk=0;reset=0;
  #(DELY*2) reset=1;
  #DELY reset=0;
  #(DELY*200) $finish;
 end
endmodule