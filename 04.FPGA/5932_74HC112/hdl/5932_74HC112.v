// 5932_74HC112.v
module HC112(J,K,Clk,SD,RD,Q,QN);
input [1:2]J,K,Clk,SD,RD;
output [1:2]Q,QN;
reg [1:2]Q;
assign QN=~Q;

always@(negedge Clk[1] or negedge RD[1] or negedge SD[1])
 case({RD[1],SD[1]})
  2'b00:Q[1]<=1;
  2'b01:Q[1]<=0;
  2'b10:Q[1]<=1;
  2'b11:
   case({J[1],K[1]})
    2'b00:Q[1]<=Q[1];
    2'b01:Q[1]<=0;
    2'b10:Q[1]<=1;
    2'b11:Q[1]<=~Q[1];
   endcase
 endcase

always@(negedge Clk[2] or negedge RD[2] or negedge SD[2])
 case({RD[2],SD[2]})
  2'b00:Q[2]<=1;
  2'b01:Q[2]<=0;
  2'b10:Q[2]<=1;
  2'b11:
   case({J[2],K[2]})
    2'b00:Q[2]<=Q[2];
    2'b01:Q[2]<=0;
    2'b10:Q[2]<=1;
    2'b11:Q[2]<=~Q[2];
   endcase
 endcase

endmodule