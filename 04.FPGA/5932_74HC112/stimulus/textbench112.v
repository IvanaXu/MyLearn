// textbench112.v
`timescale 1ns/1ns
module testbench;
reg [1:2]J,K,Clk,SD,RD;
wire [1:2]Q,QN;
parameter clock_period=20;
always#(clock_period/2)Clk=~Clk;

initial
 begin
  J=0;K=0;Clk=0;
//repeat(20)#20 {J,K}=$random;
  #60 J=0;K=0;
  #20 J=0;K=1;
  #20 J=0;K=2;
  #20 J=0;K=3;
  #20 J=1;K=0;
  #20 J=1;K=1;
  #20 J=1;K=2;
  #20 J=1;K=3;
  #20 J=2;K=0;
  #20 J=2;K=1;
  #20 J=2;K=2;
  #20 J=2;K=3;
  #20 J=3;K=0;
  #20 J=3;K=1;
  #20 J=3;K=2;
  #20 J=3;K=3;
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

HC112 u1(J,K,Clk,SD,RD,Q,QN);
endmodule