// testbench.v
module testbench;
wire[3:0]code,col,row;
wire valid;
reg clock,reset;
reg[15:0]key;
integer j,k;
reg[39:0]pressed;
parameter[39:0]Key_0="Key_0";
parameter[39:0]Key_1="Key_1";
parameter[39:0]Key_2="Key_1";
parameter[39:0]Key_3="Key_3";
parameter[39:0]Key_4="Key_4";
parameter[39:0]Key_5="Key_5";
parameter[39:0]Key_6="Key_6";
parameter[39:0]Key_7="Key_7";
parameter[39:0]Key_8="Key_8";
parameter[39:0]Key_9="Key_9";
parameter[39:0]Key_A="Key_A";
parameter[39:0]Key_B="Key_B";
parameter[39:0]Key_C="Key_C";
parameter[39:0]Key_D="Key_D";
parameter[39:0]Key_E="Key_E";
parameter[39:0]Key_F="Key_F";
parameter[39:0]None="None";

always@(key)
 begin
  case(key)
   16'h0000:pressed=None;
   16'h0001:pressed=Key_0;
   16'h0002:pressed=Key_1;
   16'h0004:pressed=Key_2;
   16'h0008:pressed=Key_3;
   16'h0010:pressed=Key_4;
   16'h0020:pressed=Key_5;
   16'h0040:pressed=Key_6;
   16'h0080:pressed=Key_7;
   16'h0100:pressed=Key_8;
   16'h0200:pressed=Key_9;
   16'h0400:pressed=Key_A;
   16'h0800:pressed=Key_B;
   16'h1000:pressed=Key_C;
   16'h2000:pressed=Key_D;
   16'h4000:pressed=Key_E;
   16'h8000:pressed=Key_F;
   default:pressed=None;
  endcase
 end
XYF u1(.Code(code),.Col(col),.Valid(valid),.Row(row),.Clk(clk),.Reset(reset));
Row_Signal M2(.row(row),.key(key),.col(col));

initial #2000$finish;
 initial
  begin
   clock=0;
   forever
    #5 clock=~clock;
   end
 initial
  begin reset=1;#10 reset=0;end
 initial
  begin
   for(k=0;k<=1;k=k+1)
    begin
     key=0;
     #25 for(j=0;j<=16;j=j+1)
     begin #20 key[j]=1;#60 key=0;end
    end
  end
endmodule

module Row_Signal(row,key,col);
output[3:0]row;
input[15:0]key;
input[3:0]col;
reg[3:0]row;
always@(key or col)
 begin
  row[0]=key[0]&&col[0]||key[1]&&col[1]||key[2]&&col[2]||key[3]&&col[3];
  row[1]=key[4]&&col[0]||key[5]&&col[1]||key[6]&&col[2]||key[7]&&col[3];
  row[2]=key[8]&&col[0]||key[9]&&col[1]||key[10]&&col[2]||key[11]&&col[3];
  row[3]=key[12]&&col[0]||key[13]&&col[1]||key[14]&&col[2]||key[15]&&col[3];
 end
endmodule


