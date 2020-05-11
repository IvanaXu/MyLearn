`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


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
        \Dataout_i[1]_net_1 , \Dataout_i_a2[2]_net_1 , GND, VCC, N_52, 
        N_53, N_55, N_51, N_49, \local.un1_DataIn_2 , 
        \local.un1_DataIn_3 , \local.un1_DataIn_4 , \DataIn_c[0] , 
        \DataIn_c[1] , \DataIn_c[2] , \DataIn_c[3] , \DataIn_c[4] , 
        \DataIn_c[5] , \DataIn_c[6] , \DataIn_c[7] , EI_c, GS_c, 
        \Dataout_i_a2_0[0]_net_1 , \local.un1_DataIn_0 , 
        \local.un1_DataIn_1 , \Dataout_i_a2_0[1]_net_1 , GND_0, VCC_0;
    
    NOR2B \DataIn_pad_RNINEJ8[2]  (.A(\DataIn_c[3] ), .B(\DataIn_c[2] )
        , .Y(\local.un1_DataIn_2 ));
    OR2B \DataIn_pad_RNIVEJ8[7]  (.A(\DataIn_c[7] ), .B(\DataIn_c[6] ), 
        .Y(\local.un1_DataIn_4 ));
    INBUF \DataIn_pad[4]  (.PAD(DataIn[4]), .Y(\DataIn_c[4] ));
    OUTBUF GS_pad (.D(GS_c), .PAD(GS));
    INBUF \DataIn_pad[5]  (.PAD(DataIn[5]), .Y(\DataIn_c[5] ));
    INBUF \DataIn_pad[7]  (.PAD(DataIn[7]), .Y(\DataIn_c[7] ));
    OUTBUF \Dataout_pad[2]  (.D(\Dataout_i_a2[2]_net_1 ), .PAD(
        Dataout[2]));
    INBUF \DataIn_pad[2]  (.PAD(DataIn[2]), .Y(\DataIn_c[2] ));
    OUTBUF \Dataout_pad[0]  (.D(\Dataout_i[0]_net_1 ), .PAD(Dataout[0])
        );
    VCC VCC_i (.Y(VCC));
    OUTBUF EO_pad (.D(\local.Dataout62_net_1 ), .PAD(EO));
    OR3B \local.Dataout62  (.A(\local.un1_DataIn_0 ), .B(
        \local.un1_DataIn_1 ), .C(EI_c), .Y(\local.Dataout62_net_1 ));
    NOR3 \Dataout_i[0]  (.A(N_52), .B(N_51), .C(N_53), .Y(
        \Dataout_i[0]_net_1 ));
    INBUF \DataIn_pad[0]  (.PAD(DataIn[0]), .Y(\DataIn_c[0] ));
    OUTBUF \Dataout_pad[1]  (.D(\Dataout_i[1]_net_1 ), .PAD(Dataout[1])
        );
    GND GND_i (.Y(GND));
    AO1D \Dataout_i_a2[2]  (.A(\local.un1_DataIn_4 ), .B(
        \local.un1_DataIn_3 ), .C(EI_c), .Y(\Dataout_i_a2[2]_net_1 ));
    NOR2 \Dataout_i_a2_0[0]  (.A(EI_c), .B(\DataIn_c[7] ), .Y(N_52));
    OR2 \Dataout_i_a2_0_0[1]  (.A(EI_c), .B(\local.un1_DataIn_2 ), .Y(
        \Dataout_i_a2_0[1]_net_1 ));
    AO1 GS_pad_RNO (.A(\local.un1_DataIn_1 ), .B(\local.un1_DataIn_0 ), 
        .C(EI_c), .Y(GS_c));
    OR2B \Dataout_i_a2_0_0[0]  (.A(\DataIn_c[4] ), .B(\DataIn_c[6] ), 
        .Y(\Dataout_i_a2_0[0]_net_1 ));
    INBUF \DataIn_pad[1]  (.PAD(DataIn[1]), .Y(\DataIn_c[1] ));
    INBUF EI_pad (.PAD(EI), .Y(EI_c));
    NOR2A \Dataout_i_a2_0[1]  (.A(\local.un1_DataIn_4 ), .B(EI_c), .Y(
        N_55));
    OA1A \Dataout_i_o2[0]  (.A(\DataIn_c[2] ), .B(\DataIn_c[1] ), .C(
        \DataIn_c[3] ), .Y(N_49));
    INBUF \DataIn_pad[6]  (.PAD(DataIn[6]), .Y(\DataIn_c[6] ));
    INBUF \DataIn_pad[3]  (.PAD(DataIn[3]), .Y(\DataIn_c[3] ));
    NOR3A \Dataout_i_a2_1[0]  (.A(\DataIn_c[6] ), .B(\DataIn_c[5] ), 
        .C(EI_c), .Y(N_53));
    NOR3A \DataIn_pad_RNIHCQP[2]  (.A(\local.un1_DataIn_2 ), .B(
        \local.un1_DataIn_3 ), .C(\local.un1_DataIn_4 ), .Y(
        \local.un1_DataIn_1 ));
    NOR3 \Dataout_i_a2[0]  (.A(N_49), .B(EI_c), .C(
        \Dataout_i_a2_0[0]_net_1 ), .Y(N_51));
    OA1B \Dataout_i[1]  (.A(\local.un1_DataIn_3 ), .B(
        \Dataout_i_a2_0[1]_net_1 ), .C(N_55), .Y(\Dataout_i[1]_net_1 ));
    OR2B \DataIn_pad_RNIREJ8[4]  (.A(\DataIn_c[5] ), .B(\DataIn_c[4] ), 
        .Y(\local.un1_DataIn_3 ));
    NOR2B \DataIn_pad_RNIJEJ8[0]  (.A(\DataIn_c[0] ), .B(\DataIn_c[1] )
        , .Y(\local.un1_DataIn_0 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule
