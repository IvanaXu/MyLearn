`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC4511(
       A,
       Seg,
       LT_N,
       BI_N,
       LE
    );
input  [3:0] A;
output [7:0] Seg;
input  LT_N;
input  BI_N;
input  LE;

    wire \SM_8S[7]_net_1 , VCC, GND, SM_8S58, \SM_8S_1[5] , 
        \SM_8S_1_i_0[0]_net_1 , \SM_8S_1_i_0[1]_net_1 , 
        \SM_8S_1_i_0[3]_net_1 , N_6, N_9, N_11, \A_c[0] , \A_c[1] , 
        \A_c[2] , \A_c[3] , \SM_8S_c[0] , \SM_8S_c[1] , \SM_8S_c[2] , 
        \SM_8S_c[3] , \SM_8S_c[4] , \SM_8S_c[5] , \SM_8S_c[6] , LT_N_c, 
        BI_N_c, LE_c, N_32, N_21, N_47, N_19, N_48, N_57, N_23, N_18, 
        N_60, N_55, N_33, N_59, N_67, N_63, N_16_i, N_13, N_61, 
        un1_BI_N_1_i, \SM_8S_1_0_i_a3_0_0[2] , LT_N_c_i, \SM_8S_i[7] , 
        GND_0, VCC_0;
    
    DLN0P1C1 \SM_8S[4]  (.D(N_9), .G(LE_c), .PRE(LT_N_c_i), .CLR(
        SM_8S58), .Q(\SM_8S_c[4] ));
    NOR3B \SM_8S_1_i_0_a3_0[3]  (.A(\A_c[3] ), .B(N_18), .C(\A_c[0] ), 
        .Y(N_60));
    NOR3A \SM_8S_1_i_0_a3[1]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(N_19), 
        .Y(N_47));
    AO1B \SM_8S_1_i_i_a3[6]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(\A_c[1] ), 
        .Y(N_63));
    OUTBUF \Seg_pad[0]  (.D(\SM_8S_c[0] ), .PAD(Seg[0]));
    NOR2A BI_N_pad_RNI5SO3 (.A(LT_N_c), .B(BI_N_c), .Y(SM_8S58));
    OAI1 \SM_8S_1_i_i[4]  (.A(\A_c[0] ), .B(N_13), .C(N_61), .Y(N_9));
    OUTBUF \Seg_pad[2]  (.D(\SM_8S_c[2] ), .PAD(Seg[2]));
    NOR3 \SM_8S_1_i_0[1]  (.A(N_48), .B(N_47), .C(N_55), .Y(
        \SM_8S_1_i_0[1]_net_1 ));
    NOR2A \SM_8S_1_i_i_o2[4]  (.A(\A_c[2] ), .B(\A_c[1] ), .Y(N_13));
    XOR2 \SM_8S_1_i_0_o2[0]  (.A(\A_c[1] ), .B(\A_c[2] ), .Y(N_21));
    INBUF LT_N_pad (.PAD(LT_N), .Y(LT_N_c));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Seg_pad[1]  (.D(\SM_8S_c[1] ), .PAD(Seg[1]));
    CLKBUF LE_pad (.PAD(LE), .Y(LE_c));
    OR2B \SM_8S_RNO[7]  (.A(LE_c), .B(BI_N_c), .Y(un1_BI_N_1_i));
    OAI1 \SM_8S_1_i_i_a3[4]  (.A(\A_c[1] ), .B(\A_c[2] ), .C(\A_c[3] ), 
        .Y(N_61));
    NOR2 \SM_8S_1_i_0[0]  (.A(N_33), .B(N_32), .Y(
        \SM_8S_1_i_0[0]_net_1 ));
    INV \Seg_pad_RNO[7]  (.A(\SM_8S[7]_net_1 ), .Y(\SM_8S_i[7] ));
    DLN0P1C1 \SM_8S[6]  (.D(N_11), .G(LE_c), .PRE(LT_N_c_i), .CLR(
        SM_8S58), .Q(\SM_8S_c[6] ));
    DLN0P1C1 \SM_8S[5]  (.D(\SM_8S_1[5] ), .G(LE_c), .PRE(LT_N_c_i), 
        .CLR(SM_8S58), .Q(\SM_8S_c[5] ));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    OUTBUF \Seg_pad[5]  (.D(\SM_8S_c[5] ), .PAD(Seg[5]));
    XA1 \SM_8S_1_i_0_a3_0[0]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(N_19), 
        .Y(N_33));
    AOI1 \SM_8S_1_0_i[2]  (.A(\SM_8S_1_0_i_a3_0_0[2] ), .B(N_18), .C(
        N_57), .Y(N_6));
    NOR3C \SM_8S_1_i_0_a3[3]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(\A_c[1] )
        , .Y(N_59));
    OUTBUF \Seg_pad[7]  (.D(\SM_8S_i[7] ), .PAD(Seg[7]));
    OR3C \SM_8S_1_i_i[6]  (.A(N_63), .B(N_16_i), .C(N_67), .Y(N_11));
    INBUF BI_N_pad (.PAD(BI_N), .Y(BI_N_c));
    NOR2A \SM_8S_1_0_i_o2[2]  (.A(\A_c[0] ), .B(\A_c[1] ), .Y(N_23));
    NOR2 \SM_8S_1_i_0_a3_1[1]  (.A(N_67), .B(\A_c[3] ), .Y(N_55));
    DLN0P1C1 \SM_8S[1]  (.D(\SM_8S_1_i_0[1]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\SM_8S_c[1] ));
    INBUF \A_pad[0]  (.PAD(A[0]), .Y(\A_c[0] ));
    OR2B \SM_8S_1_i_i_a2[6]  (.A(N_13), .B(\A_c[0] ), .Y(N_67));
    GND GND_i (.Y(GND));
    DLN0P1C1 \SM_8S[3]  (.D(\SM_8S_1_i_0[3]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\SM_8S_c[3] ));
    DLN0P1C1 \SM_8S[0]  (.D(\SM_8S_1_i_0[0]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\SM_8S_c[0] ));
    XNOR2 \SM_8S_1_i_i_x2[6]  (.A(N_13), .B(\A_c[3] ), .Y(N_16_i));
    OUTBUF \Seg_pad[4]  (.D(\SM_8S_c[4] ), .PAD(Seg[4]));
    DLN0P1C1 \SM_8S[2]  (.D(N_6), .G(LE_c), .PRE(LT_N_c_i), .CLR(
        SM_8S58), .Q(\SM_8S_c[2] ));
    NOR3C \SM_8S_1_i_0_a3_0[1]  (.A(\A_c[0] ), .B(\A_c[3] ), .C(
        \A_c[1] ), .Y(N_48));
    NOR3B \SM_8S_1_0_i_a3[2]  (.A(\A_c[3] ), .B(\A_c[2] ), .C(N_23), 
        .Y(N_57));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    NOR3C \SM_8S_1_i_0_a3[0]  (.A(\A_c[0] ), .B(\A_c[3] ), .C(N_21), 
        .Y(N_32));
    DLN1P1C1 \SM_8S[7]  (.D(VCC), .G(GND), .PRE(un1_BI_N_1_i), .CLR(
        LT_N_c_i), .Q(\SM_8S[7]_net_1 ));
    NOR2A \SM_8S_1_0_0_o2[5]  (.A(\A_c[1] ), .B(\A_c[2] ), .Y(N_18));
    NOR2 \SM_8S_1_0_i_a3_0_1[2]  (.A(\A_c[0] ), .B(\A_c[3] ), .Y(
        \SM_8S_1_0_i_a3_0_0[2] ));
    INV LT_N_pad_RNIFIL2 (.A(LT_N_c), .Y(LT_N_c_i));
    OAI1 \SM_8S_1_0_0[5]  (.A(\A_c[0] ), .B(N_18), .C(N_16_i), .Y(
        \SM_8S_1[5] ));
    OUTBUF \Seg_pad[3]  (.D(\SM_8S_c[3] ), .PAD(Seg[3]));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    NOR2 \SM_8S_1_i_0_o2[1]  (.A(\A_c[3] ), .B(\A_c[1] ), .Y(N_19));
    NOR3 \SM_8S_1_i_0[3]  (.A(N_59), .B(N_33), .C(N_60), .Y(
        \SM_8S_1_i_0[3]_net_1 ));
    OUTBUF \Seg_pad[6]  (.D(\SM_8S_c[6] ), .PAD(Seg[6]));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule
