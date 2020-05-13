// 5932_74HC283.v
module HC283(sum,cout,a,b,cin,shiftedcarry);
output[3:0]sum;
output[4:0]shiftedcarry;
output cout;
input[3:0]a,b;
input cin;
reg[3:0]carrychain;
wire[3:0]g=a&b;
wire[3:0]p=a^b;

always@(a or b or cin or p or g)
 begin:carry_generation
  integer i;
  carrychain[0]=g[0]+(p[0]&cin);
  for(i=1;i<=3;i=i+1)
   carrychain[i]=g[i]|(p[i]&carrychain[i-1]);
 end
wire[4:0]shiftedcarry={carrychain,cin};
wire[3:0]sum=p^shiftedcarry;
wire cout=shiftedcarry[4];
endmodule