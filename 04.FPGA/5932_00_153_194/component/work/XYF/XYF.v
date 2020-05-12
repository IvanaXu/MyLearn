`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module XYF(
       A,
       B,
       I1,
       I2,
       S1,
       S2,
       E1N,
       E2N,
       MR,
       D,
       DSR,
       S,
       DSL,
       CP,
       Q,
       Y,
       Y1,
       Y2
    );
input  [4:1] A;
input  [4:1] B;
input  [0:3] I1;
input  [0:3] I2;
input  S1;
input  S2;
input  E1N;
input  E2N;
input  MR;
input  [0:3] D;
input  DSR;
input  [1:0] S;
input  DSL;
input  CP;
output [0:3] Q;
output [4:1] Y;
output Y1;
output Y2;

    wire GND_net, VCC_net;
    
    VCC VCC (.Y(VCC_net));
    GND GND (.Y(GND_net));
    HC194 HC194_0 (.MR(MR), .S({S[1], S[0]}), .CP(CP), .DSR(DSR), .DSL(
        DSL), .D({D[0], D[1], D[2], D[3]}), .Q({Q[0], Q[1], Q[2], Q[3]})
        );
    HC153 HC153_0 (.I1({I1[0], I1[1], I1[2], I1[3]}), .I2({I2[0], 
        I2[1], I2[2], I2[3]}), .S1(S1), .S2(S2), .E1N(E1N), .E2N(E2N), 
        .Y1(Y1), .Y2(Y2));
    HC00 HC00_0 (.A({A[4], A[3], A[2], A[1]}), .B({B[4], B[3], B[2], 
        B[1]}), .Y({Y[4], Y[3], Y[2], Y[1]}));
    
endmodule
