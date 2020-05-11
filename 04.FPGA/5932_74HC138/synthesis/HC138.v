`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


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

    wire GND, VCC, \DataIn_c[0] , \DataIn_c[1] , \DataIn_c[2] , 
        \Dataout_c[0] , \Dataout_c[1] , \Dataout_c[2] , \Dataout_c[3] , 
        \Dataout_c[4] , \Dataout_c[5] , \Dataout_c[6] , \Dataout_c[7] , 
        G1_c, G2AN_c, G2BN_c, Dataout79, \_l3.Dataout39_1 , 
        \_l0.Dataout12_0 , \_l1.Dataout21_0 , \_l2.Dataout30_0 , 
        \_l4.Dataout48_0 , \_l5.Dataout57_0 , \_l6.Dataout66_0 , GND_0, 
        VCC_0;
    
    NOR2A \Dataout_pad_RNO_0[2]  (.A(\DataIn_c[1] ), .B(\DataIn_c[0] ), 
        .Y(\_l2.Dataout30_0 ));
    OA1C \Dataout_pad_RNO[2]  (.A(\_l2.Dataout30_0 ), .B(\DataIn_c[2] )
        , .C(Dataout79), .Y(\Dataout_c[2] ));
    OUTBUF \Dataout_pad[2]  (.D(\Dataout_c[2] ), .PAD(Dataout[2]));
    OR2 \Dataout_pad_RNO_0[0]  (.A(\DataIn_c[0] ), .B(\DataIn_c[1] ), 
        .Y(\_l0.Dataout12_0 ));
    INBUF G1_pad (.PAD(G1), .Y(G1_c));
    INBUF \DataIn_pad[2]  (.PAD(DataIn[2]), .Y(\DataIn_c[2] ));
    OR2A \Dataout_pad_RNO_0[4]  (.A(\DataIn_c[2] ), .B(\DataIn_c[0] ), 
        .Y(\_l4.Dataout48_0 ));
    OUTBUF \Dataout_pad[0]  (.D(\Dataout_c[0] ), .PAD(Dataout[0]));
    VCC VCC_i (.Y(VCC));
    OR2B \Dataout_pad_RNO_0[5]  (.A(\DataIn_c[0] ), .B(\DataIn_c[2] ), 
        .Y(\_l5.Dataout57_0 ));
    INBUF G2BN_pad (.PAD(G2BN), .Y(G2BN_c));
    OA1B \Dataout_pad_RNO[5]  (.A(\DataIn_c[1] ), .B(\_l5.Dataout57_0 )
        , .C(Dataout79), .Y(\Dataout_c[5] ));
    INBUF \DataIn_pad[0]  (.PAD(DataIn[0]), .Y(\DataIn_c[0] ));
    OUTBUF \Dataout_pad[7]  (.D(\Dataout_c[7] ), .PAD(Dataout[7]));
    OUTBUF \Dataout_pad[1]  (.D(\Dataout_c[1] ), .PAD(Dataout[1]));
    INBUF G2AN_pad (.PAD(G2AN), .Y(G2AN_c));
    AOI1 \Dataout_pad_RNO[7]  (.A(\_l3.Dataout39_1 ), .B(\DataIn_c[2] )
        , .C(Dataout79), .Y(\Dataout_c[7] ));
    OA1B \Dataout_pad_RNO[4]  (.A(\DataIn_c[1] ), .B(\_l4.Dataout48_0 )
        , .C(Dataout79), .Y(\Dataout_c[4] ));
    OR3C G2AN_pad_RNIRL86 (.A(G2AN_c), .B(G1_c), .C(G2BN_c), .Y(
        Dataout79));
    GND GND_i (.Y(GND));
    OA1C \Dataout_pad_RNO[3]  (.A(\_l3.Dataout39_1 ), .B(\DataIn_c[2] )
        , .C(Dataout79), .Y(\Dataout_c[3] ));
    INBUF \DataIn_pad[1]  (.PAD(DataIn[1]), .Y(\DataIn_c[1] ));
    NOR2B \Dataout_pad_RNO_0[6]  (.A(\DataIn_c[1] ), .B(\DataIn_c[2] ), 
        .Y(\_l6.Dataout66_0 ));
    OA1B \Dataout_pad_RNO[1]  (.A(\DataIn_c[2] ), .B(\_l1.Dataout21_0 )
        , .C(Dataout79), .Y(\Dataout_c[1] ));
    OUTBUF \Dataout_pad[3]  (.D(\Dataout_c[3] ), .PAD(Dataout[3]));
    OUTBUF \Dataout_pad[6]  (.D(\Dataout_c[6] ), .PAD(Dataout[6]));
    OUTBUF \Dataout_pad[4]  (.D(\Dataout_c[4] ), .PAD(Dataout[4]));
    OA1C \Dataout_pad_RNO[6]  (.A(\_l6.Dataout66_0 ), .B(\DataIn_c[0] )
        , .C(Dataout79), .Y(\Dataout_c[6] ));
    OA1B \Dataout_pad_RNO[0]  (.A(\DataIn_c[2] ), .B(\_l0.Dataout12_0 )
        , .C(Dataout79), .Y(\Dataout_c[0] ));
    OUTBUF \Dataout_pad[5]  (.D(\Dataout_c[5] ), .PAD(Dataout[5]));
    OR2A \Dataout_pad_RNO_0[1]  (.A(\DataIn_c[0] ), .B(\DataIn_c[1] ), 
        .Y(\_l1.Dataout21_0 ));
    NOR2B \DataIn_pad_RNIJEJ8[0]  (.A(\DataIn_c[1] ), .B(\DataIn_c[0] )
        , .Y(\_l3.Dataout39_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule
