// 5932_74HC148.v
module HC148(DataIn,EO,Dataout,EI,GS);
input [7:0]DataIn;input EI;output EO;output [2:0]Dataout;output GS;
reg [2:0]Dataout;reg EO;reg GS;integer I;

always@(DataIn or EI)
 begin:local
  if(EI)
   begin
    Dataout=7;
    EO=1;
    GS=1;
   end
  else if(DataIn==16'b11111111)
   begin
    Dataout=7;
    EO=0;
    GS=1;
   end
  else
  begin
   for(I=0;I<8;I=I+1)
    begin
     if(~DataIn[I])
      begin 
       Dataout=~I;
       EO=1;
       GS=0;
      end
    end
  end
 end
endmodule