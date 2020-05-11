`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire TC25, I_15, I_18, I_17, \QAUX_4[3] , \QAUX_4[2] , \QAUX_4[1] , 
        \QAUX_4[0] , CEP_pad_RNIO2EA_net_1, \QAUX_RNO_0[3]_net_1 , 
        \QAUX_RNO_0[2]_net_1 , \QAUX_RNO_0[1]_net_1 , 
        \QAUX_RNO_0[0]_net_1 , \un1_QAUX.DWACT_ADD_CI_0_TMP[0] , 
        \un1_QAUX.DWACT_ADD_CI_0_partial_sum[0] , 
        \un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] , MR_c, CP_c, CEP_c, 
        CET_c, PE_c, \D_c[3] , \D_c[2] , \D_c[1] , \D_c[0] , 
        \QAUX_c[3] , \QAUX_c[2] , \QAUX_c[1] , \QAUX_c[0] , TC_c, 
        TC25_0, \PE_pad/U0/NET1 , \Q_pad[2]/U0/NET1 , 
        \Q_pad[2]/U0/NET2 , \D_pad[1]/U0/NET1 , \MR_pad/U0/NET1 , 
        \D_pad[2]/U0/NET1 , \Q_pad[3]/U0/NET1 , \Q_pad[3]/U0/NET2 , 
        \Q_pad[1]/U0/NET1 , \Q_pad[1]/U0/NET2 , \Q_pad[0]/U0/NET1 , 
        \Q_pad[0]/U0/NET2 , \D_pad[0]/U0/NET1 , \CEP_pad/U0/NET1 , 
        \CP_pad/U0/NET1 , \CET_pad/U0/NET1 , \D_pad[3]/U0/NET1 , 
        \TC_pad/U0/NET1 , \TC_pad/U0/NET2 , VCC, AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \MR_pad/U0/U1  (.YIN(\MR_pad/U0/NET1 ), .Y(MR_c));
    IOIN_IB \CEP_pad/U0/U1  (.YIN(\CEP_pad/U0/NET1 ), .Y(CEP_c));
    IOTRI_OB_EB \Q_pad[0]/U0/U1  (.D(\QAUX_c[0] ), .E(VCC), .DOUT(
        \Q_pad[0]/U0/NET1 ), .EOUT(\Q_pad[0]/U0/NET2 ));
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(\QAUX_c[1] ), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    IOPAD_TRI \Q_pad[3]/U0/U0  (.D(\Q_pad[3]/U0/NET1 ), .E(
        \Q_pad[3]/U0/NET2 ), .PAD(Q[3]));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(\QAUX_c[2] ), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    IOPAD_IN \CP_pad/U0/U0  (.PAD(CP), .Y(\CP_pad/U0/NET1 ));
    MX2 \QAUX_RNO_0[3]  (.A(\D_c[3] ), .B(
        \un1_QAUX.DWACT_ADD_CI_0_partial_sum[0] ), .S(PE_c), .Y(
        \QAUX_RNO_0[3]_net_1 ));
    IOPAD_IN \MR_pad/U0/U0  (.PAD(MR), .Y(\MR_pad/U0/NET1 ));
    IOPAD_IN \D_pad[3]/U0/U0  (.PAD(D[3]), .Y(\D_pad[3]/U0/NET1 ));
    NOR2B \QAUX_RNO[2]  (.A(\QAUX_RNO_0[2]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[2] ));
    NOR2B TC_RNO_0 (.A(\QAUX_c[0] ), .B(\QAUX_c[1] ), .Y(TC25_0));
    IOIN_IB \D_pad[1]/U0/U1  (.YIN(\D_pad[1]/U0/NET1 ), .Y(\D_c[1] ));
    AND2 un1_QAUX_I_1 (.A(\QAUX_c[3] ), .B(CEP_pad_RNIO2EA_net_1), .Y(
        \un1_QAUX.DWACT_ADD_CI_0_TMP[0] ));
    XOR2 un1_QAUX_I_18 (.A(\QAUX_c[1] ), .B(
        \un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18));
    MX2 \QAUX_RNO_0[2]  (.A(\D_c[2] ), .B(I_15), .S(PE_c), .Y(
        \QAUX_RNO_0[2]_net_1 ));
    IOPAD_TRI \Q_pad[0]/U0/U0  (.D(\Q_pad[0]/U0/NET1 ), .E(
        \Q_pad[0]/U0/NET2 ), .PAD(Q[0]));
    NOR2B \QAUX_RNO[3]  (.A(\QAUX_RNO_0[3]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[3] ));
    IOIN_IB \D_pad[2]/U0/U1  (.YIN(\D_pad[2]/U0/NET1 ), .Y(\D_c[2] ));
    IOIN_IB \D_pad[0]/U0/U1  (.YIN(\D_pad[0]/U0/NET1 ), .Y(\D_c[0] ));
    XOR2 un1_QAUX_I_15 (.A(\QAUX_c[2] ), .B(
        \un1_QAUX.DWACT_ADD_CI_0_TMP[0] ), .Y(I_15));
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    DFN1 \QAUX[0]  (.D(\QAUX_4[0] ), .CLK(CP_c), .Q(\QAUX_c[0] ));
    IOTRI_OB_EB \TC_pad/U0/U1  (.D(TC_c), .E(VCC), .DOUT(
        \TC_pad/U0/NET1 ), .EOUT(\TC_pad/U0/NET2 ));
    IOPAD_TRI \TC_pad/U0/U0  (.D(\TC_pad/U0/NET1 ), .E(
        \TC_pad/U0/NET2 ), .PAD(TC));
    IOPAD_IN \CEP_pad/U0/U0  (.PAD(CEP), .Y(\CEP_pad/U0/NET1 ));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    AX1C un1_QAUX_I_17 (.A(\un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \QAUX_c[1] ), .C(\QAUX_c[0] ), .Y(I_17));
    DFN1 \QAUX[2]  (.D(\QAUX_4[2] ), .CLK(CP_c), .Q(\QAUX_c[2] ));
    IOIN_IB \PE_pad/U0/U1  (.YIN(\PE_pad/U0/NET1 ), .Y(PE_c));
    IOPAD_IN \D_pad[1]/U0/U0  (.PAD(D[1]), .Y(\D_pad[1]/U0/NET1 ));
    NOR2B CEP_pad_RNIO2EA (.A(CET_c), .B(CEP_c), .Y(
        CEP_pad_RNIO2EA_net_1));
    IOIN_IB \CET_pad/U0/U1  (.YIN(\CET_pad/U0/NET1 ), .Y(CET_c));
    NOR3C TC_RNO (.A(\QAUX_c[3] ), .B(\QAUX_c[2] ), .C(TC25_0), .Y(
        TC25));
    DFN1 \QAUX[1]  (.D(\QAUX_4[1] ), .CLK(CP_c), .Q(\QAUX_c[1] ));
    IOPAD_IN \CET_pad/U0/U0  (.PAD(CET), .Y(\CET_pad/U0/NET1 ));
    CLKIO \CP_pad/U0/U1  (.A(\CP_pad/U0/NET1 ), .Y(CP_c));
    IOTRI_OB_EB \Q_pad[3]/U0/U1  (.D(\QAUX_c[3] ), .E(VCC), .DOUT(
        \Q_pad[3]/U0/NET1 ), .EOUT(\Q_pad[3]/U0/NET2 ));
    DFN1 TC_inst_1 (.D(TC25), .CLK(CP_c), .Q(TC_c));
    NOR2B \QAUX_RNO[0]  (.A(\QAUX_RNO_0[0]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[0] ));
    IOPAD_IN \PE_pad/U0/U0  (.PAD(PE), .Y(\PE_pad/U0/NET1 ));
    IOPAD_IN \D_pad[2]/U0/U0  (.PAD(D[2]), .Y(\D_pad[2]/U0/NET1 ));
    NOR2B \QAUX_RNO[1]  (.A(\QAUX_RNO_0[1]_net_1 ), .B(MR_c), .Y(
        \QAUX_4[1] ));
    IOIN_IB \D_pad[3]/U0/U1  (.YIN(\D_pad[3]/U0/NET1 ), .Y(\D_c[3] ));
    MX2 \QAUX_RNO_0[1]  (.A(\D_c[1] ), .B(I_18), .S(PE_c), .Y(
        \QAUX_RNO_0[1]_net_1 ));
    XOR2 un1_QAUX_I_11 (.A(\QAUX_c[3] ), .B(CEP_pad_RNIO2EA_net_1), .Y(
        \un1_QAUX.DWACT_ADD_CI_0_partial_sum[0] ));
    IOPAD_IN \D_pad[0]/U0/U0  (.PAD(D[0]), .Y(\D_pad[0]/U0/NET1 ));
    DFN1 \QAUX[3]  (.D(\QAUX_4[3] ), .CLK(CP_c), .Q(\QAUX_c[3] ));
    MX2 \QAUX_RNO_0[0]  (.A(\D_c[0] ), .B(I_17), .S(PE_c), .Y(
        \QAUX_RNO_0[0]_net_1 ));
    NOR2B un1_QAUX_I_19 (.A(\un1_QAUX.DWACT_ADD_CI_0_TMP[0] ), .B(
        \QAUX_c[2] ), .Y(\un1_QAUX.DWACT_ADD_CI_0_g_array_1[0] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
