`timescale 1ns/1ns
module testbench;
reg clk,reset;
wire[7:0]seg;
wire[3:0]sl;
wire red1,green1,yellow1,red2,green2,yellow2;
parameter DELY=20;
XYF u1(.Red1(red1),.Red2(red2),.Reset(reset),.Clk(clk),.Green1(green1),.Green2(green2),.Yellow1(yellow1),.Yellow2(yellow2),.Seg(seg),.Sl(sl));
always#(DELY/2)clk=~clk;
initial
 begin
  clk=0;reset=0;
  #(DELY*2) reset=1;
  #DELY reset=0;
  #(DELY*500000) $finish;
 end
endmodule