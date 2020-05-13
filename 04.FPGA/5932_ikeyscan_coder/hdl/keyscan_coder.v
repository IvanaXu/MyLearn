// keyscan_coder.v
module Keypad(Code,Col,Valid,Row,S_Row,Clk,Reset);
output[3:0]Code,Col;
output Valid;
input[3:0]Row;
input S_Row;
input Clk,Reset;
reg[3:0]Col,Code;
reg[5:0]current_state,next_state;
parameter S0=6'b000001,S1=6'b000010,S2=6'b000100;
parameter S3=6'b001000,S4=6'b010000,S5=6'b100000;
assign Valid=((current_state==S1)||(current_state==S2)||(current_state==S3)||(current_state==S4))&&Row;

always@(Row or Col)
 case({Row,Col})
  8'b0001_0001:Code=0;
  8'b0001_0010:Code=1;
  8'b0001_0100:Code=2;
  8'b0001_1000:Code=3;
  8'b0010_0001:Code=4;
  8'b0010_0010:Code=5;
  8'b0010_0100:Code=6;
  8'b0010_1000:Code=7;
  8'b0100_0001:Code=8;
  8'b0100_0010:Code=9;
  8'b0100_0100:Code=10;
  8'b0100_1000:Code=11;
  8'b1000_0001:Code=12;
  8'b1000_0010:Code=13;
  8'b1000_0100:Code=14;
  8'b1000_1000:Code=15;
 default:Code=0;
endcase

always@(posedge Clk or posedge Reset)
 if(Reset)current_state<=S0;
 else current_state<=next_state;

always@(current_state or S_Row or Row)
 begin
  next_state=current_state;
  Col=0;
  case(current_state)
   S0:
    begin
     Col=15;
     if(S_Row)next_state=S1;
    end
   S1:
    begin
     Col=1;
      if(S_Row)next_state=S5;
      else next_state=S2;
    end
   S2:
    begin
     Col=2;
      if(S_Row)next_state=S5;
      else next_state=S3;
    end
   S3:
    begin
     Col=4;
      if(S_Row)next_state=S5;
      else next_state=S4;
    end
   S4:
    begin
     Col=8;
      if(S_Row)next_state=S5;
      else next_state=S0;
    end
   S5:
    begin
     Col=15;
      if(Row==0)next_state=S0;
    end
  endcase
 end
endmodule


