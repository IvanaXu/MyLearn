`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module HC85(
       A,
       B,
       QAGB,
       QASB,
       QAEB,
       IAGB,
       IASB,
       IAEB
    );
input  [3:0] A;
input  [3:0] B;
output QAGB;
output QASB;
output QAEB;
input  IAGB;
input  IASB;
input  IAEB;

    wire QAGB16, QAGB17, un1_A_li, N_6, 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] , 
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] , 
        \A_c[0] , \A_c[1] , \A_c[2] , \A_c[3] , \B_c[0] , \B_c[1] , 
        \B_c[2] , \B_c[3] , N_4_c, QASB_c, GND, IAGB_c, IASB_c, IAEB_c, 
        un1_A_1_i, un1_A_2_i, un1_A_3_i, QASB_0_0_a3_0, un1_A_NE_0, 
        \B_pad[3]/U0/NET1 , \IASB_pad/U0/NET1 , \QAGB_pad/U0/NET1 , 
        \QAGB_pad/U0/NET2 , \B_pad[2]/U0/NET1 , \A_pad[3]/U0/NET1 , 
        \IAGB_pad/U0/NET1 , \QASB_pad/U0/NET1 , \QASB_pad/U0/NET2 , 
        \B_pad[1]/U0/NET1 , \A_pad[0]/U0/NET1 , \B_pad[0]/U0/NET1 , 
        \A_pad[2]/U0/NET1 , \IAEB_pad/U0/NET1 , \QAEB_pad/U0/NET1 , 
        \QAEB_pad/U0/NET2 , VCC, \A_pad[1]/U0/NET1 , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_TRI \QAGB_pad/U0/U0  (.D(\QAGB_pad/U0/NET1 ), .E(
        \QAGB_pad/U0/NET2 ), .PAD(QAGB));
    AND2A QAGB17_0_I_3 (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    OR2A QAGB17_0_I_2 (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    IOIN_IB \B_pad[1]/U0/U1  (.YIN(\B_pad[1]/U0/NET1 ), .Y(\B_c[1] ));
    IOIN_IB \IAGB_pad/U0/U1  (.YIN(\IAGB_pad/U0/NET1 ), .Y(IAGB_c));
    NOR2A QAGB_pad_RNO_0 (.A(IASB_c), .B(IAEB_c), .Y(N_6));
    IOIN_IB \B_pad[3]/U0/U1  (.YIN(\B_pad[3]/U0/NET1 ), .Y(\B_c[3] ));
    AO1D QAGB_pad_RNO (.A(un1_A_li), .B(N_6), .C(QAGB16), .Y(N_4_c));
    IOPAD_IN \IASB_pad/U0/U0  (.PAD(IASB), .Y(\IASB_pad/U0/NET1 ));
    OR2A QAGB16_0_I_9 (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    AOI1A QAGB16_0_I_7 (.A(\B_c[2] ), .B(\A_c[2] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    IOIN_IB \A_pad[0]/U0/U1  (.YIN(\A_pad[0]/U0/NET1 ), .Y(\A_c[0] ));
    XNOR2 \A_pad_RNIR2I3[1]  (.A(\B_c[1] ), .B(\A_c[1] ), .Y(un1_A_1_i)
        );
    OR2A QAGB16_0_I_2 (.A(\A_c[1] ), .B(\B_c[1] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ));
    NOR2A QAGB16_0_I_1 (.A(\A_c[0] ), .B(\B_c[0] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    IOPAD_IN \B_pad[0]/U0/U0  (.PAD(B[0]), .Y(\B_pad[0]/U0/NET1 ));
    AOI1A QAGB17_0_I_11 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB17));
    IOIN_IB \IAEB_pad/U0/U1  (.YIN(\IAEB_pad/U0/NET1 ), .Y(IAEB_c));
    OR2A QAGB17_0_I_9 (.A(\A_c[3] ), .B(\B_c[3] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ));
    AOI1A QAGB17_0_I_4 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    IOPAD_IN \IAGB_pad/U0/U0  (.PAD(IAGB), .Y(\IAGB_pad/U0/NET1 ));
    IOIN_IB \B_pad[2]/U0/U1  (.YIN(\B_pad[2]/U0/NET1 ), .Y(\B_c[2] ));
    IOPAD_IN \B_pad[1]/U0/U0  (.PAD(B[1]), .Y(\B_pad[1]/U0/NET1 ));
    IOPAD_IN \B_pad[3]/U0/U0  (.PAD(B[3]), .Y(\B_pad[3]/U0/NET1 ));
    IOTRI_OB_EB \QASB_pad/U0/U1  (.D(QASB_c), .E(VCC), .DOUT(
        \QASB_pad/U0/NET1 ), .EOUT(\QASB_pad/U0/NET2 ));
    IOTRI_OB_EB \QAEB_pad/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \QAEB_pad/U0/NET1 ), .EOUT(\QAEB_pad/U0/NET2 ));
    OR3C \A_pad_RNIGR8E[0]  (.A(un1_A_3_i), .B(un1_A_2_i), .C(
        un1_A_NE_0), .Y(un1_A_li));
    XA1A \A_pad_RNIKT37[0]  (.A(\A_c[0] ), .B(\B_c[0] ), .C(un1_A_1_i), 
        .Y(un1_A_NE_0));
    IOPAD_IN \A_pad[0]/U0/U0  (.PAD(A[0]), .Y(\A_pad[0]/U0/NET1 ));
    AO1D QASB_pad_RNO (.A(QASB_0_0_a3_0), .B(un1_A_li), .C(QAGB17), .Y(
        QASB_c));
    AOI1A QAGB17_0_I_10 (.A(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    XNOR2 \A_pad_RNIVII3[3]  (.A(\B_c[3] ), .B(\A_c[3] ), .Y(un1_A_3_i)
        );
    NOR2A QAGB17_0_I_6 (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    IOPAD_IN \IAEB_pad/U0/U0  (.PAD(IAEB), .Y(\IAEB_pad/U0/NET1 ));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    AOI1A QAGB16_0_I_11 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ), .Y(
        QAGB16));
    IOTRI_OB_EB \QAGB_pad/U0/U1  (.D(N_4_c), .E(VCC), .DOUT(
        \QAGB_pad/U0/NET1 ), .EOUT(\QAGB_pad/U0/NET2 ));
    NOR2A QAGB16_0_I_6 (.A(\A_c[3] ), .B(\B_c[3] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ));
    IOIN_IB \IASB_pad/U0/U1  (.YIN(\IASB_pad/U0/NET1 ), .Y(IASB_c));
    IOPAD_IN \B_pad[2]/U0/U0  (.PAD(B[2]), .Y(\B_pad[2]/U0/NET1 ));
    OR2 QASB_pad_RNO_0 (.A(IAEB_c), .B(IAGB_c), .Y(QASB_0_0_a3_0));
    IOPAD_TRI \QASB_pad/U0/U0  (.D(\QASB_pad/U0/NET1 ), .E(
        \QASB_pad/U0/NET2 ), .PAD(QASB));
    IOPAD_TRI \QAEB_pad/U0/U0  (.D(\QAEB_pad/U0/NET1 ), .E(
        \QAEB_pad/U0/NET2 ), .PAD(QAEB));
    AND2A QAGB16_0_I_3 (.A(\A_c[1] ), .B(\B_c[1] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ));
    AOI1A QAGB17_0_I_7 (.A(\A_c[2] ), .B(\B_c[2] ), .C(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[6] ));
    NOR2A QAGB17_0_I_1 (.A(\B_c[0] ), .B(\A_c[0] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ));
    AOI1A QAGB16_0_I_4 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[0] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[1] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[2] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[3] ));
    AOI1A QAGB16_0_I_10 (.A(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ), .B(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[8] ), .C(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[5] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[10] ));
    IOIN_IB \B_pad[0]/U0/U1  (.YIN(\B_pad[0]/U0/NET1 ), .Y(\B_c[0] ));
    XNOR2 \A_pad_RNITAI3[2]  (.A(\B_c[2] ), .B(\A_c[2] ), .Y(un1_A_2_i)
        );
    NOR2A QAGB17_0_I_8 (.A(\A_c[2] ), .B(\B_c[2] ), .Y(
        \QAGB17_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    NOR2A QAGB16_0_I_8 (.A(\B_c[2] ), .B(\A_c[2] ), .Y(
        \QAGB16_0.DWACT_COMP0_IF1_4.IF_equal_40.ACT_LT4_E[7] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
