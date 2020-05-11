// testbench138.v
`timescale 1ns/10ps
module testbench();
reg[2:0]DataIn;reg G1,G2AN,G2BN;
wire[7:0]Dataout;

HC138 u1(DataIn,Dataout,G1,G2AN,G2BN);
initial
begin
  DataIn=0;
  repeat(20)
  #20 DataIn=$random;
end

initial
 begin
  G1=0;
  #40 G1=1;
end

initial
 begin
  G2AN=0;
  #20 G2AN=1;
end

initial
 begin
  G2BN=0;
  #40 G2BN=1;
end
endmodule