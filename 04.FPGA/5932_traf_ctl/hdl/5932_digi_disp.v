// 5932_digi_disp.v
module dymamic_led(Seg,Sl,Clk,Reset,a,b,c,d);
input[3:0]a,b,c,d;
output[7:0]Seg;
output[3:0]Sl;
input Clk,Reset;
reg[7:0]Seg_reg;
reg[3:0]Sl_reg;
reg[3:0]Disp_dat;
reg[1:0]count;
wire LT_N,BI_N,LE;
assign LT_N=1;
assign BI_N=1;
assign LE=0;

always@(posedge Clk or posedge Reset)
 begin 
  if(Reset)
   count=0;
  else 
   count=count+1;
 end

always@(count[1:0])
 begin
  case(count[1:0])
   2'b00:Disp_dat<=a;
   2'b01:Disp_dat<=b;
   2'b10:Disp_dat<=c;
   2'b11:Disp_dat<=d;
  endcase
  case(count[1:0])
   2'b00:Sl_reg=4'b1110;
   2'b01:Sl_reg=4'b1101;
   2'b10:Sl_reg=4'b1011;
   2'b11:Sl_reg=4'b0111;
  endcase
 end
HC4511 HC4511_0(.A(Disp_dat),.Seg(Seg),.LT_N(LT_N),.BI_N(BI_N),.LE(LE));
assign Sl=Sl_reg;
endmodule

