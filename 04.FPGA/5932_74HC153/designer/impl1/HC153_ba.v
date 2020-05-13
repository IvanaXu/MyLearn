`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module HC153(
       I1,
       I2,
       S1,
       S2,
       E1N,
       E2N,
       Y1,
       Y2
    );
input  [0:3] I1;
input  [0:3] I2;
input  S1;
input  S2;
input  E1N;
input  E2N;
output Y1;
output Y2;

    wire N_4, N_6, \I1_c[3] , \I1_c[2] , \I1_c[1] , \I1_c[0] , 
        \I2_c[3] , \I2_c[2] , \I2_c[1] , \I2_c[0] , S1_c, S2_c, E1N_c, 
        E2N_c, Y2_pad_RNO_2_net_1, Y2_pad_RNO_0_net_1, 
        Y1_pad_RNO_2_net_1, Y1_pad_RNO_0_net_1, Y2_iv_i_0, Y1_iv_i_0, 
        \I1_pad[1]/U0/NET1 , \I1_pad[3]/U0/NET1 , \I1_pad[0]/U0/NET1 , 
        \I1_pad[2]/U0/NET1 , \I2_pad[2]/U0/NET1 , \I2_pad[3]/U0/NET1 , 
        \S2_pad/U0/NET1 , \S1_pad/U0/NET1 , \I2_pad[1]/U0/NET1 , 
        \I2_pad[0]/U0/NET1 , \E2N_pad/U0/NET1 , \E1N_pad/U0/NET1 , 
        \Y2_pad/U0/NET1 , \Y2_pad/U0/NET2 , \Y1_pad/U0/NET1 , 
        \Y1_pad/U0/NET2 , VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \I2_pad[0]/U0/U1  (.YIN(\I2_pad[0]/U0/NET1 ), .Y(\I2_c[0] )
        );
    IOPAD_IN \I2_pad[2]/U0/U0  (.PAD(I2[2]), .Y(\I2_pad[2]/U0/NET1 ));
    IOPAD_IN \I1_pad[0]/U0/U0  (.PAD(I1[0]), .Y(\I1_pad[0]/U0/NET1 ));
    IOPAD_IN \I2_pad[3]/U0/U0  (.PAD(I2[3]), .Y(\I2_pad[3]/U0/NET1 ));
    IOPAD_IN \I1_pad[2]/U0/U0  (.PAD(I1[2]), .Y(\I1_pad[2]/U0/NET1 ));
    IOPAD_TRI \Y1_pad/U0/U0  (.D(\Y1_pad/U0/NET1 ), .E(
        \Y1_pad/U0/NET2 ), .PAD(Y1));
    IOIN_IB \S2_pad/U0/U1  (.YIN(\S2_pad/U0/NET1 ), .Y(S2_c));
    MX2 Y1_pad_RNO_0 (.A(\I1_c[0] ), .B(\I1_c[1] ), .S(S2_c), .Y(
        Y1_pad_RNO_0_net_1));
    IOPAD_IN \I1_pad[3]/U0/U0  (.PAD(I1[3]), .Y(\I1_pad[3]/U0/NET1 ));
    MX2 Y2_pad_RNO_2 (.A(\I2_c[2] ), .B(\I2_c[3] ), .S(S2_c), .Y(
        Y2_pad_RNO_2_net_1));
    MX2 Y1_pad_RNO_2 (.A(\I1_c[2] ), .B(\I1_c[3] ), .S(S2_c), .Y(
        Y1_pad_RNO_2_net_1));
    IOIN_IB \I2_pad[2]/U0/U1  (.YIN(\I2_pad[2]/U0/NET1 ), .Y(\I2_c[2] )
        );
    IOIN_IB \I1_pad[0]/U0/U1  (.YIN(\I1_pad[0]/U0/NET1 ), .Y(\I1_c[0] )
        );
    IOPAD_TRI \Y2_pad/U0/U0  (.D(\Y2_pad/U0/NET1 ), .E(
        \Y2_pad/U0/NET2 ), .PAD(Y2));
    IOIN_IB \S1_pad/U0/U1  (.YIN(\S1_pad/U0/NET1 ), .Y(S1_c));
    IOIN_IB \I2_pad[3]/U0/U1  (.YIN(\I2_pad[3]/U0/NET1 ), .Y(\I2_c[3] )
        );
    IOIN_IB \I1_pad[2]/U0/U1  (.YIN(\I1_pad[2]/U0/NET1 ), .Y(\I1_c[2] )
        );
    IOIN_IB \I1_pad[3]/U0/U1  (.YIN(\I1_pad[3]/U0/NET1 ), .Y(\I1_c[3] )
        );
    OA1B Y1_pad_RNO (.A(Y1_pad_RNO_0_net_1), .B(S1_c), .C(Y1_iv_i_0), 
        .Y(N_6));
    IOPAD_IN \I1_pad[1]/U0/U0  (.PAD(I1[1]), .Y(\I1_pad[1]/U0/NET1 ));
    AO1A Y2_pad_RNO_1 (.A(Y2_pad_RNO_2_net_1), .B(S1_c), .C(E2N_c), .Y(
        Y2_iv_i_0));
    IOPAD_IN \I2_pad[1]/U0/U0  (.PAD(I2[1]), .Y(\I2_pad[1]/U0/NET1 ));
    OA1B Y2_pad_RNO (.A(Y2_pad_RNO_0_net_1), .B(S1_c), .C(Y2_iv_i_0), 
        .Y(N_4));
    IOIN_IB \E1N_pad/U0/U1  (.YIN(\E1N_pad/U0/NET1 ), .Y(E1N_c));
    IOIN_IB \I1_pad[1]/U0/U1  (.YIN(\I1_pad[1]/U0/NET1 ), .Y(\I1_c[1] )
        );
    IOIN_IB \I2_pad[1]/U0/U1  (.YIN(\I2_pad[1]/U0/NET1 ), .Y(\I2_c[1] )
        );
    IOIN_IB \E2N_pad/U0/U1  (.YIN(\E2N_pad/U0/NET1 ), .Y(E2N_c));
    IOTRI_OB_EB \Y2_pad/U0/U1  (.D(N_4), .E(VCC), .DOUT(
        \Y2_pad/U0/NET1 ), .EOUT(\Y2_pad/U0/NET2 ));
    IOPAD_IN \S1_pad/U0/U0  (.PAD(S1), .Y(\S1_pad/U0/NET1 ));
    MX2 Y2_pad_RNO_0 (.A(\I2_c[0] ), .B(\I2_c[1] ), .S(S2_c), .Y(
        Y2_pad_RNO_0_net_1));
    IOPAD_IN \E1N_pad/U0/U0  (.PAD(E1N), .Y(\E1N_pad/U0/NET1 ));
    IOPAD_IN \I2_pad[0]/U0/U0  (.PAD(I2[0]), .Y(\I2_pad[0]/U0/NET1 ));
    IOTRI_OB_EB \Y1_pad/U0/U1  (.D(N_6), .E(VCC), .DOUT(
        \Y1_pad/U0/NET1 ), .EOUT(\Y1_pad/U0/NET2 ));
    IOPAD_IN \S2_pad/U0/U0  (.PAD(S2), .Y(\S2_pad/U0/NET1 ));
    AO1A Y1_pad_RNO_1 (.A(Y1_pad_RNO_2_net_1), .B(S1_c), .C(E1N_c), .Y(
        Y1_iv_i_0));
    IOPAD_IN \E2N_pad/U0/U0  (.PAD(E2N), .Y(\E2N_pad/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
