// traffic_control.v
module trattic_control(Clk,Reset,Done_NS,Done_EW,Red1,Yellow1,Green1,Red2,Yellow2,Green2,Sload_NS,Sload_EW,State_cnt);
input Clk,Reset;
input Done_NS,Done_EW;
output Red1,Yellow1,Green1,Red2,Yellow2,Green2;
output Sload_NS,Sload_EW;
output[3:0]State_cnt;

//Define the states
parameter S0=4'b0001,S1=4'b0010,S2=4'b0100,S3=4'b1000;
reg[3:0]current_state,next_state;
reg Red1,Yellow1,Green1,Red2,Yellow2,Green2;
reg Sload_NS,Sload_EW;
assign State_cnt=current_state;

//state update
always@(posedge Clk or posedge Reset)
begin
 if(Reset)
  current_state<=S0;
 else
  current_state<=next_state;
end

//Calculate the next state and the outputs
always@(current_state or Done_NS or Done_EW)
begin:fsmtr
 case(current_state)
  S0:
   begin
    if(Done_NS)next_state<=S1;
    else next_state<=S0;
   end
  S1:
   begin
    if(Done_NS)next_state<=S2;
    else next_state<=S1;
   end
  S2:
   begin
    if(Done_EW)next_state<=S3;
    else next_state<=S2;
   end
  S3:
   begin
    if(Done_EW)next_state<=S0;
    else next_state<=S3;
   end
  default:next_state<=S0;
 endcase
end
always@(*)
 begin
  Sload_NS<=1'b0;
  Sload_EW<=1'b0;
  case(current_state)
   S0:begin
    Green1<=1'b1;Yellow1<=1'b0;Red1<=1'b0;
    Green2<=1'b0;Yellow2<=1'b0;Red2<=1'b1;
    if(Done_NS)
     begin
      Sload_NS<=1'b1;
     end
    end
   S1:begin
    Green1<=1'b0;Yellow1<=1'b1;Red1<=1'b0;
    Green2<=1'b0;Yellow2<=1'b0;Red2<=1'b1;
    if(Done_NS)
     begin
      Sload_NS<=1'b1;
      Sload_EW<=1'b1;
     end
    end
   S2:begin
    Green1<=1'b0;Yellow1<=1'b0;Red1<=1'b1;
    Green2<=1'b1;Yellow2<=1'b0;Red2<=1'b0;
    if(Done_NS)
     begin
      Sload_EW<=1'b1;
     end
    end
   S3:begin
    Green1<=1'b0;Yellow1<=1'b0;Red1<=1'b1;
    Green2<=1'b0;Yellow2<=1'b1;Red2<=1'b0;
    if(Done_NS)
     begin
      Sload_NS<=1'b1;
      Sload_EW<=1'b1;
     end
    end
   default:
    begin
     Green1<=1'b1;Yellow1<=1'b0;Red1<=1'b0;
     Green2<=1'b0;Yellow2<=1'b0;Red2<=1'b1;
     Sload_NS<=1'b1;
     Sload_EW<=1'b1;
     end
  endcase
 end
endmodule













