`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module dymamic_led(
       Seg,
       Sl,
       Clk,
       Reset
    );
output [7:0] Seg;
output [3:0] Sl;
input  Clk;
input  Reset;

    wire \count[0]_net_1 , VCC, Disp_dat13, Disp_dat10, Disp_dat11, 
        Disp_dat12, SUM1_0, GND, Clk_c, Reset_c, \count[1]_net_1 , 
        \count_i[1] , Disp_dat10_i, \count_i[0] , GND_0, VCC_0;
    
    OR2A \count_RNIV63F_0[0]  (.A(\count[1]_net_1 ), .B(
        \count[0]_net_1 ), .Y(Disp_dat12));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    OUTBUF \Sl_pad[0]  (.D(Disp_dat10_i), .PAD(Sl[0]));
    OUTBUF \Seg_pad[5]  (.D(Disp_dat10), .PAD(Seg[5]));
    XOR2 un3_count_1_SUM1_0 (.A(\count[1]_net_1 ), .B(\count[0]_net_1 )
        , .Y(SUM1_0));
    GND GND_i_0 (.Y(GND_0));
    INV \count_RNIGLH7[1]  (.A(\count[1]_net_1 ), .Y(\count_i[1] ));
    OUTBUF \Sl_pad[1]  (.D(Disp_dat11), .PAD(Sl[1]));
    DFN1C1 \count[0]  (.D(\count_i[0] ), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\count[0]_net_1 ));
    OUTBUF \Seg_pad[2]  (.D(Disp_dat11), .PAD(Seg[2]));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Seg_pad[4]  (.D(\count_i[1] ), .PAD(Seg[4]));
    OUTBUF \Seg_pad[3]  (.D(\count_i[1] ), .PAD(Seg[3]));
    OR2A \count_RNIV63F[0]  (.A(\count[0]_net_1 ), .B(\count[1]_net_1 )
        , .Y(Disp_dat11));
    OUTBUF \Seg_pad[6]  (.D(\count_i[1] ), .PAD(Seg[6]));
    GND GND_i (.Y(GND));
    INBUF Reset_pad (.PAD(Reset), .Y(Reset_c));
    INV \Sl_pad_RNO[0]  (.A(Disp_dat10), .Y(Disp_dat10_i));
    VCC VCC_i_0 (.Y(VCC_0));
    OR2B \Sl_pad_RNO[3]  (.A(\count[1]_net_1 ), .B(\count[0]_net_1 ), 
        .Y(Disp_dat13));
    OUTBUF \Sl_pad[3]  (.D(Disp_dat13), .PAD(Sl[3]));
    OUTBUF \Sl_pad[2]  (.D(Disp_dat12), .PAD(Sl[2]));
    DFN1C1 \count[1]  (.D(SUM1_0), .CLK(Clk_c), .CLR(Reset_c), .Q(
        \count[1]_net_1 ));
    NOR2 \count_RNIV63F_1[0]  (.A(\count[1]_net_1 ), .B(
        \count[0]_net_1 ), .Y(Disp_dat10));
    OUTBUF \Seg_pad[1]  (.D(VCC), .PAD(Seg[1]));
    INV \count_RNO[0]  (.A(\count[0]_net_1 ), .Y(\count_i[0] ));
    OUTBUF \Seg_pad[7]  (.D(GND), .PAD(Seg[7]));
    OUTBUF \Seg_pad[0]  (.D(Disp_dat12), .PAD(Seg[0]));
    
endmodule
