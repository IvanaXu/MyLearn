// 5932_74HC08.v
module HC08(A,B,Y);
input wire[4:1]A,B;
output wire[4:1]Y;
and
gate1(Y[1],A[1],B[1]),
gate2(Y[2],A[2],B[2]),
gate3(Y[3],A[3],B[3]),
gate4(Y[4],A[4],B[4]);//74HC08 与 门级风格
endmodule