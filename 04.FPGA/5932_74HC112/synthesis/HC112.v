`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC112(
       J,
       K,
       Clk,
       SD,
       RD,
       Q,
       QN
    );
input  [1:2] J;
input  [1:2] K;
input  [1:2] Clk;
input  [1:2] SD;
input  [1:2] RD;
output [1:2] Q;
output [1:2] QN;

    wire \Q_1_RNO_0[2]_net_1 , \Q_1_RNO_0[1]_net_1 , GND, VCC, 
        \J_c[2] , \J_c[1] , \K_c[2] , \K_c[1] , \Clk_c[2] , \Clk_c[1] , 
        \SD_c[2] , \SD_c[1] , \RD_c[2] , \RD_c[1] , \Q_1_c[2] , 
        \Q_1_c[1] , \Q_1_RNO[2]_net_1 , \Q_1_RNO[1]_net_1 , 
        \Q_1_c_i[1] , \Q_1_c_i[2] , \SD_c_i[1] , \SD_c_i[2] , GND_0, 
        VCC_0;
    
    OUTBUF \Q_pad[1]  (.D(\Q_1_c[1] ), .PAD(Q[1]));
    INV \QN_pad_RNO[1]  (.A(\Q_1_c[1] ), .Y(\Q_1_c_i[1] ));
    INBUF \K_pad[1]  (.PAD(K[1]), .Y(\K_c[1] ));
    OUTBUF \Q_pad[2]  (.D(\Q_1_c[2] ), .PAD(Q[2]));
    INBUF \SD_pad[1]  (.PAD(SD[1]), .Y(\SD_c[1] ));
    GND GND_i_0 (.Y(GND_0));
    VCC VCC_i (.Y(VCC));
    DFN0P1C1 \Q_1[1]  (.D(\Q_1_RNO_0[1]_net_1 ), .CLK(\Clk_c[1] ), 
        .PRE(\SD_c_i[1] ), .CLR(\Q_1_RNO[1]_net_1 ), .Q(\Q_1_c[1] ));
    INV \Q_1_RNO_1[2]  (.A(\SD_c[2] ), .Y(\SD_c_i[2] ));
    NOR2A \Q_1_RNO[2]  (.A(\SD_c[2] ), .B(\RD_c[2] ), .Y(
        \Q_1_RNO[2]_net_1 ));
    MX2B \Q_1_RNO_0[2]  (.A(\J_c[2] ), .B(\K_c[2] ), .S(\Q_1_c[2] ), 
        .Y(\Q_1_RNO_0[2]_net_1 ));
    GND GND_i (.Y(GND));
    INBUF \J_pad[1]  (.PAD(J[1]), .Y(\J_c[1] ));
    INBUF \Clk_pad[2]  (.PAD(Clk[2]), .Y(\Clk_c[2] ));
    INBUF \K_pad[2]  (.PAD(K[2]), .Y(\K_c[2] ));
    INBUF \Clk_pad[1]  (.PAD(Clk[1]), .Y(\Clk_c[1] ));
    INBUF \RD_pad[2]  (.PAD(RD[2]), .Y(\RD_c[2] ));
    MX2B \Q_1_RNO_0[1]  (.A(\J_c[1] ), .B(\K_c[1] ), .S(\Q_1_c[1] ), 
        .Y(\Q_1_RNO_0[1]_net_1 ));
    INBUF \J_pad[2]  (.PAD(J[2]), .Y(\J_c[2] ));
    VCC VCC_i_0 (.Y(VCC_0));
    INV \Q_1_RNO_1[1]  (.A(\SD_c[1] ), .Y(\SD_c_i[1] ));
    OUTBUF \QN_pad[1]  (.D(\Q_1_c_i[1] ), .PAD(QN[1]));
    NOR2A \Q_1_RNO[1]  (.A(\SD_c[1] ), .B(\RD_c[1] ), .Y(
        \Q_1_RNO[1]_net_1 ));
    INV \QN_pad_RNO[2]  (.A(\Q_1_c[2] ), .Y(\Q_1_c_i[2] ));
    OUTBUF \QN_pad[2]  (.D(\Q_1_c_i[2] ), .PAD(QN[2]));
    INBUF \SD_pad[2]  (.PAD(SD[2]), .Y(\SD_c[2] ));
    INBUF \RD_pad[1]  (.PAD(RD[1]), .Y(\RD_c[1] ));
    DFN0P1C1 \Q_1[2]  (.D(\Q_1_RNO_0[2]_net_1 ), .CLK(\Clk_c[2] ), 
        .PRE(\SD_c_i[2] ), .CLR(\Q_1_RNO[2]_net_1 ), .Q(\Q_1_c[2] ));
    
endmodule
