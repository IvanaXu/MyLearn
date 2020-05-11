// textbench194.v
`timescale 1ns/1ns
module testbench;
reg MR,CP,DSR,DSL;
reg[1:0]S;reg[0:3]D;
wire[0:3]Q;

parameter clock_period=20;
always#(clock_period/2)CP=~CP;

initial
 begin
  D=0;DSR=0;DSL=0;CP=0;
  repeat(20)
   #20 begin D=$random;DSR=$random;DSL=$random;end
 end

initial
 #400 $finish;

initial
 begin
  MR=0;
  #20 MR=1;
 end
initial
 repeat(20)
  begin
  S=2'b00;
  #20 S=2'b01;
  #20 S=2'b10;
  #20 S=2'b11;
  #20;
  end

HC194 u1(MR,S,CP,DSR,DSL,D,Q);
endmodule 