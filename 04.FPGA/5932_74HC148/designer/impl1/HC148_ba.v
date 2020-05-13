`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module HC148(
       DataIn,
       EO,
       Dataout,
       EI,
       GS
    );
input  [7:0] DataIn;
output EO;
output [2:0] Dataout;
input  EI;
output GS;

    wire \local.Dataout62_net_1 , \Dataout_i[0]_net_1 , 
        \Dataout_i[1]_net_1 , \Dataout_i_a2[2]_net_1 , N_52, N_53, 
        N_55, N_51, N_49, \local.un1_DataIn_2 , \local.un1_DataIn_3 , 
        \local.un1_DataIn_4 , \DataIn_c[0] , \DataIn_c[1] , 
        \DataIn_c[2] , \DataIn_c[3] , \DataIn_c[4] , \DataIn_c[5] , 
        \DataIn_c[6] , \DataIn_c[7] , EI_c, GS_c, 
        \Dataout_i_a2_0[0]_net_1 , \local.un1_DataIn_0 , 
        \local.un1_DataIn_1 , \Dataout_i_a2_0[1]_net_1 , 
        \DataIn_pad[4]/U0/NET1 , \GS_pad/U0/NET1 , \GS_pad/U0/NET2 , 
        \DataIn_pad[5]/U0/NET1 , \DataIn_pad[7]/U0/NET1 , 
        \Dataout_pad[2]/U0/NET1 , \Dataout_pad[2]/U0/NET2 , 
        \DataIn_pad[2]/U0/NET1 , \Dataout_pad[0]/U0/NET1 , 
        \Dataout_pad[0]/U0/NET2 , \EO_pad/U0/NET1 , \EO_pad/U0/NET2 , 
        \DataIn_pad[0]/U0/NET1 , \Dataout_pad[1]/U0/NET1 , 
        \Dataout_pad[1]/U0/NET2 , VCC, \DataIn_pad[1]/U0/NET1 , 
        \EI_pad/U0/NET1 , \DataIn_pad[6]/U0/NET1 , 
        \DataIn_pad[3]/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2B \DataIn_pad_RNINEJ8[2]  (.A(\DataIn_c[3] ), .B(\DataIn_c[2] )
        , .Y(\local.un1_DataIn_2 ));
    OR2B \DataIn_pad_RNIVEJ8[7]  (.A(\DataIn_c[7] ), .B(\DataIn_c[6] ), 
        .Y(\local.un1_DataIn_4 ));
    IOPAD_IN \EI_pad/U0/U0  (.PAD(EI), .Y(\EI_pad/U0/NET1 ));
    IOPAD_TRI \EO_pad/U0/U0  (.D(\EO_pad/U0/NET1 ), .E(
        \EO_pad/U0/NET2 ), .PAD(EO));
    IOTRI_OB_EB \Dataout_pad[0]/U0/U1  (.D(\Dataout_i[0]_net_1 ), .E(
        VCC), .DOUT(\Dataout_pad[0]/U0/NET1 ), .EOUT(
        \Dataout_pad[0]/U0/NET2 ));
    IOPAD_IN \DataIn_pad[1]/U0/U0  (.PAD(DataIn[1]), .Y(
        \DataIn_pad[1]/U0/NET1 ));
    IOTRI_OB_EB \Dataout_pad[1]/U0/U1  (.D(\Dataout_i[1]_net_1 ), .E(
        VCC), .DOUT(\Dataout_pad[1]/U0/NET1 ), .EOUT(
        \Dataout_pad[1]/U0/NET2 ));
    IOPAD_TRI \Dataout_pad[2]/U0/U0  (.D(\Dataout_pad[2]/U0/NET1 ), .E(
        \Dataout_pad[2]/U0/NET2 ), .PAD(Dataout[2]));
    IOIN_IB \DataIn_pad[1]/U0/U1  (.YIN(\DataIn_pad[1]/U0/NET1 ), .Y(
        \DataIn_c[1] ));
    OR3B \local.Dataout62  (.A(\local.un1_DataIn_0 ), .B(
        \local.un1_DataIn_1 ), .C(EI_c), .Y(\local.Dataout62_net_1 ));
    NOR3 \Dataout_i[0]  (.A(N_52), .B(N_51), .C(N_53), .Y(
        \Dataout_i[0]_net_1 ));
    IOPAD_IN \DataIn_pad[5]/U0/U0  (.PAD(DataIn[5]), .Y(
        \DataIn_pad[5]/U0/NET1 ));
    IOTRI_OB_EB \EO_pad/U0/U1  (.D(\local.Dataout62_net_1 ), .E(VCC), 
        .DOUT(\EO_pad/U0/NET1 ), .EOUT(\EO_pad/U0/NET2 ));
    IOPAD_IN \DataIn_pad[6]/U0/U0  (.PAD(DataIn[6]), .Y(
        \DataIn_pad[6]/U0/NET1 ));
    IOTRI_OB_EB \GS_pad/U0/U1  (.D(GS_c), .E(VCC), .DOUT(
        \GS_pad/U0/NET1 ), .EOUT(\GS_pad/U0/NET2 ));
    IOPAD_TRI \GS_pad/U0/U0  (.D(\GS_pad/U0/NET1 ), .E(
        \GS_pad/U0/NET2 ), .PAD(GS));
    AO1D \Dataout_i_a2[2]  (.A(\local.un1_DataIn_4 ), .B(
        \local.un1_DataIn_3 ), .C(EI_c), .Y(\Dataout_i_a2[2]_net_1 ));
    NOR2 \Dataout_i_a2_0[0]  (.A(EI_c), .B(\DataIn_c[7] ), .Y(N_52));
    IOIN_IB \DataIn_pad[5]/U0/U1  (.YIN(\DataIn_pad[5]/U0/NET1 ), .Y(
        \DataIn_c[5] ));
    OR2 \Dataout_i_a2_0_0[1]  (.A(EI_c), .B(\local.un1_DataIn_2 ), .Y(
        \Dataout_i_a2_0[1]_net_1 ));
    AO1 GS_pad_RNO (.A(\local.un1_DataIn_1 ), .B(\local.un1_DataIn_0 ), 
        .C(EI_c), .Y(GS_c));
    OR2B \Dataout_i_a2_0_0[0]  (.A(\DataIn_c[4] ), .B(\DataIn_c[6] ), 
        .Y(\Dataout_i_a2_0[0]_net_1 ));
    IOIN_IB \DataIn_pad[6]/U0/U1  (.YIN(\DataIn_pad[6]/U0/NET1 ), .Y(
        \DataIn_c[6] ));
    IOPAD_IN \DataIn_pad[7]/U0/U0  (.PAD(DataIn[7]), .Y(
        \DataIn_pad[7]/U0/NET1 ));
    IOPAD_IN \DataIn_pad[4]/U0/U0  (.PAD(DataIn[4]), .Y(
        \DataIn_pad[4]/U0/NET1 ));
    NOR2A \Dataout_i_a2_0[1]  (.A(\local.un1_DataIn_4 ), .B(EI_c), .Y(
        N_55));
    IOPAD_IN \DataIn_pad[3]/U0/U0  (.PAD(DataIn[3]), .Y(
        \DataIn_pad[3]/U0/NET1 ));
    OA1A \Dataout_i_o2[0]  (.A(\DataIn_c[2] ), .B(\DataIn_c[1] ), .C(
        \DataIn_c[3] ), .Y(N_49));
    IOIN_IB \EI_pad/U0/U1  (.YIN(\EI_pad/U0/NET1 ), .Y(EI_c));
    IOPAD_IN \DataIn_pad[2]/U0/U0  (.PAD(DataIn[2]), .Y(
        \DataIn_pad[2]/U0/NET1 ));
    IOTRI_OB_EB \Dataout_pad[2]/U0/U1  (.D(\Dataout_i_a2[2]_net_1 ), 
        .E(VCC), .DOUT(\Dataout_pad[2]/U0/NET1 ), .EOUT(
        \Dataout_pad[2]/U0/NET2 ));
    IOPAD_IN \DataIn_pad[0]/U0/U0  (.PAD(DataIn[0]), .Y(
        \DataIn_pad[0]/U0/NET1 ));
    NOR3A \Dataout_i_a2_1[0]  (.A(\DataIn_c[6] ), .B(\DataIn_c[5] ), 
        .C(EI_c), .Y(N_53));
    NOR3A \DataIn_pad_RNIHCQP[2]  (.A(\local.un1_DataIn_2 ), .B(
        \local.un1_DataIn_3 ), .C(\local.un1_DataIn_4 ), .Y(
        \local.un1_DataIn_1 ));
    IOIN_IB \DataIn_pad[7]/U0/U1  (.YIN(\DataIn_pad[7]/U0/NET1 ), .Y(
        \DataIn_c[7] ));
    IOIN_IB \DataIn_pad[4]/U0/U1  (.YIN(\DataIn_pad[4]/U0/NET1 ), .Y(
        \DataIn_c[4] ));
    IOPAD_TRI \Dataout_pad[0]/U0/U0  (.D(\Dataout_pad[0]/U0/NET1 ), .E(
        \Dataout_pad[0]/U0/NET2 ), .PAD(Dataout[0]));
    NOR3 \Dataout_i_a2[0]  (.A(N_49), .B(EI_c), .C(
        \Dataout_i_a2_0[0]_net_1 ), .Y(N_51));
    IOIN_IB \DataIn_pad[3]/U0/U1  (.YIN(\DataIn_pad[3]/U0/NET1 ), .Y(
        \DataIn_c[3] ));
    IOPAD_TRI \Dataout_pad[1]/U0/U0  (.D(\Dataout_pad[1]/U0/NET1 ), .E(
        \Dataout_pad[1]/U0/NET2 ), .PAD(Dataout[1]));
    IOIN_IB \DataIn_pad[2]/U0/U1  (.YIN(\DataIn_pad[2]/U0/NET1 ), .Y(
        \DataIn_c[2] ));
    IOIN_IB \DataIn_pad[0]/U0/U1  (.YIN(\DataIn_pad[0]/U0/NET1 ), .Y(
        \DataIn_c[0] ));
    OA1B \Dataout_i[1]  (.A(\local.un1_DataIn_3 ), .B(
        \Dataout_i_a2_0[1]_net_1 ), .C(N_55), .Y(\Dataout_i[1]_net_1 ));
    OR2B \DataIn_pad_RNIREJ8[4]  (.A(\DataIn_c[5] ), .B(\DataIn_c[4] ), 
        .Y(\local.un1_DataIn_3 ));
    NOR2B \DataIn_pad_RNIJEJ8[0]  (.A(\DataIn_c[0] ), .B(\DataIn_c[1] )
        , .Y(\local.un1_DataIn_0 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
