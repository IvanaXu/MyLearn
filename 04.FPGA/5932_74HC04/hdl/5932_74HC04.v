// 5932_74HC04.v
module HC04(A,Y);
input wire[6:1]A;
output wire[6:1]Y;
not 
gate1(Y[1],A[1]),
gate2(Y[2],A[2]),
gate3(Y[3],A[3]),
gate4(Y[4],A[4]),
gate5(Y[5],A[5]),
gate6(Y[6],A[6]);
//74HC04 非 门级风格
endmodule