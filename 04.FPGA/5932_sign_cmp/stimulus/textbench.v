// textbench.v
`timescale 1ns/10ps
module testbench();
reg[7:0]ina,inb;
wire AGEB;

initial
 begin
  ina=0;
  repeat(20)
  #20 ina=$random;
 end

initial
 begin
  inb=0;
  repeat(10)
  #40 inb=$random;
 end

initial
 #400 $finish;

XYF u1(.DataA(ina),.DataB(inb),.AGEB(AGEB));

endmodule