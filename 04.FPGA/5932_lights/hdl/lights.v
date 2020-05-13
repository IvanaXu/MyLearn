// lights.v
module paomadeng(rst,clk,sel,led);
input rst,clk;
input[1:0]sel;
output[7:0]led;
reg[7:0]led;
reg[7:0]led_r,led_r1;
reg cnt1,dir;
reg[2:0]cnt2;
reg[1:0]cnt3;

always@(posedge clk)
begin
 if(rst)begin cnt1<=0;cnt2<=0;cnt3<=0;dir<=0;end
 else
  case(sel)
   2'b00:
    begin
     led_r=8'b01010101;
     if(cnt1==0)led<=led_r;
     else led <=led_r<<1;
     cnt1<=cnt1+1;
    end
   
   2'b01:
   begin
   if(!dir)
    begin
     if(cnt2==0)
      begin 
      led_r=8'b00000001;led<=led_r;
      end
     else begin led<=(led<<1)+led_r;end

     if(cnt2==7)begin dir<=~dir;end
     cnt2<=cnt2+1;
    end

   else
    begin
     if(cnt2==0)
      begin
      led_r=8'b11111110;led<=led_r;
      end
     else begin led<=led<<1;end

     if(cnt2==7)begin dir<=~dir;end
     cnt2<=cnt2+1;
    end
   end

   2'b10:
    begin
     if(!dir)
      begin
       if(cnt3==0)begin led_r=8'b00000001;led_r1=8'b10000000;end
       else
        begin
         led_r=(led_r<<1)|led_r;
         led_r1=(led_r1>>1)|led_r1;
        end
       led<=led_r|led_r1;
       if(cnt3==3)begin dir<=~dir;end
       cnt3<=cnt3+1;
      end
     else
      begin
       if(cnt3==0)begin led_r=8'b11111110;led_r1=8'b01111111;end
       else begin led_r=led_r<<1;led_r1=led_r1>>1;end
       led<=led_r&led_r1;
       if(cnt3==3)begin dir<=~dir;end
       cnt3<=cnt3+1;
      end
    end
   default:;
  endcase
end
endmodule


   
