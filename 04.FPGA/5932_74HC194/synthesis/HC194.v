`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC194(
       MR,
       S,
       CP,
       DSR,
       DSL,
       D,
       Q
    );
input  MR;
input  [1:0] S;
input  CP;
input  DSR;
input  DSL;
input  [0:3] D;
output [0:3] Q;

    wire \QAUX_5[0]_net_1 , GND, VCC, MR_c, \S_c[0] , \S_c[1] , CP_c, 
        DSR_c, DSL_c, \D_c[3] , \D_c[2] , \D_c[1] , \D_c[0] , 
        \QAUX_c[3] , \QAUX_c[2] , \QAUX_c[1] , \QAUX_c[0] , 
        QAUX12_net_1, QAUX_5_sn_N_2, N_7, \QAUX_5[3]_net_1 , N_6, 
        GND_0, VCC_0;
    
    OUTBUF \Q_pad[1]  (.D(\QAUX_c[1] ), .PAD(Q[1]));
    OR2B QAUX_5_sn_m1 (.A(\S_c[1] ), .B(\S_c[0] ), .Y(QAUX_5_sn_N_2));
    DFN1E0C0 \QAUX[3]  (.D(\QAUX_5[3]_net_1 ), .CLK(CP_c), .CLR(MR_c), 
        .E(QAUX12_net_1), .Q(\QAUX_c[3] ));
    NOR2 QAUX12 (.A(\S_c[1] ), .B(\S_c[0] ), .Y(QAUX12_net_1));
    INBUF DSR_pad (.PAD(DSR), .Y(DSR_c));
    OUTBUF \Q_pad[2]  (.D(\QAUX_c[2] ), .PAD(Q[2]));
    GND GND_i_0 (.Y(GND_0));
    INBUF \D_pad[1]  (.PAD(D[1]), .Y(\D_c[1] ));
    CLKBUF CP_pad (.PAD(CP), .Y(CP_c));
    INBUF DSL_pad (.PAD(DSL), .Y(DSL_c));
    VCC VCC_i (.Y(VCC));
    INBUF \S_pad[1]  (.PAD(S[1]), .Y(\S_c[1] ));
    INBUF \D_pad[0]  (.PAD(D[0]), .Y(\D_c[0] ));
    INBUF MR_pad (.PAD(MR), .Y(MR_c));
    GND GND_i (.Y(GND));
    INBUF \S_pad[0]  (.PAD(S[0]), .Y(\S_c[0] ));
    VCC VCC_i_0 (.Y(VCC_0));
    OUTBUF \Q_pad[3]  (.D(\QAUX_c[3] ), .PAD(Q[3]));
    INBUF \D_pad[2]  (.PAD(D[2]), .Y(\D_c[2] ));
    INBUF \D_pad[3]  (.PAD(D[3]), .Y(\D_c[3] ));
    OUTBUF \Q_pad[0]  (.D(\QAUX_c[0] ), .PAD(Q[0]));
    MX2 \QAUX_5[3]  (.A(\D_c[3] ), .B(N_6), .S(QAUX_5_sn_N_2), .Y(
        \QAUX_5[3]_net_1 ));
    MX2 \QAUX_5_0[0]  (.A(\QAUX_c[0] ), .B(DSR_c), .S(\S_c[0] ), .Y(
        N_7));
    DFN1E0C0 \QAUX[2]  (.D(\D_c[2] ), .CLK(CP_c), .CLR(MR_c), .E(
        QAUX_5_sn_N_2), .Q(\QAUX_c[2] ));
    MX2 \QAUX_5_0[3]  (.A(DSL_c), .B(\QAUX_c[3] ), .S(\S_c[0] ), .Y(
        N_6));
    MX2 \QAUX_5[0]  (.A(\D_c[0] ), .B(N_7), .S(QAUX_5_sn_N_2), .Y(
        \QAUX_5[0]_net_1 ));
    DFN1C0 \QAUX[0]  (.D(\QAUX_5[0]_net_1 ), .CLK(CP_c), .CLR(MR_c), 
        .Q(\QAUX_c[0] ));
    DFN1E0C0 \QAUX[1]  (.D(\D_c[1] ), .CLK(CP_c), .CLR(MR_c), .E(
        QAUX_5_sn_N_2), .Q(\QAUX_c[1] ));
    
endmodule
