// 5932_74HC138.v
module HC138(DataIn,Dataout,G1,G2AN,G2BN);
input[2:0]DataIn;
input G1,G2AN,G2BN;
output[7:0]Dataout;
reg[7:0]Dataout;
wire[2:0]DataIn;
integer I;

always@(DataIn or G1 or G2AN or G2BN)
 begin
  if(~G1|~(G2AN&G2BN))
   Dataout=0;
  else
   for(I=0;I<=7;I=I+1)
    if(DataIn==I)
     Dataout[I]=0;
    else
     Dataout[I]=1;
 end
endmodule