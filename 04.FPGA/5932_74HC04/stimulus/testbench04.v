// testbench04.v
`timescale 1ns/1ns
module testbench();
reg[6:1]a;
wire[6:1]y;
HC04 u1(a,y);
initial
begin
a=6'b000001;
#10 a=a<<1;
#10 a=a<<1;
#10 a=a<<1;
#10 a=a<<1;
#10 a=a<<1;
#10 a=a<<1;
end
endmodule