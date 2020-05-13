`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire \count[0]_net_1 , Disp_dat13, Disp_dat10, Disp_dat11, 
        Disp_dat12, SUM1_0, Clk_c, Reset_c, \count[1]_net_1 , 
        \count_i[1] , Disp_dat10_i, \count_i[0] , \Clk_pad/U0/NET1 , 
        \Sl_pad[0]/U0/NET1 , \Sl_pad[0]/U0/NET2 , \Seg_pad[5]/U0/NET1 , 
        \Seg_pad[5]/U0/NET2 , \Sl_pad[1]/U0/NET1 , \Sl_pad[1]/U0/NET2 , 
        \Seg_pad[2]/U0/NET1 , \Seg_pad[2]/U0/NET2 , 
        \Seg_pad[4]/U0/NET1 , \Seg_pad[4]/U0/NET2 , 
        \Seg_pad[3]/U0/NET1 , \Seg_pad[3]/U0/NET2 , 
        \Seg_pad[6]/U0/NET1 , \Seg_pad[6]/U0/NET2 , 
        \Reset_pad/U0/NET1 , \Sl_pad[3]/U0/NET1 , \Sl_pad[3]/U0/NET2 , 
        \Sl_pad[2]/U0/NET1 , \Sl_pad[2]/U0/NET2 , \Seg_pad[1]/U0/NET1 , 
        \Seg_pad[1]/U0/NET2 , \Seg_pad[7]/U0/NET1 , 
        \Seg_pad[7]/U0/NET2 , \Seg_pad[0]/U0/NET1 , 
        \Seg_pad[0]/U0/NET2 , VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOTRI_OB_EB \Sl_pad[1]/U0/U1  (.D(Disp_dat11), .E(VCC), .DOUT(
        \Sl_pad[1]/U0/NET1 ), .EOUT(\Sl_pad[1]/U0/NET2 ));
    DFN1C1 \count[1]  (.D(SUM1_0), .CLK(Clk_c), .CLR(Reset_c), .Q(
        \count[1]_net_1 ));
    IOTRI_OB_EB \Sl_pad[3]/U0/U1  (.D(Disp_dat13), .E(VCC), .DOUT(
        \Sl_pad[3]/U0/NET1 ), .EOUT(\Sl_pad[3]/U0/NET2 ));
    DFN1C1 \count[0]  (.D(\count_i[0] ), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\count[0]_net_1 ));
    INV \Sl_pad_RNO[0]  (.A(Disp_dat10), .Y(Disp_dat10_i));
    XOR2 un3_count_1_SUM1_0 (.A(\count[1]_net_1 ), .B(\count[0]_net_1 )
        , .Y(SUM1_0));
    IOTRI_OB_EB \Seg_pad[5]/U0/U1  (.D(Disp_dat10), .E(VCC), .DOUT(
        \Seg_pad[5]/U0/NET1 ), .EOUT(\Seg_pad[5]/U0/NET2 ));
    IOPAD_TRI \Seg_pad[1]/U0/U0  (.D(\Seg_pad[1]/U0/NET1 ), .E(
        \Seg_pad[1]/U0/NET2 ), .PAD(Seg[1]));
    IOTRI_OB_EB \Sl_pad[0]/U0/U1  (.D(Disp_dat10_i), .E(VCC), .DOUT(
        \Sl_pad[0]/U0/NET1 ), .EOUT(\Sl_pad[0]/U0/NET2 ));
    IOTRI_OB_EB \Seg_pad[6]/U0/U1  (.D(\count_i[1] ), .E(VCC), .DOUT(
        \Seg_pad[6]/U0/NET1 ), .EOUT(\Seg_pad[6]/U0/NET2 ));
    OR2A \count_RNIV63F_0[0]  (.A(\count[1]_net_1 ), .B(
        \count[0]_net_1 ), .Y(Disp_dat12));
    IOTRI_OB_EB \Seg_pad[4]/U0/U1  (.D(\count_i[1] ), .E(VCC), .DOUT(
        \Seg_pad[4]/U0/NET1 ), .EOUT(\Seg_pad[4]/U0/NET2 ));
    IOPAD_TRI \Seg_pad[5]/U0/U0  (.D(\Seg_pad[5]/U0/NET1 ), .E(
        \Seg_pad[5]/U0/NET2 ), .PAD(Seg[5]));
    IOTRI_OB_EB \Seg_pad[2]/U0/U1  (.D(Disp_dat11), .E(VCC), .DOUT(
        \Seg_pad[2]/U0/NET1 ), .EOUT(\Seg_pad[2]/U0/NET2 ));
    INV \count_RNIGLH7[1]  (.A(\count[1]_net_1 ), .Y(\count_i[1] ));
    IOPAD_TRI \Seg_pad[6]/U0/U0  (.D(\Seg_pad[6]/U0/NET1 ), .E(
        \Seg_pad[6]/U0/NET2 ), .PAD(Seg[6]));
    IOPAD_TRI \Sl_pad[2]/U0/U0  (.D(\Sl_pad[2]/U0/NET1 ), .E(
        \Sl_pad[2]/U0/NET2 ), .PAD(Sl[2]));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    OR2B \Sl_pad_RNO[3]  (.A(\count[1]_net_1 ), .B(\count[0]_net_1 ), 
        .Y(Disp_dat13));
    IOIN_IB \Reset_pad/U0/U1  (.YIN(\Reset_pad/U0/NET1 ), .Y(Reset_c));
    IOPAD_TRI \Seg_pad[4]/U0/U0  (.D(\Seg_pad[4]/U0/NET1 ), .E(
        \Seg_pad[4]/U0/NET2 ), .PAD(Seg[4]));
    IOTRI_OB_EB \Seg_pad[3]/U0/U1  (.D(\count_i[1] ), .E(VCC), .DOUT(
        \Seg_pad[3]/U0/NET1 ), .EOUT(\Seg_pad[3]/U0/NET2 ));
    INV \count_RNO[0]  (.A(\count[0]_net_1 ), .Y(\count_i[0] ));
    IOPAD_TRI \Seg_pad[2]/U0/U0  (.D(\Seg_pad[2]/U0/NET1 ), .E(
        \Seg_pad[2]/U0/NET2 ), .PAD(Seg[2]));
    OR2A \count_RNIV63F[0]  (.A(\count[0]_net_1 ), .B(\count[1]_net_1 )
        , .Y(Disp_dat11));
    IOPAD_IN \Reset_pad/U0/U0  (.PAD(Reset), .Y(\Reset_pad/U0/NET1 ));
    IOPAD_TRI \Sl_pad[1]/U0/U0  (.D(\Sl_pad[1]/U0/NET1 ), .E(
        \Sl_pad[1]/U0/NET2 ), .PAD(Sl[1]));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    IOPAD_TRI \Sl_pad[3]/U0/U0  (.D(\Sl_pad[3]/U0/NET1 ), .E(
        \Sl_pad[3]/U0/NET2 ), .PAD(Sl[3]));
    IOPAD_TRI \Seg_pad[3]/U0/U0  (.D(\Seg_pad[3]/U0/NET1 ), .E(
        \Seg_pad[3]/U0/NET2 ), .PAD(Seg[3]));
    IOTRI_OB_EB \Seg_pad[0]/U0/U1  (.D(Disp_dat12), .E(VCC), .DOUT(
        \Seg_pad[0]/U0/NET1 ), .EOUT(\Seg_pad[0]/U0/NET2 ));
    IOTRI_OB_EB \Seg_pad[7]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \Seg_pad[7]/U0/NET1 ), .EOUT(\Seg_pad[7]/U0/NET2 ));
    IOTRI_OB_EB \Sl_pad[2]/U0/U1  (.D(Disp_dat12), .E(VCC), .DOUT(
        \Sl_pad[2]/U0/NET1 ), .EOUT(\Sl_pad[2]/U0/NET2 ));
    IOPAD_TRI \Sl_pad[0]/U0/U0  (.D(\Sl_pad[0]/U0/NET1 ), .E(
        \Sl_pad[0]/U0/NET2 ), .PAD(Sl[0]));
    IOPAD_TRI \Seg_pad[0]/U0/U0  (.D(\Seg_pad[0]/U0/NET1 ), .E(
        \Seg_pad[0]/U0/NET2 ), .PAD(Seg[0]));
    NOR2 \count_RNIV63F_1[0]  (.A(\count[1]_net_1 ), .B(
        \count[0]_net_1 ), .Y(Disp_dat10));
    IOPAD_TRI \Seg_pad[7]/U0/U0  (.D(\Seg_pad[7]/U0/NET1 ), .E(
        \Seg_pad[7]/U0/NET2 ), .PAD(Seg[7]));
    IOTRI_OB_EB \Seg_pad[1]/U0/U1  (.D(VCC), .E(VCC), .DOUT(
        \Seg_pad[1]/U0/NET1 ), .EOUT(\Seg_pad[1]/U0/NET2 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
