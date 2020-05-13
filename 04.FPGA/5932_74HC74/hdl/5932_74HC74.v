// 5932_74HC74.v
module HC74(D,Clk,Q,SD,RD,QN);
input [1:2]D,Clk,SD,RD;
output [1:2]Q,QN;
reg [1:2]Q;
assign QN=~Q;

always@(posedge Clk[1] or negedge RD[1] or negedge SD[1])
 case({RD[1],SD[1]})
  2'b00:Q[1]<=1;
  2'b01:Q[1]<=0;
  2'b10:Q[1]<=1;
  2'b11:Q[1]<=D[1];
 endcase

always@(posedge Clk[2] or negedge RD[2] or negedge SD[2])
 case({RD[2],SD[2]})
  2'b00:Q[2]<=1;
  2'b01:Q[2]<=0;
  2'b10:Q[2]<=1;
  2'b11:Q[2]<=D[2];
 endcase

endmodule