`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC161(
       MR,
       CP,
       CEP,
       CET,
       PE,
       D,
       Q,
       TC
    );
input  MR;
input  CP;
input  CEP;
input  CET;
input  PE;
input  [0:3] D;
output [0:3] Q;
output TC;

    wire GND, TC25, I_15, I_18, I_17, \QAUX_4[3] , \QAUX_4[2] , 
        \QAUX_4[1] , \QAUX_4[0] , VCC, CEP_pad_RNIO2EA_net_1, 
        \QAUX_RNO_0[3]_net_1 , \QAUX_RNO_0[2]_net_1 , 
        \QAUX_RNO_0[1]_net_1 , \QAUX_RNO_0[0]_net_1 , 
        \un1_QAUX.DWACT_ADD_CI_0_TMP[0] , 
        \un1_QAUX.DWACT_ADD_CI_0_partial_sum[0] , 
        \un1_QAUX.DWACT_ADD_CI_0_g_array_12[0] , 
        \un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] , MR_c, CP_c, CEP_c, 
        CET_c, PE_c, \D_c[3] , \D_c[2] , \D_c[1] , \D_c[0] , 
        \QAUX_c[3] , \QAUX_c[2] , \QAUX_c[1] , \QAUX_c[0] , TC_c, 
        TC25_0, GND_0, VCC_0;
    
    VCC VCC_i (.Y(VCC));
    MX2 \QAUX_RNO_0[3]  (.A(\D_c[3] ), .B(
        \un1_QAUX.DWACT_ADD_CI_0_partial_sum[0] ), .S(PE_c), .Y(
        \QAUX_RNO_0[3]_net_1 ));
    NOR2B \QAUX_RNO[2]  (.A(\QAUX_RNO_0[2]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[2] ));
    INBUF PE_pad (.PAD(PE), .Y(PE_c));
    NOR2B TC_RNO_0 (.A(\QAUX_c[0] ), .B(\QAUX_c[1] ), .Y(TC25_0));
    OUTBUF \Q_pad[2]  (.D(\QAUX_c[2] ), .PAD(Q[2]));
    INBUF \D_pad[1]  (.PAD(D[1]), .Y(\D_c[1] ));
    AND2 un1_QAUX_I_1 (.A(\QAUX_c[3] ), .B(CEP_pad_RNIO2EA_net_1), .Y(
        \un1_QAUX.DWACT_ADD_CI_0_TMP[0] ));
    XOR2 un1_QAUX_I_18 (.A(\QAUX_c[1] ), .B(
        \un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18));
    MX2 \QAUX_RNO_0[2]  (.A(\D_c[2] ), .B(I_15), .S(PE_c), .Y(
        \QAUX_RNO_0[2]_net_1 ));
    NOR2B \QAUX_RNO[3]  (.A(\QAUX_RNO_0[3]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[3] ));
    NOR2B un1_QAUX_I_21 (.A(\un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] ), 
        .B(\QAUX_c[1] ), .Y(\un1_QAUX.DWACT_ADD_CI_0_g_array_12[0] ));
    GND GND_i (.Y(GND));
    XOR2 un1_QAUX_I_15 (.A(\QAUX_c[2] ), .B(
        \un1_QAUX.DWACT_ADD_CI_0_TMP[0] ), .Y(I_15));
    INBUF MR_pad (.PAD(MR), .Y(MR_c));
    INBUF \D_pad[2]  (.PAD(D[2]), .Y(\D_c[2] ));
    DFN1 \QAUX[0]  (.D(\QAUX_4[0] ), .CLK(CP_c), .Q(\QAUX_c[0] ));
    OUTBUF \Q_pad[3]  (.D(\QAUX_c[3] ), .PAD(Q[3]));
    XOR2 un1_QAUX_I_17 (.A(\QAUX_c[0] ), .B(
        \un1_QAUX.DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_17));
    DFN1 \QAUX[2]  (.D(\QAUX_4[2] ), .CLK(CP_c), .Q(\QAUX_c[2] ));
    OUTBUF \Q_pad[1]  (.D(\QAUX_c[1] ), .PAD(Q[1]));
    NOR2B CEP_pad_RNIO2EA (.A(CET_c), .B(CEP_c), .Y(
        CEP_pad_RNIO2EA_net_1));
    OUTBUF \Q_pad[0]  (.D(\QAUX_c[0] ), .PAD(Q[0]));
    NOR3C TC_RNO (.A(\QAUX_c[3] ), .B(\QAUX_c[2] ), .C(TC25_0), .Y(
        TC25));
    INBUF \D_pad[0]  (.PAD(D[0]), .Y(\D_c[0] ));
    DFN1 \QAUX[1]  (.D(\QAUX_4[1] ), .CLK(CP_c), .Q(\QAUX_c[1] ));
    INBUF CEP_pad (.PAD(CEP), .Y(CEP_c));
    CLKBUF CP_pad (.PAD(CP), .Y(CP_c));
    DFN1 TC_inst_1 (.D(TC25), .CLK(CP_c), .Q(TC_c));
    NOR2B \QAUX_RNO[0]  (.A(\QAUX_RNO_0[0]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[0] ));
    NOR2B \QAUX_RNO[1]  (.A(\QAUX_RNO_0[1]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[1] ));
    MX2 \QAUX_RNO_0[1]  (.A(\D_c[1] ), .B(I_18), .S(PE_c), .Y(
        \QAUX_RNO_0[1]_net_1 ));
    XOR2 un1_QAUX_I_11 (.A(\QAUX_c[3] ), .B(CEP_pad_RNIO2EA_net_1), .Y(
        \un1_QAUX.DWACT_ADD_CI_0_partial_sum[0] ));
    INBUF CET_pad (.PAD(CET), .Y(CET_c));
    DFN1 \QAUX[3]  (.D(\QAUX_4[3] ), .CLK(CP_c), .Q(\QAUX_c[3] ));
    MX2 \QAUX_RNO_0[0]  (.A(\D_c[0] ), .B(I_17), .S(PE_c), .Y(
        \QAUX_RNO_0[0]_net_1 ));
    INBUF \D_pad[3]  (.PAD(D[3]), .Y(\D_c[3] ));
    VCC VCC_i_0 (.Y(VCC_0));
    NOR2B un1_QAUX_I_19 (.A(\un1_QAUX.DWACT_ADD_CI_0_TMP[0] ), .B(
        \QAUX_c[2] ), .Y(\un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] ));
    OUTBUF TC_pad (.D(TC_c), .PAD(TC));
    GND GND_i_0 (.Y(GND_0));
    
endmodule
