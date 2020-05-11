// testbench283.v
`timescale 1ns/10ps
module testbench();
reg[3:0]a,b;reg cin; 
wire[3:0]sum;
wire[4:0]shiftedcarry;
wire cout;

HC283 u1(sum,cout,a,b,cin,shiftedcarry);
initial
begin
  a=0;
  repeat(20)
   #20 a=$random;
end

initial
begin
  b=0;
  repeat(20)
   #20 b=$random;
end

initial
begin
  cin=0;
   #200 cin=1;
end
endmodule