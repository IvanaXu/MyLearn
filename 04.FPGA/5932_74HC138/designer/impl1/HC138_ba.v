`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module HC138(
       DataIn,
       Dataout,
       G1,
       G2AN,
       G2BN
    );
input  [2:0] DataIn;
output [7:0] Dataout;
input  G1;
input  G2AN;
input  G2BN;

    wire \DataIn_c[0] , \DataIn_c[1] , \DataIn_c[2] , \Dataout_c[0] , 
        \Dataout_c[1] , \Dataout_c[2] , \Dataout_c[3] , \Dataout_c[4] , 
        \Dataout_c[5] , \Dataout_c[6] , \Dataout_c[7] , G1_c, G2AN_c, 
        G2BN_c, Dataout79, \_l3.Dataout39_1 , \_l0.Dataout12_0 , 
        \_l1.Dataout21_0 , \_l2.Dataout30_0 , \_l4.Dataout48_0 , 
        \_l5.Dataout57_0 , \_l6.Dataout66_0 , \Dataout_pad[2]/U0/NET1 , 
        \Dataout_pad[2]/U0/NET2 , \G1_pad/U0/NET1 , 
        \DataIn_pad[2]/U0/NET1 , \Dataout_pad[0]/U0/NET1 , 
        \Dataout_pad[0]/U0/NET2 , \G2BN_pad/U0/NET1 , 
        \DataIn_pad[0]/U0/NET1 , \Dataout_pad[7]/U0/NET1 , 
        \Dataout_pad[7]/U0/NET2 , \Dataout_pad[1]/U0/NET1 , 
        \Dataout_pad[1]/U0/NET2 , \G2AN_pad/U0/NET1 , 
        \DataIn_pad[1]/U0/NET1 , \Dataout_pad[3]/U0/NET1 , 
        \Dataout_pad[3]/U0/NET2 , \Dataout_pad[6]/U0/NET1 , 
        \Dataout_pad[6]/U0/NET2 , \Dataout_pad[4]/U0/NET1 , 
        \Dataout_pad[4]/U0/NET2 , \Dataout_pad[5]/U0/NET1 , 
        \Dataout_pad[5]/U0/NET2 , VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2A \Dataout_pad_RNO_0[2]  (.A(\DataIn_c[1] ), .B(\DataIn_c[0] ), 
        .Y(\_l2.Dataout30_0 ));
    OA1C \Dataout_pad_RNO[2]  (.A(\_l2.Dataout30_0 ), .B(\DataIn_c[2] )
        , .C(Dataout79), .Y(\Dataout_c[2] ));
    OR2 \Dataout_pad_RNO_0[0]  (.A(\DataIn_c[0] ), .B(\DataIn_c[1] ), 
        .Y(\_l0.Dataout12_0 ));
    IOTRI_OB_EB \Dataout_pad[0]/U0/U1  (.D(\Dataout_c[0] ), .E(VCC), 
        .DOUT(\Dataout_pad[0]/U0/NET1 ), .EOUT(
        \Dataout_pad[0]/U0/NET2 ));
    IOPAD_IN \DataIn_pad[1]/U0/U0  (.PAD(DataIn[1]), .Y(
        \DataIn_pad[1]/U0/NET1 ));
    OR2A \Dataout_pad_RNO_0[4]  (.A(\DataIn_c[2] ), .B(\DataIn_c[0] ), 
        .Y(\_l4.Dataout48_0 ));
    IOIN_IB \G2BN_pad/U0/U1  (.YIN(\G2BN_pad/U0/NET1 ), .Y(G2BN_c));
    IOTRI_OB_EB \Dataout_pad[7]/U0/U1  (.D(\Dataout_c[7] ), .E(VCC), 
        .DOUT(\Dataout_pad[7]/U0/NET1 ), .EOUT(
        \Dataout_pad[7]/U0/NET2 ));
    IOPAD_TRI \Dataout_pad[6]/U0/U0  (.D(\Dataout_pad[6]/U0/NET1 ), .E(
        \Dataout_pad[6]/U0/NET2 ), .PAD(Dataout[6]));
    IOTRI_OB_EB \Dataout_pad[1]/U0/U1  (.D(\Dataout_c[1] ), .E(VCC), 
        .DOUT(\Dataout_pad[1]/U0/NET1 ), .EOUT(
        \Dataout_pad[1]/U0/NET2 ));
    OR2B \Dataout_pad_RNO_0[5]  (.A(\DataIn_c[0] ), .B(\DataIn_c[2] ), 
        .Y(\_l5.Dataout57_0 ));
    IOTRI_OB_EB \Dataout_pad[5]/U0/U1  (.D(\Dataout_c[5] ), .E(VCC), 
        .DOUT(\Dataout_pad[5]/U0/NET1 ), .EOUT(
        \Dataout_pad[5]/U0/NET2 ));
    IOIN_IB \G2AN_pad/U0/U1  (.YIN(\G2AN_pad/U0/NET1 ), .Y(G2AN_c));
    IOPAD_TRI \Dataout_pad[2]/U0/U0  (.D(\Dataout_pad[2]/U0/NET1 ), .E(
        \Dataout_pad[2]/U0/NET2 ), .PAD(Dataout[2]));
    IOTRI_OB_EB \Dataout_pad[4]/U0/U1  (.D(\Dataout_c[4] ), .E(VCC), 
        .DOUT(\Dataout_pad[4]/U0/NET1 ), .EOUT(
        \Dataout_pad[4]/U0/NET2 ));
    IOPAD_TRI \Dataout_pad[3]/U0/U0  (.D(\Dataout_pad[3]/U0/NET1 ), .E(
        \Dataout_pad[3]/U0/NET2 ), .PAD(Dataout[3]));
    IOIN_IB \DataIn_pad[1]/U0/U1  (.YIN(\DataIn_pad[1]/U0/NET1 ), .Y(
        \DataIn_c[1] ));
    OA1B \Dataout_pad_RNO[5]  (.A(\DataIn_c[1] ), .B(\_l5.Dataout57_0 )
        , .C(Dataout79), .Y(\Dataout_c[5] ));
    IOIN_IB \G1_pad/U0/U1  (.YIN(\G1_pad/U0/NET1 ), .Y(G1_c));
    AOI1 \Dataout_pad_RNO[7]  (.A(\_l3.Dataout39_1 ), .B(\DataIn_c[2] )
        , .C(Dataout79), .Y(\Dataout_c[7] ));
    OA1B \Dataout_pad_RNO[4]  (.A(\DataIn_c[1] ), .B(\_l4.Dataout48_0 )
        , .C(Dataout79), .Y(\Dataout_c[4] ));
    OR3C G2AN_pad_RNIRL86 (.A(G2AN_c), .B(G1_c), .C(G2BN_c), .Y(
        Dataout79));
    OA1C \Dataout_pad_RNO[3]  (.A(\_l3.Dataout39_1 ), .B(\DataIn_c[2] )
        , .C(Dataout79), .Y(\Dataout_c[3] ));
    IOTRI_OB_EB \Dataout_pad[6]/U0/U1  (.D(\Dataout_c[6] ), .E(VCC), 
        .DOUT(\Dataout_pad[6]/U0/NET1 ), .EOUT(
        \Dataout_pad[6]/U0/NET2 ));
    NOR2B \Dataout_pad_RNO_0[6]  (.A(\DataIn_c[1] ), .B(\DataIn_c[2] ), 
        .Y(\_l6.Dataout66_0 ));
    IOPAD_IN \DataIn_pad[2]/U0/U0  (.PAD(DataIn[2]), .Y(
        \DataIn_pad[2]/U0/NET1 ));
    IOTRI_OB_EB \Dataout_pad[2]/U0/U1  (.D(\Dataout_c[2] ), .E(VCC), 
        .DOUT(\Dataout_pad[2]/U0/NET1 ), .EOUT(
        \Dataout_pad[2]/U0/NET2 ));
    IOTRI_OB_EB \Dataout_pad[3]/U0/U1  (.D(\Dataout_c[3] ), .E(VCC), 
        .DOUT(\Dataout_pad[3]/U0/NET1 ), .EOUT(
        \Dataout_pad[3]/U0/NET2 ));
    IOPAD_IN \DataIn_pad[0]/U0/U0  (.PAD(DataIn[0]), .Y(
        \DataIn_pad[0]/U0/NET1 ));
    IOPAD_IN \G2BN_pad/U0/U0  (.PAD(G2BN), .Y(\G2BN_pad/U0/NET1 ));
    IOPAD_TRI \Dataout_pad[0]/U0/U0  (.D(\Dataout_pad[0]/U0/NET1 ), .E(
        \Dataout_pad[0]/U0/NET2 ), .PAD(Dataout[0]));
    IOPAD_TRI \Dataout_pad[7]/U0/U0  (.D(\Dataout_pad[7]/U0/NET1 ), .E(
        \Dataout_pad[7]/U0/NET2 ), .PAD(Dataout[7]));
    OA1B \Dataout_pad_RNO[1]  (.A(\DataIn_c[2] ), .B(\_l1.Dataout21_0 )
        , .C(Dataout79), .Y(\Dataout_c[1] ));
    IOPAD_TRI \Dataout_pad[1]/U0/U0  (.D(\Dataout_pad[1]/U0/NET1 ), .E(
        \Dataout_pad[1]/U0/NET2 ), .PAD(Dataout[1]));
    IOPAD_TRI \Dataout_pad[5]/U0/U0  (.D(\Dataout_pad[5]/U0/NET1 ), .E(
        \Dataout_pad[5]/U0/NET2 ), .PAD(Dataout[5]));
    IOPAD_IN \G2AN_pad/U0/U0  (.PAD(G2AN), .Y(\G2AN_pad/U0/NET1 ));
    IOIN_IB \DataIn_pad[2]/U0/U1  (.YIN(\DataIn_pad[2]/U0/NET1 ), .Y(
        \DataIn_c[2] ));
    IOPAD_IN \G1_pad/U0/U0  (.PAD(G1), .Y(\G1_pad/U0/NET1 ));
    IOIN_IB \DataIn_pad[0]/U0/U1  (.YIN(\DataIn_pad[0]/U0/NET1 ), .Y(
        \DataIn_c[0] ));
    OA1C \Dataout_pad_RNO[6]  (.A(\_l6.Dataout66_0 ), .B(\DataIn_c[0] )
        , .C(Dataout79), .Y(\Dataout_c[6] ));
    IOPAD_TRI \Dataout_pad[4]/U0/U0  (.D(\Dataout_pad[4]/U0/NET1 ), .E(
        \Dataout_pad[4]/U0/NET2 ), .PAD(Dataout[4]));
    OA1B \Dataout_pad_RNO[0]  (.A(\DataIn_c[2] ), .B(\_l0.Dataout12_0 )
        , .C(Dataout79), .Y(\Dataout_c[0] ));
    OR2A \Dataout_pad_RNO_0[1]  (.A(\DataIn_c[0] ), .B(\DataIn_c[1] ), 
        .Y(\_l1.Dataout21_0 ));
    NOR2B \DataIn_pad_RNIJEJ8[0]  (.A(\DataIn_c[1] ), .B(\DataIn_c[0] )
        , .Y(\_l3.Dataout39_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
