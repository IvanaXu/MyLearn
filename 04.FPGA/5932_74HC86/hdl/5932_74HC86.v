// 5932_74HC86.v
module HC86(A,B,Y);
input [4:1]A,B;
output [4:1]Y;
reg [4:1]Y;
always @(A,B)   //74HC86 ��� ��Ϊ���
  Y=A^B;
endmodule