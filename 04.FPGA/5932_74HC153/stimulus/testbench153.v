// testbench153.v
`timescale 1ns/10ps
module testbench();
reg[0:3]I1;reg[0:3]I2;
reg S1,S2,E1N,E2N;
wire Y1,Y2;

HC153 u1(I1,I2,S1,S2,E1N,E2N,Y1,Y2);
initial
begin
 I1=0;
 repeat(20)
  #20 I1=$random;
end

initial
begin
 I2=0;
 repeat(20)
  #20 I2=$random;
end

initial
 begin
  S1=0;S2=0;
  #20 S1=0;S2=1;
  #100 S1=1;S2=0;
  #100 S1=1;S2=1;
  #100 S1=0;S2=0;
  #100;
end

initial
begin
 E1N=1;E2N=1;
 #20 E1N=0;E2N=0;
end
endmodule