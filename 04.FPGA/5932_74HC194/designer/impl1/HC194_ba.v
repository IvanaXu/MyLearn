`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire \QAUX_5[0]_net_1 , MR_c, \S_c[0] , \S_c[1] , CP_c, DSR_c, 
        DSL_c, \D_c[3] , \D_c[2] , \D_c[1] , \D_c[0] , \QAUX_c[3] , 
        \QAUX_c[2] , \QAUX_c[1] , \QAUX_c[0] , QAUX12_net_1, 
        QAUX_5_sn_N_2, N_7, \QAUX_5[3]_net_1 , N_6, \Q_pad[1]/U0/NET1 , 
        \Q_pad[1]/U0/NET2 , \DSR_pad/U0/NET1 , \Q_pad[2]/U0/NET1 , 
        \Q_pad[2]/U0/NET2 , \D_pad[1]/U0/NET1 , \CP_pad/U0/NET1 , 
        \DSL_pad/U0/NET1 , \S_pad[1]/U0/NET1 , \D_pad[0]/U0/NET1 , 
        \MR_pad/U0/NET1 , \S_pad[0]/U0/NET1 , \Q_pad[3]/U0/NET1 , 
        \Q_pad[3]/U0/NET2 , \D_pad[2]/U0/NET1 , \D_pad[3]/U0/NET1 , 
        \Q_pad[0]/U0/NET1 , \Q_pad[0]/U0/NET2 , VCC, \QAUX[2]/Y , 
        \QAUX[1]/Y , \QAUX[3]/Y , AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \MR_pad/U0/U1  (.YIN(\MR_pad/U0/NET1 ), .Y(MR_c));
    MX2 \QAUX_5[3]  (.A(\D_c[3] ), .B(N_6), .S(QAUX_5_sn_N_2), .Y(
        \QAUX_5[3]_net_1 ));
    IOTRI_OB_EB \Q_pad[0]/U0/U1  (.D(\QAUX_c[0] ), .E(VCC), .DOUT(
        \Q_pad[0]/U0/NET1 ), .EOUT(\Q_pad[0]/U0/NET2 ));
    DFN1C0 \QAUX[3]/U1  (.D(\QAUX[3]/Y ), .CLK(CP_c), .CLR(MR_c), .Q(
        \QAUX_c[3] ));
    NOR2 QAUX12 (.A(\S_c[1] ), .B(\S_c[0] ), .Y(QAUX12_net_1));
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(\QAUX_c[1] ), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    IOPAD_TRI \Q_pad[3]/U0/U0  (.D(\Q_pad[3]/U0/NET1 ), .E(
        \Q_pad[3]/U0/NET2 ), .PAD(Q[3]));
    DFN1C0 \QAUX[1]/U1  (.D(\QAUX[1]/Y ), .CLK(CP_c), .CLR(MR_c), .Q(
        \QAUX_c[1] ));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(\QAUX_c[2] ), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    IOPAD_IN \CP_pad/U0/U0  (.PAD(CP), .Y(\CP_pad/U0/NET1 ));
    MX2 \QAUX_5_0[3]  (.A(DSL_c), .B(\QAUX_c[3] ), .S(\S_c[0] ), .Y(
        N_6));
    MX2 \QAUX_5[0]  (.A(\D_c[0] ), .B(N_7), .S(QAUX_5_sn_N_2), .Y(
        \QAUX_5[0]_net_1 ));
    IOPAD_IN \DSL_pad/U0/U0  (.PAD(DSL), .Y(\DSL_pad/U0/NET1 ));
    IOPAD_IN \MR_pad/U0/U0  (.PAD(MR), .Y(\MR_pad/U0/NET1 ));
    IOPAD_IN \D_pad[3]/U0/U0  (.PAD(D[3]), .Y(\D_pad[3]/U0/NET1 ));
    MX2 \QAUX_5_0[0]  (.A(\QAUX_c[0] ), .B(DSR_c), .S(\S_c[0] ), .Y(
        N_7));
    IOIN_IB \D_pad[1]/U0/U1  (.YIN(\D_pad[1]/U0/NET1 ), .Y(\D_c[1] ));
    IOPAD_TRI \Q_pad[0]/U0/U0  (.D(\Q_pad[0]/U0/NET1 ), .E(
        \Q_pad[0]/U0/NET2 ), .PAD(Q[0]));
    IOIN_IB \D_pad[2]/U0/U1  (.YIN(\D_pad[2]/U0/NET1 ), .Y(\D_c[2] ));
    IOIN_IB \D_pad[0]/U0/U1  (.YIN(\D_pad[0]/U0/NET1 ), .Y(\D_c[0] ));
    IOIN_IB \S_pad[1]/U0/U1  (.YIN(\S_pad[1]/U0/NET1 ), .Y(\S_c[1] ));
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    OR2B QAUX_5_sn_m1 (.A(\S_c[1] ), .B(\S_c[0] ), .Y(QAUX_5_sn_N_2));
    DFN1C0 \QAUX[0]  (.D(\QAUX_5[0]_net_1 ), .CLK(CP_c), .CLR(MR_c), 
        .Q(\QAUX_c[0] ));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    IOIN_IB \S_pad[0]/U0/U1  (.YIN(\S_pad[0]/U0/NET1 ), .Y(\S_c[0] ));
    IOPAD_IN \DSR_pad/U0/U0  (.PAD(DSR), .Y(\DSR_pad/U0/NET1 ));
    IOPAD_IN \D_pad[1]/U0/U0  (.PAD(D[1]), .Y(\D_pad[1]/U0/NET1 ));
    CLKIO \CP_pad/U0/U1  (.A(\CP_pad/U0/NET1 ), .Y(CP_c));
    IOTRI_OB_EB \Q_pad[3]/U0/U1  (.D(\QAUX_c[3] ), .E(VCC), .DOUT(
        \Q_pad[3]/U0/NET1 ), .EOUT(\Q_pad[3]/U0/NET2 ));
    MX2 \QAUX[3]/U0  (.A(\QAUX_5[3]_net_1 ), .B(\QAUX_c[3] ), .S(
        QAUX12_net_1), .Y(\QAUX[3]/Y ));
    IOIN_IB \DSR_pad/U0/U1  (.YIN(\DSR_pad/U0/NET1 ), .Y(DSR_c));
    IOPAD_IN \D_pad[2]/U0/U0  (.PAD(D[2]), .Y(\D_pad[2]/U0/NET1 ));
    IOIN_IB \D_pad[3]/U0/U1  (.YIN(\D_pad[3]/U0/NET1 ), .Y(\D_c[3] ));
    MX2 \QAUX[2]/U0  (.A(\D_c[2] ), .B(\QAUX_c[2] ), .S(QAUX_5_sn_N_2), 
        .Y(\QAUX[2]/Y ));
    MX2 \QAUX[1]/U0  (.A(\D_c[1] ), .B(\QAUX_c[1] ), .S(QAUX_5_sn_N_2), 
        .Y(\QAUX[1]/Y ));
    IOPAD_IN \D_pad[0]/U0/U0  (.PAD(D[0]), .Y(\D_pad[0]/U0/NET1 ));
    IOPAD_IN \S_pad[1]/U0/U0  (.PAD(S[1]), .Y(\S_pad[1]/U0/NET1 ));
    DFN1C0 \QAUX[2]/U1  (.D(\QAUX[2]/Y ), .CLK(CP_c), .CLR(MR_c), .Q(
        \QAUX_c[2] ));
    IOIN_IB \DSL_pad/U0/U1  (.YIN(\DSL_pad/U0/NET1 ), .Y(DSL_c));
    IOPAD_IN \S_pad[0]/U0/U0  (.PAD(S[0]), .Y(\S_pad[0]/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
