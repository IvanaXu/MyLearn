// 5932_74HC4511.v
module HC4511(A,Seg,LT_N,BI_N,LE);
input LT_N,BI_N,LE;
input[3:0]A;
output[7:0]Seg;
reg[7:0]SM_8S;
assign Seg=SM_8S;

always@(A or LT_N or  BI_N or LE )
 begin
  if(!LT_N)SM_8S=8'b11111111;
  else if(!BI_N)SM_8S=8'b00000000;
  else if(LE)SM_8S=SM_8S;
  else
   case(A)
    4'd0:SM_8S=8'b00111111;
    4'd1:SM_8S=8'b00000110;
    4'd2:SM_8S=8'b01011011;
    4'd3:SM_8S=8'b01001111;
    4'd4:SM_8S=8'b01100110;
    4'd5:SM_8S=8'b01101101;
    4'd6:SM_8S=8'b01111101;
    4'd7:SM_8S=8'b00000111;
    4'd8:SM_8S=8'b01111111;
    4'd9:SM_8S=8'b01101111;
    4'd10:SM_8S=8'b01110111;
    4'd11:SM_8S=8'b01111100;
    4'd12:SM_8S=8'b00111001;
    4'd13:SM_8S=8'b01011110;
    4'd14:SM_8S=8'b01111001;
    4'd15:SM_8S=8'b01110001;
    default:;
  endcase
 end
endmodule


