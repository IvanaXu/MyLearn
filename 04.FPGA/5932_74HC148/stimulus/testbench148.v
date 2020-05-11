// testbench148.v
`timescale 1ns/10ps
module testbench();
reg[7:0]DataIn;reg EI;
wire[2:0]Dataout;

HC148 u1(DataIn,EO,Dataout,EI,GS);
initial
begin
  DataIn=0;
  repeat(20)
  #20 DataIn=$random;
end

initial
 begin
  EI=1;
  #20 EI=0;
 end
endmodule