// BIN_TO_BCD.v
module BIN_to_BCD(Data,Units,Tens,Hundreds);
input[7:0]Data;
output[3:0]Units;
output[3:0]Tens;
output[3:0]Hundreds;
reg[3:0]units_r,tens_r,hundreds_r;
reg[7:0]dat_r;
reg[11:0]temp;
integer i;
assign Units=units_r;
assign Tens=tens_r;
assign Hundreds=hundreds_r;
always@(Data)
 begin
  dat_r=Data;
  temp=0;
  for(i=0;i<7;i=i+1)
   begin
    temp={temp[10:0],dat_r[7]};
    if(temp[3:0]>4'd4)
     temp[3:0]=temp[3:0]+4'd3;
    if(temp[7:4]>4'd4)
     temp[7:4]=temp[7:4]+4'd3;
    if(temp[11:8]>4'd4)
     temp[11:8]=temp[11:8]+4'd3;
    dat_r=dat_r<<1;
    {hundreds_r,tens_r,units_r}={temp[10:0],Data[0]};
   end
  end
endmodule