// textbench.v
`timescale 1ns/1ns
module testbench();

reg rst,clk;

reg[1:0]sel_0;
reg[1:0]sel_1;
reg[1:0]sel_2;

wire[7:0]led_0;
wire[7:0]led_1;
wire[7:0]led_2;

parameter clock_period=10;
always#(clock_period/2)clk=~clk;

initial
 begin
 rst=1;clk=0;
 #10 rst=0;
 end

initial
 begin
  sel_0=0;
  sel_1=1;
  sel_2=2;
 end

XYF u1(.rst(rst),.clk(clk),.sel_0(sel_0),.sel_1(sel_1),.sel_2(sel_2),.led_0(led_0),.led_1(led_1),.led_2(led_2));
endmodule