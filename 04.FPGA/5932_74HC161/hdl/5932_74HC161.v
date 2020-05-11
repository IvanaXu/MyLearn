// 5932_74HC161.v
module HC161(MR,CP,CEP,CET,PE,D,Q,TC);
input MR,CP,CEP,CET,PE;input[0:3]D;
output[0:3]Q;output TC;
reg [0:3]QAUX;reg TC;

always@(posedge CP)
 begin
  if(!MR)
   begin QAUX<=0;TC=0;end
  else if(!PE)
   begin QAUX<=D;TC=CET&Q[3]&Q[2]&Q[1]&Q[0];end
  else if(!CEP)
   begin QAUX<=QAUX;TC=CET&Q[3]&Q[2]&Q[1]&Q[0];end
  else if(!CET)
   begin QAUX<=QAUX;TC=0;end
  else begin QAUX<=QAUX+1;TC=CET&Q[3]&Q[2]&Q[1]&Q[0];end
  if(QAUX==4'b1111)TC=1'b1;
 end
assign Q=QAUX;
endmodule