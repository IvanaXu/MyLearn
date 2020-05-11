// 5932_74HC00.v
module HC00(A,B,Y);
input [4:1]A,B;
output [4:1]Y;
assign Y=~(A&B);//74HC00 与非 数据流风格
endmodule