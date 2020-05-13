`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire \Q_1_RNO_0[2]_net_1 , \Q_1_RNO_0[1]_net_1 , \J_c[2] , 
        \J_c[1] , \K_c[2] , \K_c[1] , \Clk_c[2] , \Clk_c[1] , 
        \SD_c[2] , \SD_c[1] , \RD_c[2] , \RD_c[1] , \Q_1_c[2] , 
        \Q_1_c[1] , \Q_1_RNO[2]_net_1 , \Q_1_RNO[1]_net_1 , 
        \Q_1_c_i[1] , \Q_1_c_i[2] , \SD_c_i[1] , \SD_c_i[2] , 
        \Q_pad[1]/U0/NET1 , \Q_pad[1]/U0/NET2 , \K_pad[1]/U0/NET1 , 
        \Q_pad[2]/U0/NET1 , \Q_pad[2]/U0/NET2 , \SD_pad[1]/U0/NET1 , 
        \J_pad[1]/U0/NET1 , \Clk_pad[2]/U0/NET1 , \K_pad[2]/U0/NET1 , 
        \Clk_pad[1]/U0/NET1 , \RD_pad[2]/U0/NET1 , \J_pad[2]/U0/NET1 , 
        \QN_pad[1]/U0/NET1 , \QN_pad[1]/U0/NET2 , \QN_pad[2]/U0/NET1 , 
        \QN_pad[2]/U0/NET2 , VCC, \SD_pad[2]/U0/NET1 , 
        \RD_pad[1]/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \J_pad[1]/U0/U0  (.PAD(J[1]), .Y(\J_pad[1]/U0/NET1 ));
    MX2B \Q_1_RNO_0[1]  (.A(\J_c[1] ), .B(\K_c[1] ), .S(\Q_1_c[1] ), 
        .Y(\Q_1_RNO_0[1]_net_1 ));
    IOIN_IB \SD_pad[1]/U0/U1  (.YIN(\SD_pad[1]/U0/NET1 ), .Y(\SD_c[1] )
        );
    IOPAD_IN \SD_pad[2]/U0/U0  (.PAD(SD[2]), .Y(\SD_pad[2]/U0/NET1 ));
    IOPAD_IN \RD_pad[2]/U0/U0  (.PAD(RD[2]), .Y(\RD_pad[2]/U0/NET1 ));
    NOR2A \Q_1_RNO[1]  (.A(\SD_c[1] ), .B(\RD_c[1] ), .Y(
        \Q_1_RNO[1]_net_1 ));
    IOTRI_OB_EB \Q_pad[1]/U0/U1  (.D(\Q_1_c[1] ), .E(VCC), .DOUT(
        \Q_pad[1]/U0/NET1 ), .EOUT(\Q_pad[1]/U0/NET2 ));
    INV \Q_1_RNO_1[1]  (.A(\SD_c[1] ), .Y(\SD_c_i[1] ));
    IOTRI_OB_EB \Q_pad[2]/U0/U1  (.D(\Q_1_c[2] ), .E(VCC), .DOUT(
        \Q_pad[2]/U0/NET1 ), .EOUT(\Q_pad[2]/U0/NET2 ));
    MX2B \Q_1_RNO_0[2]  (.A(\J_c[2] ), .B(\K_c[2] ), .S(\Q_1_c[2] ), 
        .Y(\Q_1_RNO_0[2]_net_1 ));
    IOIN_IB \K_pad[1]/U0/U1  (.YIN(\K_pad[1]/U0/NET1 ), .Y(\K_c[1] ));
    IOIN_IB \RD_pad[1]/U0/U1  (.YIN(\RD_pad[1]/U0/NET1 ), .Y(\RD_c[1] )
        );
    DFN0P1C1 \Q_1[2]  (.D(\Q_1_RNO_0[2]_net_1 ), .CLK(\Clk_c[2] ), 
        .PRE(\SD_c_i[2] ), .CLR(\Q_1_RNO[2]_net_1 ), .Q(\Q_1_c[2] ));
    IOTRI_OB_EB \QN_pad[1]/U0/U1  (.D(\Q_1_c_i[1] ), .E(VCC), .DOUT(
        \QN_pad[1]/U0/NET1 ), .EOUT(\QN_pad[1]/U0/NET2 ));
    IOPAD_IN \Clk_pad[1]/U0/U0  (.PAD(Clk[1]), .Y(\Clk_pad[1]/U0/NET1 )
        );
    INV \QN_pad_RNO[1]  (.A(\Q_1_c[1] ), .Y(\Q_1_c_i[1] ));
    IOIN_IB \SD_pad[2]/U0/U1  (.YIN(\SD_pad[2]/U0/NET1 ), .Y(\SD_c[2] )
        );
    IOPAD_TRI \QN_pad[1]/U0/U0  (.D(\QN_pad[1]/U0/NET1 ), .E(
        \QN_pad[1]/U0/NET2 ), .PAD(QN[1]));
    IOPAD_IN \Clk_pad[2]/U0/U0  (.PAD(Clk[2]), .Y(\Clk_pad[2]/U0/NET1 )
        );
    IOPAD_TRI \Q_pad[1]/U0/U0  (.D(\Q_pad[1]/U0/NET1 ), .E(
        \Q_pad[1]/U0/NET2 ), .PAD(Q[1]));
    IOIN_IB \J_pad[2]/U0/U1  (.YIN(\J_pad[2]/U0/NET1 ), .Y(\J_c[2] ));
    IOPAD_TRI \Q_pad[2]/U0/U0  (.D(\Q_pad[2]/U0/NET1 ), .E(
        \Q_pad[2]/U0/NET2 ), .PAD(Q[2]));
    IOIN_IB \K_pad[2]/U0/U1  (.YIN(\K_pad[2]/U0/NET1 ), .Y(\K_c[2] ));
    IOIN_IB \J_pad[1]/U0/U1  (.YIN(\J_pad[1]/U0/NET1 ), .Y(\J_c[1] ));
    IOIN_IB \Clk_pad[1]/U0/U1  (.YIN(\Clk_pad[1]/U0/NET1 ), .Y(
        \Clk_c[1] ));
    IOPAD_IN \K_pad[1]/U0/U0  (.PAD(K[1]), .Y(\K_pad[1]/U0/NET1 ));
    IOIN_IB \Clk_pad[2]/U0/U1  (.YIN(\Clk_pad[2]/U0/NET1 ), .Y(
        \Clk_c[2] ));
    IOPAD_IN \SD_pad[1]/U0/U0  (.PAD(SD[1]), .Y(\SD_pad[1]/U0/NET1 ));
    IOIN_IB \RD_pad[2]/U0/U1  (.YIN(\RD_pad[2]/U0/NET1 ), .Y(\RD_c[2] )
        );
    DFN0P1C1 \Q_1[1]  (.D(\Q_1_RNO_0[1]_net_1 ), .CLK(\Clk_c[1] ), 
        .PRE(\SD_c_i[1] ), .CLR(\Q_1_RNO[1]_net_1 ), .Q(\Q_1_c[1] ));
    IOPAD_IN \RD_pad[1]/U0/U0  (.PAD(RD[1]), .Y(\RD_pad[1]/U0/NET1 ));
    INV \Q_1_RNO_1[2]  (.A(\SD_c[2] ), .Y(\SD_c_i[2] ));
    NOR2A \Q_1_RNO[2]  (.A(\SD_c[2] ), .B(\RD_c[2] ), .Y(
        \Q_1_RNO[2]_net_1 ));
    IOTRI_OB_EB \QN_pad[2]/U0/U1  (.D(\Q_1_c_i[2] ), .E(VCC), .DOUT(
        \QN_pad[2]/U0/NET1 ), .EOUT(\QN_pad[2]/U0/NET2 ));
    INV \QN_pad_RNO[2]  (.A(\Q_1_c[2] ), .Y(\Q_1_c_i[2] ));
    IOPAD_IN \J_pad[2]/U0/U0  (.PAD(J[2]), .Y(\J_pad[2]/U0/NET1 ));
    IOPAD_IN \K_pad[2]/U0/U0  (.PAD(K[2]), .Y(\K_pad[2]/U0/NET1 ));
    IOPAD_TRI \QN_pad[2]/U0/U0  (.D(\QN_pad[2]/U0/NET1 ), .E(
        \QN_pad[2]/U0/NET2 ), .PAD(QN[2]));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
