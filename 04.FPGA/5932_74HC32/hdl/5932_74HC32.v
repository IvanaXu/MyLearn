// 5932_74HC32.v
module HC32(A,B,Y);
input wire[4:1]A,B;
output wire[4:1]Y;
or
gate1(Y[1],A[1],B[1]),
gate2(Y[2],A[2],B[2]),
gate3(Y[3],A[3],B[3]),
gate4(Y[4],A[4],B[4]);//74HC32 或 门级风格
endmodule