`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire \un1_Y[0] , \un1_Y[1] , \un1_Y[2] , \un1_Y[3] , \HC153_0.N_4 , 
        \HC153_0.N_6 , \A_c[1] , \A_c[2] , \A_c[3] , \A_c[4] , 
        \B_c[1] , \B_c[2] , \B_c[3] , \B_c[4] , \I1_c[3] , \I1_c[2] , 
        \I1_c[1] , \I1_c[0] , \I2_c[3] , \I2_c[2] , \I2_c[1] , 
        \I2_c[0] , S1_c, S2_c, E1N_c, E2N_c, MR_c, \D_c[3] , \D_c[2] , 
        \D_c[1] , \D_c[0] , DSR_c, \S_c[0] , \S_c[1] , DSL_c, CP_c, 
        \Q_c[3] , \Q_c[2] , \Q_c[1] , \Q_c[0] , 
        \HC153_0/Y1_iv_i_0_net_1 , \HC153_0/Y1_iv_i_10_tz_net_1 , 
        \HC153_0/Y2_iv_i_0_net_1 , \HC153_0/Y2_iv_i_7_tz_net_1 , 
        \HC153_0/Y2_iv_i_8_tz_net_1 , \HC153_0/Y1_iv_i_11_tz_net_1 , 
        \HC194_0/QAUX12 , \HC194_0/N_6 , \HC194_0/N_7 , 
        \HC194_0/QAUX_5[3] , \HC194_0/QAUX_5_sn_N_2 , 
        \HC194_0/QAUX_RNO[0]_net_1 , \B_pad[3]/U0/NET1 , 
        \Y_pad[4]/U0/NET1 , \Y_pad[4]/U0/NET2 , \I2_pad[3]/U0/NET1 , 
        \E1N_pad/U0/NET1 , \I2_pad[1]/U0/NET1 , \I2_pad[2]/U0/NET1 , 
        \B_pad[4]/U0/NET1 , \Y1_pad/U0/NET1 , \Y1_pad/U0/NET2 , 
        \S_pad[1]/U0/NET1 , \S2_pad/U0/NET1 , \I1_pad[2]/U0/NET1 , 
        \B_pad[2]/U0/NET1 , \DSR_pad/U0/NET1 , \Q_pad[2]/U0/NET1 , 
        \Q_pad[2]/U0/NET2 , \E2N_pad/U0/NET1 , \I1_pad[0]/U0/NET1 , 
        \D_pad[1]/U0/NET1 , \A_pad[3]/U0/NET1 , \I1_pad[1]/U0/NET1 , 
        \B_pad[1]/U0/NET1 , \MR_pad/U0/NET1 , \D_pad[2]/U0/NET1 , 
        \Y_pad[2]/U0/NET1 , \Y_pad[2]/U0/NET2 , \Q_pad[3]/U0/NET1 , 
        \Q_pad[3]/U0/NET2 , \Y_pad[3]/U0/NET1 , \Y_pad[3]/U0/NET2 , 
        \DSL_pad/U0/NET1 , \Y2_pad/U0/NET1 , \Y2_pad/U0/NET2 , 
        \Q_pad[1]/U0/NET1 , \Q_pad[1]/U0/NET2 , \S1_pad/U0/NET1 , 
        \A_pad[2]/U0/NET1 , \Q_pad[0]/U0/NET1 , \Q_pad[0]/U0/NET2 , 
        \D_pad[0]/U0/NET1 , \I1_pad[3]/U0/NET1 , \A_pad[4]/U0/NET1 , 
        \S_pad[0]/U0/NET1 , \CP_pad/U0/NET1 , \Y_pad[1]/U0/NET1 , 
        \Y_pad[1]/U0/NET2 , VCC, \I2_pad[0]/U0/NET1 , 
        \A_pad[1]/U0/NET1 , \D_pad[3]/U0/NET1 , \HC194_0/QAUX[1]/Y , 
        \HC194_0/QAUX[3]/Y , \HC194_0/QAUX[2]/Y , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_TRI \Y_pad[2]/U0/U0  (.D(\Y_pad[2]/U0/NET1 ), .E(
        \Y_pad[2]/U0/NET2 ), .PAD(Y[2]));
    MX2 \HC194_0/QAUX[1]/U0  (.A(\D_c[1] ), .B(\Q_c[1] ), .S(
        \HC194_0/QAUX_5_sn_N_2 ), .Y(\HC194_0/QAUX[1]/Y ));
    MX2 \HC194_0/QAUX_RNO_0[0]  (.A(\Q_c[0] ), .B(DSR_c), .S(\S_c[0] ), 
        .Y(\HC194_0/N_7 ));
    IOIN_IB \D_pad[3]/U0/U1  (.YIN(\D_pad[3]/U0/NET1 ), .Y(\D_c[3] ));
    MX2 \HC153_0/Y2_iv_i_7_tz  (.A(\I2_c[2] ), .B(\I2_c[3] ), .S(S2_c), 
        .Y(\HC153_0/Y2_iv_i_7_tz_net_1 ));
    MX2 \HC153_0/Y1_iv_i_10_tz  (.A(\I1_c[2] ), .B(\I1_c[3] ), .S(S2_c)
        , .Y(\HC153_0/Y1_iv_i_10_tz_net_1 ));
    IOPAD_IN \S_pad[1]/U0/U0  (.PAD(S[1]), .Y(\S_pad[1]/U0/NET1 ));
    IOIN_IB \D_pad[1]/U0/U1  (.YIN(\D_pad[1]/U0/NET1 ), .Y(\D_c[1] ));
    IOIN_IB \I2_pad[2]/U0/U1  (.YIN(\I2_pad[2]/U0/NET1 ), .Y(\I2_c[2] )
        );
    AO1A \HC153_0/Y1_iv_i_0  (.A(\HC153_0/Y1_iv_i_10_tz_net_1 ), .B(
        S1_c), .C(E1N_c), .Y(\HC153_0/Y1_iv_i_0_net_1 ));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    MX2 \HC194_0/QAUX_RNO_1[3]  (.A(DSL_c), .B(\Q_c[3] ), .S(\S_c[0] ), 
        .Y(\HC194_0/N_6 ));
    IOIN_IB \B_pad[1]/U0/U1  (.YIN(\B_pad[1]/U0/NET1 ), .Y(\B_c[1] ));
    NOR2 \HC194_0/QAUX_RNO_0[3]  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(
        \HC194_0/QAUX12 ));
    IOPAD_TRI \Y1_pad/U0/U0  (.D(\Y1_pad/U0/NET1 ), .E(
        \Y1_pad/U0/NET2 ), .PAD(Y1));
    IOIN_IB \DSR_pad/U0/U1  (.YIN(\DSR_pad/U0/NET1 ), .Y(DSR_c));
    IOPAD_IN \I1_pad[0]/U0/U0  (.PAD(I1[0]), .Y(\I1_pad[0]/U0/NET1 ));
    IOIN_IB \I2_pad[3]/U0/U1  (.YIN(\I2_pad[3]/U0/NET1 ), .Y(\I2_c[3] )
        );
    DFN1C0 \HC194_0/QAUX[3]/U1  (.D(\HC194_0/QAUX[3]/Y ), .CLK(CP_c), 
        .CLR(MR_c), .Q(\Q_c[3] ));
    IOTRI_OB_EB \Y_pad[3]/U0/U1  (.D(\un1_Y[2] ), .E(VCC), .DOUT(
        \Y_pad[3]/U0/NET1 ), .EOUT(\Y_pad[3]/U0/NET2 ));
    IOTRI_OB_EB \Q_pad[3]/U0/U1  (.D(\Q_c[3] ), .E(VCC), .DOUT(
        \Q_pad[3]/U0/NET1 ), .EOUT(\Q_pad[3]/U0/NET2 ));
    IOPAD_TRI \Q_pad[0]/U0/U0  (.D(\Q_pad[0]/U0/NET1 ), .E(
        \Q_pad[0]/U0/NET2 ), .PAD(Q[0]));
    IOPAD_IN \B_pad[2]/U0/U0  (.PAD(B[2]), .Y(\B_pad[2]/U0/NET1 ));
    IOIN_IB \MR_pad/U0/U1  (.YIN(\MR_pad/U0/NET1 ), .Y(MR_c));
    AO1A \HC153_0/Y2_iv_i_0  (.A(\HC153_0/Y2_iv_i_7_tz_net_1 ), .B(
        S1_c), .C(E2N_c), .Y(\HC153_0/Y2_iv_i_0_net_1 ));
    DFN1C0 \HC194_0/QAUX[2]/U1  (.D(\HC194_0/QAUX[2]/Y ), .CLK(CP_c), 
        .CLR(MR_c), .Q(\Q_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    IOPAD_IN \D_pad[3]/U0/U0  (.PAD(D[3]), .Y(\D_pad[3]/U0/NET1 ));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOPAD_IN \S1_pad/U0/U0  (.PAD(S1), .Y(\S1_pad/U0/NET1 ));
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(\Q_c[1] ), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    IOPAD_IN \D_pad[1]/U0/U0  (.PAD(D[1]), .Y(\D_pad[1]/U0/NET1 ));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    IOPAD_IN \B_pad[1]/U0/U0  (.PAD(B[1]), .Y(\B_pad[1]/U0/NET1 ));
    MX2 \HC194_0/QAUX_RNO[0]  (.A(\D_c[0] ), .B(\HC194_0/N_7 ), .S(
        \HC194_0/QAUX_5_sn_N_2 ), .Y(\HC194_0/QAUX_RNO[0]_net_1 ));
    IOPAD_IN \I2_pad[2]/U0/U0  (.PAD(I2[2]), .Y(\I2_pad[2]/U0/NET1 ));
    IOIN_IB \I2_pad[0]/U0/U1  (.YIN(\I2_pad[0]/U0/NET1 ), .Y(\I2_c[0] )
        );
    IOIN_IB \I1_pad[1]/U0/U1  (.YIN(\I1_pad[1]/U0/NET1 ), .Y(\I1_c[1] )
        );
    IOTRI_OB_EB \Y_pad[4]/U0/U1  (.D(\un1_Y[3] ), .E(VCC), .DOUT(
        \Y_pad[4]/U0/NET1 ), .EOUT(\Y_pad[4]/U0/NET2 ));
    IOPAD_IN \CP_pad/U0/U0  (.PAD(CP), .Y(\CP_pad/U0/NET1 ));
    IOPAD_TRI \Y_pad[3]/U0/U0  (.D(\Y_pad[3]/U0/NET1 ), .E(
        \Y_pad[3]/U0/NET2 ), .PAD(Y[3]));
    IOIN_IB \I2_pad[1]/U0/U1  (.YIN(\I2_pad[1]/U0/NET1 ), .Y(\I2_c[1] )
        );
    IOPAD_TRI \Q_pad[3]/U0/U0  (.D(\Q_pad[3]/U0/NET1 ), .E(
        \Q_pad[3]/U0/NET2 ), .PAD(Q[3]));
    MX2 \HC153_0/Y1_iv_i_11_tz  (.A(\I1_c[0] ), .B(\I1_c[1] ), .S(S2_c)
        , .Y(\HC153_0/Y1_iv_i_11_tz_net_1 ));
    IOIN_IB \I1_pad[3]/U0/U1  (.YIN(\I1_pad[3]/U0/NET1 ), .Y(\I1_c[3] )
        );
    OA1B \HC153_0/Y1_iv_i  (.A(\HC153_0/Y1_iv_i_11_tz_net_1 ), .B(S1_c)
        , .C(\HC153_0/Y1_iv_i_0_net_1 ), .Y(\HC153_0.N_6 ));
    IOTRI_OB_EB \Y_pad[1]/U0/U1  (.D(\un1_Y[0] ), .E(VCC), .DOUT(
        \Y_pad[1]/U0/NET1 ), .EOUT(\Y_pad[1]/U0/NET2 ));
    IOIN_IB \I1_pad[2]/U0/U1  (.YIN(\I1_pad[2]/U0/NET1 ), .Y(\I1_c[2] )
        );
    IOPAD_IN \I2_pad[3]/U0/U0  (.PAD(I2[3]), .Y(\I2_pad[3]/U0/NET1 ));
    IOIN_IB \A_pad[4]/U0/U1  (.YIN(\A_pad[4]/U0/NET1 ), .Y(\A_c[4] ));
    OR2B \HC00_0/un1_Y[0]  (.A(\B_c[1] ), .B(\A_c[1] ), .Y(\un1_Y[0] ));
    OR2B \HC00_0/un1_Y[1]  (.A(\B_c[2] ), .B(\A_c[2] ), .Y(\un1_Y[1] ));
    IOPAD_IN \DSL_pad/U0/U0  (.PAD(DSL), .Y(\DSL_pad/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    IOTRI_OB_EB \Y2_pad/U0/U1  (.D(\HC153_0.N_4 ), .E(VCC), .DOUT(
        \Y2_pad/U0/NET1 ), .EOUT(\Y2_pad/U0/NET2 ));
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    IOIN_IB \B_pad[3]/U0/U1  (.YIN(\B_pad[3]/U0/NET1 ), .Y(\B_c[3] ));
    IOPAD_IN \E2N_pad/U0/U0  (.PAD(E2N), .Y(\E2N_pad/U0/NET1 ));
    MX2 \HC194_0/QAUX[3]/U0  (.A(\HC194_0/QAUX_5[3] ), .B(\Q_c[3] ), 
        .S(\HC194_0/QAUX12 ), .Y(\HC194_0/QAUX[3]/Y ));
    IOIN_IB \D_pad[0]/U0/U1  (.YIN(\D_pad[0]/U0/NET1 ), .Y(\D_c[0] ));
    IOPAD_IN \DSR_pad/U0/U0  (.PAD(DSR), .Y(\DSR_pad/U0/NET1 ));
    IOPAD_IN \E1N_pad/U0/U0  (.PAD(E1N), .Y(\E1N_pad/U0/NET1 ));
    MX2 \HC194_0/QAUX_RNO[3]  (.A(\D_c[3] ), .B(\HC194_0/N_6 ), .S(
        \HC194_0/QAUX_5_sn_N_2 ), .Y(\HC194_0/QAUX_5[3] ));
    IOPAD_TRI \Y2_pad/U0/U0  (.D(\Y2_pad/U0/NET1 ), .E(
        \Y2_pad/U0/NET2 ), .PAD(Y2));
    IOIN_IB \E2N_pad/U0/U1  (.YIN(\E2N_pad/U0/NET1 ), .Y(E2N_c));
    IOTRI_OB_EB \Y1_pad/U0/U1  (.D(\HC153_0.N_6 ), .E(VCC), .DOUT(
        \Y1_pad/U0/NET1 ), .EOUT(\Y1_pad/U0/NET2 ));
    IOPAD_IN \MR_pad/U0/U0  (.PAD(MR), .Y(\MR_pad/U0/NET1 ));
    IOPAD_TRI \Y_pad[4]/U0/U0  (.D(\Y_pad[4]/U0/NET1 ), .E(
        \Y_pad[4]/U0/NET2 ), .PAD(Y[4]));
    MX2 \HC153_0/Y2_iv_i_8_tz  (.A(\I2_c[0] ), .B(\I2_c[1] ), .S(S2_c), 
        .Y(\HC153_0/Y2_iv_i_8_tz_net_1 ));
    DFN1C0 \HC194_0/QAUX[0]  (.D(\HC194_0/QAUX_RNO[0]_net_1 ), .CLK(
        CP_c), .CLR(MR_c), .Q(\Q_c[0] ));
    IOIN_IB \D_pad[2]/U0/U1  (.YIN(\D_pad[2]/U0/NET1 ), .Y(\D_c[2] ));
    IOIN_IB \B_pad[4]/U0/U1  (.YIN(\B_pad[4]/U0/NET1 ), .Y(\B_c[4] ));
    IOIN_IB \S2_pad/U0/U1  (.YIN(\S2_pad/U0/NET1 ), .Y(S2_c));
    IOPAD_IN \I2_pad[0]/U0/U0  (.PAD(I2[0]), .Y(\I2_pad[0]/U0/NET1 ));
    IOPAD_IN \I1_pad[1]/U0/U0  (.PAD(I1[1]), .Y(\I1_pad[1]/U0/NET1 ));
    IOPAD_TRI \Y_pad[1]/U0/U0  (.D(\Y_pad[1]/U0/NET1 ), .E(
        \Y_pad[1]/U0/NET2 ), .PAD(Y[1]));
    IOIN_IB \E1N_pad/U0/U1  (.YIN(\E1N_pad/U0/NET1 ), .Y(E1N_c));
    OA1B \HC153_0/Y2_iv_i  (.A(\HC153_0/Y2_iv_i_8_tz_net_1 ), .B(S1_c), 
        .C(\HC153_0/Y2_iv_i_0_net_1 ), .Y(\HC153_0.N_4 ));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(\Q_c[2] ), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    IOIN_IB \S_pad[0]/U0/U1  (.YIN(\S_pad[0]/U0/NET1 ), .Y(\S_c[0] ));
    IOPAD_IN \A_pad[4]/U0/U0  (.PAD(A[4]), .Y(\A_pad[4]/U0/NET1 ));
    IOTRI_OB_EB \Y_pad[2]/U0/U1  (.D(\un1_Y[1] ), .E(VCC), .DOUT(
        \Y_pad[2]/U0/NET1 ), .EOUT(\Y_pad[2]/U0/NET2 ));
    IOPAD_IN \I2_pad[1]/U0/U0  (.PAD(I2[1]), .Y(\I2_pad[1]/U0/NET1 ));
    IOIN_IB \DSL_pad/U0/U1  (.YIN(\DSL_pad/U0/NET1 ), .Y(DSL_c));
    CLKIO \CP_pad/U0/U1  (.A(\CP_pad/U0/NET1 ), .Y(CP_c));
    IOPAD_IN \I1_pad[3]/U0/U0  (.PAD(I1[3]), .Y(\I1_pad[3]/U0/NET1 ));
    IOPAD_IN \B_pad[3]/U0/U0  (.PAD(B[3]), .Y(\B_pad[3]/U0/NET1 ));
    IOPAD_IN \I1_pad[2]/U0/U0  (.PAD(I1[2]), .Y(\I1_pad[2]/U0/NET1 ));
    DFN1C0 \HC194_0/QAUX[1]/U1  (.D(\HC194_0/QAUX[1]/Y ), .CLK(CP_c), 
        .CLR(MR_c), .Q(\Q_c[1] ));
    IOPAD_IN \S2_pad/U0/U0  (.PAD(S2), .Y(\S2_pad/U0/NET1 ));
    IOIN_IB \S_pad[1]/U0/U1  (.YIN(\S_pad[1]/U0/NET1 ), .Y(\S_c[1] ));
    IOIN_IB \S1_pad/U0/U1  (.YIN(\S1_pad/U0/NET1 ), .Y(S1_c));
    OR2B \HC00_0/un1_Y[2]  (.A(\B_c[3] ), .B(\A_c[3] ), .Y(\un1_Y[2] ));
    IOIN_IB \I1_pad[0]/U0/U1  (.YIN(\I1_pad[0]/U0/NET1 ), .Y(\I1_c[0] )
        );
    IOPAD_IN \D_pad[0]/U0/U0  (.PAD(D[0]), .Y(\D_pad[0]/U0/NET1 ));
    OR2B \HC00_0/un1_Y[3]  (.A(\B_c[4] ), .B(\A_c[4] ), .Y(\un1_Y[3] ));
    MX2 \HC194_0/QAUX[2]/U0  (.A(\D_c[2] ), .B(\Q_c[2] ), .S(
        \HC194_0/QAUX_5_sn_N_2 ), .Y(\HC194_0/QAUX[2]/Y ));
    OR2B \HC194_0/QAUX_5_sn_m1  (.A(\S_c[1] ), .B(\S_c[0] ), .Y(
        \HC194_0/QAUX_5_sn_N_2 ));
    IOPAD_IN \D_pad[2]/U0/U0  (.PAD(D[2]), .Y(\D_pad[2]/U0/NET1 ));
    IOPAD_IN \B_pad[4]/U0/U0  (.PAD(B[4]), .Y(\B_pad[4]/U0/NET1 ));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    IOPAD_IN \S_pad[0]/U0/U0  (.PAD(S[0]), .Y(\S_pad[0]/U0/NET1 ));
    IOTRI_OB_EB \Q_pad[0]/U0/U1  (.D(\Q_c[0] ), .E(VCC), .DOUT(
        \Q_pad[0]/U0/NET1 ), .EOUT(\Q_pad[0]/U0/NET2 ));
    IOIN_IB \B_pad[2]/U0/U1  (.YIN(\B_pad[2]/U0/NET1 ), .Y(\B_c[2] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
