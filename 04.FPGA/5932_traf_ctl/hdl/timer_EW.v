// timer_EW.v
module timer_EW(Clk,Reset,Ld,En,State,Q_NS,Done_NS);
input Clk,Reset,Ld,En;
input[3:0]State;
output[7:0]Q_NS;
output Done_NS;
reg[7:0]Q_NS;
parameter red_NS=8'h3b,green_NS=8'h36,yellow_NS=8'h04;
parameter St0=4'b0001,St1=4'b0010,St2=4'b0100,St3=4'b1000;
assign Done_NS=~(|Q_NS)&&En;
always@(posedge Clk)
 if(Reset)Q_NS<=green_NS;
 else if(Ld)
  case(State)
   St0:Q_NS<=red_NS;
   St1:Q_NS<=green_NS;
   St2:Q_NS<=yellow_NS;
   St3:Q_NS<=8'h00;
   default:Q_NS<=8'h00;
  endcase
 else if(En)
  begin
   Q_NS<=Q_NS-1;
  end
endmodule