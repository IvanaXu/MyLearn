// textbench161.v
`timescale 1ns/1ns
module testbench;
reg MR,CP,CEP,CET,PE;reg[0:3]D;
wire[0:3]Q;wire TC;

parameter clock_period=20;
always#(clock_period/2)CP=~CP;

initial
 begin
  MR=0;CEP=0;CET=0;PE=0;CP=0;
  #20 MR=1;CEP=1;CET=1;PE=1;
 end

initial
 begin
  D=0;
  repeat(20)
   #20 D=$random;
 end

initial
 #400 $finish;

HC161 u1(MR,CP,CEP,CET,PE,D,Q,TC);
endmodule