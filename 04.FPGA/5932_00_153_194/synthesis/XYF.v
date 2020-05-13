`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC00(
       A_c,
       B_c,
       un1_Y
    );
input  [4:1] A_c;
input  [4:1] B_c;
output [3:0] un1_Y;

    wire GND, VCC, GND_0, VCC_0;
    
    VCC VCC_i_0 (.Y(VCC_0));
    OR2B \un1_Y[3]  (.A(B_c[4]), .B(A_c[4]), .Y(un1_Y[3]));
    OR2B \un1_Y[1]  (.A(B_c[2]), .B(A_c[2]), .Y(un1_Y[1]));
    GND GND_i_0 (.Y(GND_0));
    OR2B \un1_Y[0]  (.A(B_c[1]), .B(A_c[1]), .Y(un1_Y[0]));
    VCC VCC_i (.Y(VCC));
    OR2B \un1_Y[2]  (.A(B_c[3]), .B(A_c[3]), .Y(un1_Y[2]));
    GND GND_i (.Y(GND));
    
endmodule


module HC153(
       I2_c,
       I1_c,
       S2_c,
       N_6,
       N_4,
       E2N_c,
       E1N_c,
       S1_c
    );
input  [3:0] I2_c;
input  [3:0] I1_c;
input  S2_c;
output N_6;
output N_4;
input  E2N_c;
input  E1N_c;
input  S1_c;

    wire Y1_iv_i_0_net_1, Y1_iv_i_10_tz_net_1, Y2_iv_i_0_net_1, 
        Y2_iv_i_7_tz_net_1, Y2_iv_i_8_tz_net_1, Y1_iv_i_11_tz_net_1, 
        GND, VCC, GND_0, VCC_0;
    
    OA1B Y2_iv_i (.A(Y2_iv_i_8_tz_net_1), .B(S1_c), .C(Y2_iv_i_0_net_1)
        , .Y(N_4));
    MX2 Y1_iv_i_11_tz (.A(I1_c[0]), .B(I1_c[1]), .S(S2_c), .Y(
        Y1_iv_i_11_tz_net_1));
    OA1B Y1_iv_i (.A(Y1_iv_i_11_tz_net_1), .B(S1_c), .C(
        Y1_iv_i_0_net_1), .Y(N_6));
    AO1A Y2_iv_i_0 (.A(Y2_iv_i_7_tz_net_1), .B(S1_c), .C(E2N_c), .Y(
        Y2_iv_i_0_net_1));
    VCC VCC_i_0 (.Y(VCC_0));
    VCC VCC_i (.Y(VCC));
    MX2 Y1_iv_i_10_tz (.A(I1_c[2]), .B(I1_c[3]), .S(S2_c), .Y(
        Y1_iv_i_10_tz_net_1));
    GND GND_i_0 (.Y(GND_0));
    GND GND_i (.Y(GND));
    MX2 Y2_iv_i_8_tz (.A(I2_c[0]), .B(I2_c[1]), .S(S2_c), .Y(
        Y2_iv_i_8_tz_net_1));
    AO1A Y1_iv_i_0 (.A(Y1_iv_i_10_tz_net_1), .B(S1_c), .C(E1N_c), .Y(
        Y1_iv_i_0_net_1));
    MX2 Y2_iv_i_7_tz (.A(I2_c[2]), .B(I2_c[3]), .S(S2_c), .Y(
        Y2_iv_i_7_tz_net_1));
    
endmodule


module HC194(
       D_c,
       Q_c,
       S_c,
       MR_c,
       CP_c,
       DSR_c,
       DSL_c
    );
input  [3:0] D_c;
output [3:0] Q_c;
input  [1:0] S_c;
input  MR_c;
input  CP_c;
input  DSR_c;
input  DSL_c;

    wire QAUX12, N_6, N_7, \QAUX_5[3] , QAUX_5_sn_N_2, 
        \QAUX_RNO[0]_net_1 , GND, VCC, GND_0, VCC_0;
    
    MX2 \QAUX_RNO[3]  (.A(D_c[3]), .B(N_6), .S(QAUX_5_sn_N_2), .Y(
        \QAUX_5[3] ));
    NOR2 \QAUX_RNO_0[3]  (.A(S_c[1]), .B(S_c[0]), .Y(QAUX12));
    OR2B QAUX_5_sn_m1 (.A(S_c[1]), .B(S_c[0]), .Y(QAUX_5_sn_N_2));
    MX2 \QAUX_RNO_1[3]  (.A(DSL_c), .B(Q_c[3]), .S(S_c[0]), .Y(N_6));
    MX2 \QAUX_RNO_0[0]  (.A(Q_c[0]), .B(DSR_c), .S(S_c[0]), .Y(N_7));
    DFN1C0 \QAUX[0]  (.D(\QAUX_RNO[0]_net_1 ), .CLK(CP_c), .CLR(MR_c), 
        .Q(Q_c[0]));
    VCC VCC_i_0 (.Y(VCC_0));
    DFN1E0C0 \QAUX[1]  (.D(D_c[1]), .CLK(CP_c), .CLR(MR_c), .E(
        QAUX_5_sn_N_2), .Q(Q_c[1]));
    VCC VCC_i (.Y(VCC));
    DFN1E0C0 \QAUX[3]  (.D(\QAUX_5[3] ), .CLK(CP_c), .CLR(MR_c), .E(
        QAUX12), .Q(Q_c[3]));
    GND GND_i_0 (.Y(GND_0));
    GND GND_i (.Y(GND));
    MX2 \QAUX_RNO[0]  (.A(D_c[0]), .B(N_7), .S(QAUX_5_sn_N_2), .Y(
        \QAUX_RNO[0]_net_1 ));
    DFN1E0C0 \QAUX[2]  (.D(D_c[2]), .CLK(CP_c), .CLR(MR_c), .E(
        QAUX_5_sn_N_2), .Q(Q_c[2]));
    
endmodule


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

    wire GND, VCC, \un1_Y[0] , \un1_Y[1] , \un1_Y[2] , \un1_Y[3] , 
        \HC153_0.N_4 , \HC153_0.N_6 , \A_c[1] , \A_c[2] , \A_c[3] , 
        \A_c[4] , \B_c[1] , \B_c[2] , \B_c[3] , \B_c[4] , \I1_c[3] , 
        \I1_c[2] , \I1_c[1] , \I1_c[0] , \I2_c[3] , \I2_c[2] , 
        \I2_c[1] , \I2_c[0] , S1_c, S2_c, E1N_c, E2N_c, MR_c, \D_c[3] , 
        \D_c[2] , \D_c[1] , \D_c[0] , DSR_c, \S_c[0] , \S_c[1] , DSL_c, 
        CP_c, \Q_c[3] , \Q_c[2] , \Q_c[1] , \Q_c[0] , GND_0, VCC_0;
    
    INBUF \B_pad[3]  (.PAD(B[3]), .Y(\B_c[3] ));
    OUTBUF \Y_pad[4]  (.D(\un1_Y[3] ), .PAD(Y[4]));
    INBUF \I2_pad[3]  (.PAD(I2[3]), .Y(\I2_c[3] ));
    INBUF E1N_pad (.PAD(E1N), .Y(E1N_c));
    INBUF \I2_pad[1]  (.PAD(I2[1]), .Y(\I2_c[1] ));
    INBUF \I2_pad[2]  (.PAD(I2[2]), .Y(\I2_c[2] ));
    INBUF \B_pad[4]  (.PAD(B[4]), .Y(\B_c[4] ));
    OUTBUF Y1_pad (.D(\HC153_0.N_6 ), .PAD(Y1));
    INBUF \S_pad[1]  (.PAD(S[1]), .Y(\S_c[1] ));
    INBUF S2_pad (.PAD(S2), .Y(S2_c));
    VCC VCC_i (.Y(VCC));
    INBUF \I1_pad[2]  (.PAD(I1[2]), .Y(\I1_c[2] ));
    INBUF \B_pad[2]  (.PAD(B[2]), .Y(\B_c[2] ));
    INBUF DSR_pad (.PAD(DSR), .Y(DSR_c));
    OUTBUF \Q_pad[2]  (.D(\Q_c[2] ), .PAD(Q[2]));
    INBUF E2N_pad (.PAD(E2N), .Y(E2N_c));
    INBUF \I1_pad[0]  (.PAD(I1[0]), .Y(\I1_c[0] ));
    INBUF \D_pad[1]  (.PAD(D[1]), .Y(\D_c[1] ));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    HC00 HC00_0 (.A_c({\A_c[4] , \A_c[3] , \A_c[2] , \A_c[1] }), .B_c({
        \B_c[4] , \B_c[3] , \B_c[2] , \B_c[1] }), .un1_Y({\un1_Y[3] , 
        \un1_Y[2] , \un1_Y[1] , \un1_Y[0] }));
    HC153 HC153_0 (.I2_c({\I2_c[3] , \I2_c[2] , \I2_c[1] , \I2_c[0] }), 
        .I1_c({\I1_c[3] , \I1_c[2] , \I1_c[1] , \I1_c[0] }), .S2_c(
        S2_c), .N_6(\HC153_0.N_6 ), .N_4(\HC153_0.N_4 ), .E2N_c(E2N_c), 
        .E1N_c(E1N_c), .S1_c(S1_c));
    INBUF \I1_pad[1]  (.PAD(I1[1]), .Y(\I1_c[1] ));
    INBUF \B_pad[1]  (.PAD(B[1]), .Y(\B_c[1] ));
    GND GND_i (.Y(GND));
    INBUF MR_pad (.PAD(MR), .Y(MR_c));
    INBUF \D_pad[2]  (.PAD(D[2]), .Y(\D_c[2] ));
    OUTBUF \Y_pad[2]  (.D(\un1_Y[1] ), .PAD(Y[2]));
    OUTBUF \Q_pad[3]  (.D(\Q_c[3] ), .PAD(Q[3]));
    OUTBUF \Y_pad[3]  (.D(\un1_Y[2] ), .PAD(Y[3]));
    INBUF DSL_pad (.PAD(DSL), .Y(DSL_c));
    OUTBUF Y2_pad (.D(\HC153_0.N_4 ), .PAD(Y2));
    OUTBUF \Q_pad[1]  (.D(\Q_c[1] ), .PAD(Q[1]));
    INBUF S1_pad (.PAD(S1), .Y(S1_c));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    OUTBUF \Q_pad[0]  (.D(\Q_c[0] ), .PAD(Q[0]));
    INBUF \D_pad[0]  (.PAD(D[0]), .Y(\D_c[0] ));
    INBUF \I1_pad[3]  (.PAD(I1[3]), .Y(\I1_c[3] ));
    INBUF \A_pad[4]  (.PAD(A[4]), .Y(\A_c[4] ));
    INBUF \S_pad[0]  (.PAD(S[0]), .Y(\S_c[0] ));
    CLKBUF CP_pad (.PAD(CP), .Y(CP_c));
    OUTBUF \Y_pad[1]  (.D(\un1_Y[0] ), .PAD(Y[1]));
    INBUF \I2_pad[0]  (.PAD(I2[0]), .Y(\I2_c[0] ));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    INBUF \D_pad[3]  (.PAD(D[3]), .Y(\D_c[3] ));
    HC194 HC194_0 (.D_c({\D_c[3] , \D_c[2] , \D_c[1] , \D_c[0] }), 
        .Q_c({\Q_c[3] , \Q_c[2] , \Q_c[1] , \Q_c[0] }), .S_c({\S_c[1] , 
        \S_c[0] }), .MR_c(MR_c), .CP_c(CP_c), .DSR_c(DSR_c), .DSL_c(
        DSL_c));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule
