// com_2c.v
//8λ�����Ʋ������ɵ�·
module Com_2C(DataA,DataOut);
input[7:0]DataA;
output[7:0]DataOut;
reg[7:0]DataOut;
reg[7:0]DA;

always@(DataA)
 begin
  DA=8'b10000000;
  if(DataA[7])
   begin
    DataOut=-DataA+DA;
   end
  else
   DataOut=DataA;
 end

endmodule