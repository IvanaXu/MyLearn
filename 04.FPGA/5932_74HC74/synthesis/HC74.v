`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC74(
       D,
       Clk,
       Q,
       SD,
       RD,
       QN
    );
input  [1:2] D;
input  [1:2] Clk;
output [1:2] Q;
input  [1:2] SD;
input  [1:2] RD;
output [1:2] QN;

    wire GND, VCC, \D_c[2] , \D_c[1] , \Clk_c[2] , \Clk_c[1] , 
        \Q_1_c[2] , \Q_1_c[1] , \SD_c[2] , \SD_c[1] , \RD_c[2] , 
        \RD_c[1] , \Q_1_RNO[1]_net_1 , \Q_1_RNO[2]_net_1 , \SD_c_i[1] , 
        \SD_c_i[2] , \Q_1_c_i[1] , \Q_1_c_i[2] , GND_0, VCC_0;
    
    OUTBUF \Q_pad[1]  (.D(\Q_1_c[1] ), .PAD(Q[1]));
    INV \QN_pad_RNO[1]  (.A(\Q_1_c[1] ), .Y(\Q_1_c_i[1] ));
    OUTBUF \Q_pad[2]  (.D(\Q_1_c[2] ), .PAD(Q[2]));
    INBUF \SD_pad[1]  (.PAD(SD[1]), .Y(\SD_c[1] ));
    GND GND_i_0 (.Y(GND_0));
    INBUF \D_pad[1]  (.PAD(D[1]), .Y(\D_c[1] ));
    VCC VCC_i (.Y(VCC));
    DFN1P1C1 \Q_1[1]  (.D(\D_c[1] ), .CLK(\Clk_c[1] ), .PRE(
        \SD_c_i[1] ), .CLR(\Q_1_RNO[1]_net_1 ), .Q(\Q_1_c[1] ));
    NOR2A \Q_1_RNO[2]  (.A(\SD_c[2] ), .B(\RD_c[2] ), .Y(
        \Q_1_RNO[2]_net_1 ));
    INV \Q_1_RNO_0[2]  (.A(\SD_c[2] ), .Y(\SD_c_i[2] ));
    GND GND_i (.Y(GND));
    INBUF \Clk_pad[2]  (.PAD(Clk[2]), .Y(\Clk_c[2] ));
    INBUF \Clk_pad[1]  (.PAD(Clk[1]), .Y(\Clk_c[1] ));
    INBUF \RD_pad[2]  (.PAD(RD[2]), .Y(\RD_c[2] ));
    INV \Q_1_RNO_0[1]  (.A(\SD_c[1] ), .Y(\SD_c_i[1] ));
    VCC VCC_i_0 (.Y(VCC_0));
    INBUF \D_pad[2]  (.PAD(D[2]), .Y(\D_c[2] ));
    OUTBUF \QN_pad[1]  (.D(\Q_1_c_i[1] ), .PAD(QN[1]));
    NOR2A \Q_1_RNO[1]  (.A(\SD_c[1] ), .B(\RD_c[1] ), .Y(
        \Q_1_RNO[1]_net_1 ));
    INV \QN_pad_RNO[2]  (.A(\Q_1_c[2] ), .Y(\Q_1_c_i[2] ));
    OUTBUF \QN_pad[2]  (.D(\Q_1_c_i[2] ), .PAD(QN[2]));
    INBUF \SD_pad[2]  (.PAD(SD[2]), .Y(\SD_c[2] ));
    INBUF \RD_pad[1]  (.PAD(RD[1]), .Y(\RD_c[1] ));
    DFN1P1C1 \Q_1[2]  (.D(\D_c[2] ), .CLK(\Clk_c[2] ), .PRE(
        \SD_c_i[2] ), .CLR(\Q_1_RNO[2]_net_1 ), .Q(\Q_1_c[2] ));
    
endmodule
