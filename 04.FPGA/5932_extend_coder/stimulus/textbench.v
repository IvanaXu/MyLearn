// textbench.v
`timescale 1ns/1ns
module testbench();
reg[7:0]datain,datain_0;
reg ei;
reg[15:0]in,invec;
wire[7:0]seg;

XYF u1(.DataIn(datain),.DataIn_0(datain_0),.EI(ei),.Seg(seg));

initial
 begin
  ei=0;
  in=16'b0000000000000001;
  repeat(17)
   begin
    invec=~in;
    {datain,datain_0}=invec;
    #20;
    in=in<<1;
   end
  end
endmodule