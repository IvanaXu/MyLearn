// one_second_clk.v
module one_seond_clk(Reset,Clk,Count,Cout);
input Reset,Clk;
output reg[9:0]Count;
output reg Cout;
always@(posedge Clk)
 if(Reset)begin Count=0;Cout=0;end
 else if(Count==999)begin Count=0;Cout=1;end
 else begin Count=Count+1;Cout=0;end
endmodule