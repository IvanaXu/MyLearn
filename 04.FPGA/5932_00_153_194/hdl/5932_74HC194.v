// 5932_74HC194.v
module HC194(MR,S,CP,DSR,DSL,D,Q);
input MR,CP,DSR,DSL;
input[1:0]S;input[0:3]D;
output [0:3]Q;
reg [0:3]QAUX;

always@(negedge MR or posedge CP)
 begin
  if(!MR)QAUX=0;
  else if(S==2'b00)QAUX<=QAUX;
  else if(S==2'b01)QAUX={DSR,QAUX[1:3]};
  else if(S==2'b10)QAUX={QAUX[0:2],DSL};
  else if(S==2'b11)QAUX=D;
 end
assign Q=QAUX;
endmodule