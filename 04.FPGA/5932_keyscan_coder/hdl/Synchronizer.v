// Synchronizer.v
module Synchronizer(S_Row,Row,Clk,Reset);
output S_Row;
input[3:0]Row;
input Clk,Reset;
reg A_Row,S_Row;

always@(posedge Clk or posedge Reset)
 begin
 if(Reset)
  begin A_Row<=0;S_Row<=0;end
 else
  begin 
   A_Row<=(Row[0]||Row[1]||Row[2]||Row[3]);
   S_Row<=A_Row;
   end
  end
endmodule

