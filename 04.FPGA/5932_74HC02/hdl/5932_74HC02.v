// 5932_74HC02.v
module HC02(A,B,Y);
input [4:1]A,B;
output [4:1]Y;
assign Y=~(A|B);//74HC02 ��� ���������
endmodule
