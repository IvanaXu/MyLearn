// testbench4511.v
`timescale 1ns/10ps
module testbench();
reg LT_N,BI_N,LE;
reg[3:0]A;
wire[7:0]Seg;

HC4511 u1(A,Seg,LT_N,BI_N,LE);
initial
 begin
  A=0;
  repeat(20)
  #20 A=$random;
 end

initial
 begin
  LT_N=0;BI_N=0;LE=1;
  #20 LT_N=1;BI_N=1;LE=0;
 end
endmodule