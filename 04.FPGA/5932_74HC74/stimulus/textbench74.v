// textbench74.v
`timescale 1ns/1ns
module testbench;
reg [1:2]D,Clk,SD,RD;
wire [1:2]Q,QN;
parameter clock_period=20;
always#(clock_period/2)Clk=~Clk;

initial
 begin
  D=0;Clk=0;
  repeat(20)
   #20 D=$random;
 end

initial
 #400 $finish;

initial
 begin
  SD=2'b00;RD=2'b00;
  #20 SD=2'b00;RD=2'b11;
  #20 SD=2'b11;RD=2'b00;
  #20 SD=2'b11;RD=2'b11;
 end

HC74 u1(D,Clk,Q,SD,RD,QN);
endmodule