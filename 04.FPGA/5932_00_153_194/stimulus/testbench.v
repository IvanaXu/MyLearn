// testbench.v
`timescale 1ns/1ns
module testbench();

reg[4:1]a,b;
wire[4:1]y;
reg[0:3]I1;reg[0:3]I2;
reg S1,S2,E1N,E2N;
wire Y1,Y2;
reg MR,CP,DSR,DSL;
reg[1:0]S;reg[0:3]D;
wire[0:3]Q;

initial
repeat(20)
 begin
  a=4'b0000;b=4'b0001;
  #10 b=b<<1;
  #10 b=b<<1;
  #10 b=b<<1;
  a=4'b1111;b=4'b0001;
  #10 b=b<<1;
  #10 b=b<<1;
  #10 b=b<<1;
 end
//74HC00

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
//74HC153

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
//74HC194
XYF u1(.A(a),.B(b),.Y(y),.I1(I1),.I2(I2),.S1(S1),.S2(S2),.E1N(E1N),.E2N(E2N),.Y1(Y1),.Y2(Y2),.MR(MR),.S(S),.CP(CP),.DSR(DSR),.DSL(DSL),.D(D),.Q(Q));
endmodule