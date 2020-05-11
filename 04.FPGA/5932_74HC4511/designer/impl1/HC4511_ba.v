`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire \SM_8S[7]_net_1 , SM_8S58, \SM_8S_1[5] , 
        \SM_8S_1_i_0[0]_net_1 , \SM_8S_1_i_0[1]_net_1 , 
        \SM_8S_1_i_0[3]_net_1 , N_6, N_9, N_11, \A_c[0] , \A_c[1] , 
        \A_c[2] , \A_c[3] , \SM_8S_c[0] , \SM_8S_c[1] , \SM_8S_c[2] , 
        \SM_8S_c[3] , \SM_8S_c[4] , \SM_8S_c[5] , \SM_8S_c[6] , LT_N_c, 
        BI_N_c, LE_c, N_32, N_21, N_47, N_19, N_48, N_57, N_23, N_18, 
        N_60, N_55, N_33, N_59, N_67, N_63, N_16_i, N_13, N_61, 
        un1_BI_N_1_i, \SM_8S_1_0_i_a3_0_0[2] , LT_N_c_i, \SM_8S_i[7] , 
        \Seg_pad[0]/U0/NET1 , \Seg_pad[0]/U0/NET2 , 
        \Seg_pad[2]/U0/NET1 , \Seg_pad[2]/U0/NET2 , \LT_N_pad/U0/NET1 , 
        \Seg_pad[1]/U0/NET1 , \Seg_pad[1]/U0/NET2 , \LE_pad/U0/NET1 , 
        \A_pad[3]/U0/NET1 , \Seg_pad[5]/U0/NET1 , \Seg_pad[5]/U0/NET2 , 
        \Seg_pad[7]/U0/NET1 , \Seg_pad[7]/U0/NET2 , \BI_N_pad/U0/NET1 , 
        \A_pad[0]/U0/NET1 , \Seg_pad[4]/U0/NET1 , \Seg_pad[4]/U0/NET2 , 
        \A_pad[2]/U0/NET1 , \Seg_pad[3]/U0/NET1 , \Seg_pad[3]/U0/NET2 , 
        \A_pad[1]/U0/NET1 , \Seg_pad[6]/U0/NET1 , \Seg_pad[6]/U0/NET2 , 
        VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    DLN0P1C1 \SM_8S[4]  (.D(N_9), .G(LE_c), .PRE(LT_N_c_i), .CLR(
        SM_8S58), .Q(\SM_8S_c[4] ));
    NOR3B \SM_8S_1_i_0_a3_0[3]  (.A(\A_c[3] ), .B(N_18), .C(\A_c[0] ), 
        .Y(N_60));
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    NOR3A \SM_8S_1_i_0_a3[1]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(N_19), 
        .Y(N_47));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    AO1B \SM_8S_1_i_i_a3[6]  (.A(\A_c[2] ), .B(\A_c[0] ), .C(\A_c[1] ), 
        .Y(N_63));
    NOR2A BI_N_pad_RNI5SO3 (.A(LT_N_c), .B(BI_N_c), .Y(SM_8S58));
    OAI1 \SM_8S_1_i_i[4]  (.A(\A_c[0] ), .B(N_13), .C(N_61), .Y(N_9));
    NOR3 \SM_8S_1_i_0[1]  (.A(N_48), .B(N_47), .C(N_55), .Y(
        \SM_8S_1_i_0[1]_net_1 ));
    IOTRI_OB_EB \Seg_pad[5]/U0/U1  (.D(\SM_8S_c[5] ), .E(VCC), .DOUT(
        \Seg_pad[5]/U0/NET1 ), .EOUT(\Seg_pad[5]/U0/NET2 ));
    NOR2A \SM_8S_1_i_i_o2[4]  (.A(\A_c[2] ), .B(\A_c[1] ), .Y(N_13));
    IOPAD_TRI \Seg_pad[1]/U0/U0  (.D(\Seg_pad[1]/U0/NET1 ), .E(
        \Seg_pad[1]/U0/NET2 ), .PAD(Seg[1]));
    IOPAD_IN \BI_N_pad/U0/U0  (.PAD(BI_N), .Y(\BI_N_pad/U0/NET1 ));
    XOR2 \SM_8S_1_i_0_o2[0]  (.A(\A_c[1] ), .B(\A_c[2] ), .Y(N_21));
    IOIN_IB \A_pad[0]/U0/U1  (.YIN(\A_pad[0]/U0/NET1 ), .Y(\A_c[0] ));
    IOIN_IB \BI_N_pad/U0/U1  (.YIN(\BI_N_pad/U0/NET1 ), .Y(BI_N_c));
    OR2B \SM_8S_RNO[7]  (.A(LE_c), .B(BI_N_c), .Y(un1_BI_N_1_i));
    OAI1 \SM_8S_1_i_i_a3[4]  (.A(\A_c[1] ), .B(\A_c[2] ), .C(\A_c[3] ), 
        .Y(N_61));
    IOTRI_OB_EB \Seg_pad[6]/U0/U1  (.D(\SM_8S_c[6] ), .E(VCC), .DOUT(
        \Seg_pad[6]/U0/NET1 ), .EOUT(\Seg_pad[6]/U0/NET2 ));
    NOR2 \SM_8S_1_i_0[0]  (.A(N_33), .B(N_32), .Y(
        \SM_8S_1_i_0[0]_net_1 ));
    INV \Seg_pad_RNO[7]  (.A(\SM_8S[7]_net_1 ), .Y(\SM_8S_i[7] ));
    DLN0P1C1 \SM_8S[6]  (.D(N_11), .G(LE_c), .PRE(LT_N_c_i), .CLR(
        SM_8S58), .Q(\SM_8S_c[6] ));
    DLN0P1C1 \SM_8S[5]  (.D(\SM_8S_1[5] ), .G(LE_c), .PRE(LT_N_c_i), 
        .CLR(SM_8S58), .Q(\SM_8S_c[5] ));
    IOTRI_OB_EB \Seg_pad[4]/U0/U1  (.D(\SM_8S_c[4] ), .E(VCC), .DOUT(
        \Seg_pad[4]/U0/NET1 ), .EOUT(\Seg_pad[4]/U0/NET2 ));
    IOPAD_TRI \Seg_pad[5]/U0/U0  (.D(\Seg_pad[5]/U0/NET1 ), .E(
        \Seg_pad[5]/U0/NET2 ), .PAD(Seg[5]));
    IOTRI_OB_EB \Seg_pad[2]/U0/U1  (.D(\SM_8S_c[2] ), .E(VCC), .DOUT(
        \Seg_pad[2]/U0/NET1 ), .EOUT(\Seg_pad[2]/U0/NET2 ));
    XA1 \SM_8S_1_i_0_a3_0[0]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(N_19), 
        .Y(N_33));
    AOI1 \SM_8S_1_0_i[2]  (.A(\SM_8S_1_0_i_a3_0_0[2] ), .B(N_18), .C(
        N_57), .Y(N_6));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    NOR3C \SM_8S_1_i_0_a3[3]  (.A(\A_c[0] ), .B(\A_c[2] ), .C(\A_c[1] )
        , .Y(N_59));
    OR3C \SM_8S_1_i_i[6]  (.A(N_63), .B(N_16_i), .C(N_67), .Y(N_11));
    IOPAD_TRI \Seg_pad[6]/U0/U0  (.D(\Seg_pad[6]/U0/NET1 ), .E(
        \Seg_pad[6]/U0/NET2 ), .PAD(Seg[6]));
    NOR2A \SM_8S_1_0_i_o2[2]  (.A(\A_c[0] ), .B(\A_c[1] ), .Y(N_23));
    NOR2 \SM_8S_1_i_0_a3_1[1]  (.A(N_67), .B(\A_c[3] ), .Y(N_55));
    DLN0P1C1 \SM_8S[1]  (.D(\SM_8S_1_i_0[1]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\SM_8S_c[1] ));
    OR2B \SM_8S_1_i_i_a2[6]  (.A(N_13), .B(\A_c[0] ), .Y(N_67));
    IOPAD_TRI \Seg_pad[4]/U0/U0  (.D(\Seg_pad[4]/U0/NET1 ), .E(
        \Seg_pad[4]/U0/NET2 ), .PAD(Seg[4]));
    IOTRI_OB_EB \Seg_pad[3]/U0/U1  (.D(\SM_8S_c[3] ), .E(VCC), .DOUT(
        \Seg_pad[3]/U0/NET1 ), .EOUT(\Seg_pad[3]/U0/NET2 ));
    DLN0P1C1 \SM_8S[3]  (.D(\SM_8S_1_i_0[3]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\SM_8S_c[3] ));
    IOPAD_TRI \Seg_pad[2]/U0/U0  (.D(\Seg_pad[2]/U0/NET1 ), .E(
        \Seg_pad[2]/U0/NET2 ), .PAD(Seg[2]));
    IOPAD_IN \A_pad[0]/U0/U0  (.PAD(A[0]), .Y(\A_pad[0]/U0/NET1 ));
    DLN0P1C1 \SM_8S[0]  (.D(\SM_8S_1_i_0[0]_net_1 ), .G(LE_c), .PRE(
        LT_N_c_i), .CLR(SM_8S58), .Q(\SM_8S_c[0] ));
    XNOR2 \SM_8S_1_i_i_x2[6]  (.A(N_13), .B(\A_c[3] ), .Y(N_16_i));
    DLN0P1C1 \SM_8S[2]  (.D(N_6), .G(LE_c), .PRE(LT_N_c_i), .CLR(
        SM_8S58), .Q(\SM_8S_c[2] ));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    NOR3C \SM_8S_1_i_0_a3_0[1]  (.A(\A_c[0] ), .B(\A_c[3] ), .C(
        \A_c[1] ), .Y(N_48));
    NOR3B \SM_8S_1_0_i_a3[2]  (.A(\A_c[3] ), .B(\A_c[2] ), .C(N_23), 
        .Y(N_57));
    IOIN_IB \LT_N_pad/U0/U1  (.YIN(\LT_N_pad/U0/NET1 ), .Y(LT_N_c));
    IOPAD_IN \LT_N_pad/U0/U0  (.PAD(LT_N), .Y(\LT_N_pad/U0/NET1 ));
    CLKIO \LE_pad/U0/U1  (.A(\LE_pad/U0/NET1 ), .Y(LE_c));
    IOPAD_TRI \Seg_pad[3]/U0/U0  (.D(\Seg_pad[3]/U0/NET1 ), .E(
        \Seg_pad[3]/U0/NET2 ), .PAD(Seg[3]));
    IOTRI_OB_EB \Seg_pad[0]/U0/U1  (.D(\SM_8S_c[0] ), .E(VCC), .DOUT(
        \Seg_pad[0]/U0/NET1 ), .EOUT(\Seg_pad[0]/U0/NET2 ));
    NOR3C \SM_8S_1_i_0_a3[0]  (.A(\A_c[0] ), .B(\A_c[3] ), .C(N_21), 
        .Y(N_32));
    DLN1P1C1 \SM_8S[7]  (.D(VCC), .G(GND), .PRE(un1_BI_N_1_i), .CLR(
        LT_N_c_i), .Q(\SM_8S[7]_net_1 ));
    NOR2A \SM_8S_1_0_0_o2[5]  (.A(\A_c[1] ), .B(\A_c[2] ), .Y(N_18));
    IOTRI_OB_EB \Seg_pad[7]/U0/U1  (.D(\SM_8S_i[7] ), .E(VCC), .DOUT(
        \Seg_pad[7]/U0/NET1 ), .EOUT(\Seg_pad[7]/U0/NET2 ));
    NOR2 \SM_8S_1_0_i_a3_0_1[2]  (.A(\A_c[0] ), .B(\A_c[3] ), .Y(
        \SM_8S_1_0_i_a3_0_0[2] ));
    INV LT_N_pad_RNIFIL2 (.A(LT_N_c), .Y(LT_N_c_i));
    OAI1 \SM_8S_1_0_0[5]  (.A(\A_c[0] ), .B(N_18), .C(N_16_i), .Y(
        \SM_8S_1[5] ));
    IOPAD_IN \LE_pad/U0/U0  (.PAD(LE), .Y(\LE_pad/U0/NET1 ));
    IOPAD_TRI \Seg_pad[0]/U0/U0  (.D(\Seg_pad[0]/U0/NET1 ), .E(
        \Seg_pad[0]/U0/NET2 ), .PAD(Seg[0]));
    NOR2 \SM_8S_1_i_0_o2[1]  (.A(\A_c[3] ), .B(\A_c[1] ), .Y(N_19));
    NOR3 \SM_8S_1_i_0[3]  (.A(N_59), .B(N_33), .C(N_60), .Y(
        \SM_8S_1_i_0[3]_net_1 ));
    IOPAD_TRI \Seg_pad[7]/U0/U0  (.D(\Seg_pad[7]/U0/NET1 ), .E(
        \Seg_pad[7]/U0/NET2 ), .PAD(Seg[7]));
    IOTRI_OB_EB \Seg_pad[1]/U0/U1  (.D(\SM_8S_c[1] ), .E(VCC), .DOUT(
        \Seg_pad[1]/U0/NET1 ), .EOUT(\Seg_pad[1]/U0/NET2 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
