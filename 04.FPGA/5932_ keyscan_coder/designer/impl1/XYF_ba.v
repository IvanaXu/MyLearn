`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module XYF(
       Reset,
       Row,
       Clk,
       Valid,
       Col,
       Code
    );
input  Reset;
input  [3:0] Row;
input  Clk;
output Valid;
output [3:0] Col;
output [3:0] Code;

    wire Synchronizer_0_S_Row, \current_state_RNI0PP4[2] , 
        \current_state_RNI3ROC[4] , \current_state_RNI2ROC[4] , 
        \current_state_RNIVE07[0] , \current_state_RNINJM4[0] , 
        \Col_0_i_a5[3] , \Col_0_i_a5[2] , \Col_0_i_a5[1] , 
        \Col_0_i_a5[0] , Reset_c, \Row_c[0] , \Row_c[1] , \Row_c[2] , 
        \Row_c[3] , Clk_c, \Keypad_0.N_180 , 
        \Keypad_0/current_state_ns_a5_1[0] , 
        \Keypad_0/current_state[3]_net_1 , 
        \Keypad_0/current_state[1]_net_1 , 
        \Keypad_0/current_state[2]_net_1 , 
        \Keypad_0/Code_0_i_1[3]_net_1 , \Keypad_0/Code_0_i_1[2]_net_1 , 
        \Keypad_0/N_159 , \Keypad_0/Code_0_i_1_2[0]_net_1 , 
        \Keypad_0/Code_0_i_1_0[0]_net_1 , 
        \Keypad_0/Code_0_i_1_1[0]_net_1 , \Keypad_0/N_152 , 
        \Keypad_0/Valid_i_a5_0 , \Keypad_0/N_179 , 
        \Keypad_0/current_state_ns[0] , \Keypad_0/N_175 , 
        \Keypad_0/N_176 , \Keypad_0/N_156 , \Keypad_0/N_157_i_i_0 , 
        \Keypad_0/current_state_ns[2] , \Keypad_0/current_state_ns[3] , 
        \Keypad_0/current_state_ns[4] , 
        \Keypad_0/current_state[4]_net_1 , \Keypad_0/N_170 , 
        \Keypad_0/current_state[5]_net_1 , 
        \Keypad_0/current_state_RNO[1]_net_1 , 
        \Keypad_0/current_state[0]_net_1 , 
        \Keypad_0/current_state_RNO[5]_net_1 , 
        \Synchronizer_0/A_Row_net_1 , \Code_pad[0]/U0/NET1 , 
        \Code_pad[0]/U0/NET2 , \Row_pad[3]/U0/NET1 , 
        \Col_pad[2]/U0/NET1 , \Col_pad[2]/U0/NET2 , 
        \Code_pad[3]/U0/NET1 , \Code_pad[3]/U0/NET2 , 
        \Col_pad[0]/U0/NET1 , \Col_pad[0]/U0/NET2 , 
        \Row_pad[1]/U0/NET1 , \Row_pad[0]/U0/NET1 , 
        \Reset_pad/U0/NET1 , \Col_pad[1]/U0/NET1 , 
        \Col_pad[1]/U0/NET2 , \Valid_pad/U0/NET1 , \Valid_pad/U0/NET2 , 
        \Code_pad[2]/U0/NET1 , \Code_pad[2]/U0/NET2 , 
        \Code_pad[1]/U0/NET1 , \Code_pad[1]/U0/NET2 , 
        \Row_pad[2]/U0/NET1 , \Col_pad[3]/U0/NET1 , 
        \Col_pad[3]/U0/NET2 , VCC, \Clk_pad/U0/NET1 , AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    DFN1P1 \Keypad_0/current_state[0]  (.D(
        \Keypad_0/current_state_ns[0] ), .CLK(Clk_c), .PRE(Reset_c), 
        .Q(\Keypad_0/current_state[0]_net_1 ));
    DFN1C1 \Keypad_0/current_state[4]  (.D(
        \Keypad_0/current_state_ns[4] ), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\Keypad_0/current_state[4]_net_1 ));
    NOR2B \Keypad_0/Code_0_i_1_2[0]  (.A(\Keypad_0.N_180 ), .B(
        \Keypad_0/Code_0_i_1_0[0]_net_1 ), .Y(
        \Keypad_0/Code_0_i_1_2[0]_net_1 ));
    NOR2A \Keypad_0/current_state_RNO[2]  (.A(
        \Keypad_0/current_state[1]_net_1 ), .B(Synchronizer_0_S_Row), 
        .Y(\Keypad_0/current_state_ns[2] ));
    IOTRI_OB_EB \Code_pad[2]/U0/U1  (.D(\current_state_RNIVE07[0] ), 
        .E(VCC), .DOUT(\Code_pad[2]/U0/NET1 ), .EOUT(
        \Code_pad[2]/U0/NET2 ));
    IOIN_IB \Row_pad[0]/U0/U1  (.YIN(\Row_pad[0]/U0/NET1 ), .Y(
        \Row_c[0] ));
    IOTRI_OB_EB \Col_pad[3]/U0/U1  (.D(\Col_0_i_a5[3] ), .E(VCC), 
        .DOUT(\Col_pad[3]/U0/NET1 ), .EOUT(\Col_pad[3]/U0/NET2 ));
    IOTRI_OB_EB \Col_pad[1]/U0/U1  (.D(\Col_0_i_a5[1] ), .E(VCC), 
        .DOUT(\Col_pad[1]/U0/NET1 ), .EOUT(\Col_pad[1]/U0/NET2 ));
    IOPAD_TRI \Code_pad[3]/U0/U0  (.D(\Code_pad[3]/U0/NET1 ), .E(
        \Code_pad[3]/U0/NET2 ), .PAD(Code[3]));
    IOPAD_IN \Row_pad[0]/U0/U0  (.PAD(Row[0]), .Y(\Row_pad[0]/U0/NET1 )
        );
    OR2 \Keypad_0/current_state_RNIB53[4]  (.A(
        \Keypad_0/current_state[4]_net_1 ), .B(
        \Keypad_0/current_state[3]_net_1 ), .Y(\Keypad_0/N_179 ));
    IOPAD_TRI \Col_pad[3]/U0/U0  (.D(\Col_pad[3]/U0/NET1 ), .E(
        \Col_pad[3]/U0/NET2 ), .PAD(Col[3]));
    IOTRI_OB_EB \Valid_pad/U0/U1  (.D(\current_state_RNI0PP4[2] ), .E(
        VCC), .DOUT(\Valid_pad/U0/NET1 ), .EOUT(\Valid_pad/U0/NET2 ));
    IOIN_IB \Row_pad[2]/U0/U1  (.YIN(\Row_pad[2]/U0/NET1 ), .Y(
        \Row_c[2] ));
    IOPAD_TRI \Col_pad[1]/U0/U0  (.D(\Col_pad[1]/U0/NET1 ), .E(
        \Col_pad[1]/U0/NET2 ), .PAD(Col[1]));
    OR2 \Keypad_0/current_state_RNIA53[4]  (.A(
        \Keypad_0/current_state[4]_net_1 ), .B(
        \Keypad_0/current_state[2]_net_1 ), .Y(\Keypad_0/N_170 ));
    OR2 \Keypad_0/Code_0_i_o5_0[2]  (.A(\Row_c[2] ), .B(\Row_c[0] ), 
        .Y(\Keypad_0/N_159 ));
    IOIN_IB \Row_pad[3]/U0/U1  (.YIN(\Row_pad[3]/U0/NET1 ), .Y(
        \Row_c[3] ));
    IOPAD_IN \Row_pad[2]/U0/U0  (.PAD(Row[2]), .Y(\Row_pad[2]/U0/NET1 )
        );
    NOR3C \Keypad_0/current_state_RNI3ROC[4]  (.A(
        \Keypad_0/Code_0_i_1_1[0]_net_1 ), .B(
        \Keypad_0/Code_0_i_1_2[0]_net_1 ), .C(\Keypad_0/N_179 ), .Y(
        \current_state_RNI3ROC[4] ));
    IOTRI_OB_EB \Col_pad[0]/U0/U1  (.D(\Col_0_i_a5[0] ), .E(VCC), 
        .DOUT(\Col_pad[0]/U0/NET1 ), .EOUT(\Col_pad[0]/U0/NET2 ));
    NOR2 \Keypad_0/current_state_RNIGVQ1[5]  (.A(Synchronizer_0_S_Row), 
        .B(\Keypad_0/current_state[5]_net_1 ), .Y(\Keypad_0/N_176 ));
    IOIN_IB \Row_pad[1]/U0/U1  (.YIN(\Row_pad[1]/U0/NET1 ), .Y(
        \Row_c[1] ));
    IOPAD_TRI \Code_pad[1]/U0/U0  (.D(\Code_pad[1]/U0/NET1 ), .E(
        \Code_pad[1]/U0/NET2 ), .PAD(Code[1]));
    NOR3 \Keypad_0/current_state_RNIVE07[0]  (.A(\Keypad_0/N_156 ), .B(
        \Keypad_0/N_152 ), .C(\Keypad_0/Code_0_i_1[2]_net_1 ), .Y(
        \current_state_RNIVE07[0] ));
    IOPAD_IN \Row_pad[3]/U0/U0  (.PAD(Row[3]), .Y(\Row_pad[3]/U0/NET1 )
        );
    IOPAD_TRI \Col_pad[0]/U0/U0  (.D(\Col_pad[0]/U0/NET1 ), .E(
        \Col_pad[0]/U0/NET2 ), .PAD(Col[0]));
    IOPAD_IN \Row_pad[1]/U0/U0  (.PAD(Row[1]), .Y(\Row_pad[1]/U0/NET1 )
        );
    OR2 \Keypad_0/current_state_RNI953[0]  (.A(
        \Keypad_0/current_state[5]_net_1 ), .B(
        \Keypad_0/current_state[0]_net_1 ), .Y(\Keypad_0/N_156 ));
    OR2 \Keypad_0/current_state_RNIUN4[1]  (.A(\Keypad_0/N_179 ), .B(
        \Keypad_0/current_state[1]_net_1 ), .Y(\Keypad_0/Valid_i_a5_0 )
        );
    OR2 \Keypad_0/Code_0_i_1[3]  (.A(\Row_c[0] ), .B(\Row_c[1] ), .Y(
        \Keypad_0/Code_0_i_1[3]_net_1 ));
    IOTRI_OB_EB \Code_pad[0]/U0/U1  (.D(\current_state_RNI2ROC[4] ), 
        .E(VCC), .DOUT(\Code_pad[0]/U0/NET1 ), .EOUT(
        \Code_pad[0]/U0/NET2 ));
    DFN1C1 \Keypad_0/current_state[1]  (.D(
        \Keypad_0/current_state_RNO[1]_net_1 ), .CLK(Clk_c), .CLR(
        Reset_c), .Q(\Keypad_0/current_state[1]_net_1 ));
    DFN1C1 \Synchronizer_0/A_Row  (.D(\Keypad_0.N_180 ), .CLK(Clk_c), 
        .CLR(Reset_c), .Q(\Synchronizer_0/A_Row_net_1 ));
    OA1B \Keypad_0/current_state_RNO[0]  (.A(\Keypad_0/N_175 ), .B(
        \Keypad_0/N_176 ), .C(\Keypad_0/current_state_ns_a5_1[0] ), .Y(
        \Keypad_0/current_state_ns[0] ));
    MIN3 \Keypad_0/Code_0_i_1_0[0]  (.A(\Row_c[1] ), .B(\Row_c[3] ), 
        .C(\Row_c[2] ), .Y(\Keypad_0/Code_0_i_1_0[0]_net_1 ));
    IOTRI_OB_EB \Col_pad[2]/U0/U1  (.D(\Col_0_i_a5[2] ), .E(VCC), 
        .DOUT(\Col_pad[2]/U0/NET1 ), .EOUT(\Col_pad[2]/U0/NET2 ));
    IOPAD_TRI \Code_pad[2]/U0/U0  (.D(\Code_pad[2]/U0/NET1 ), .E(
        \Code_pad[2]/U0/NET2 ), .PAD(Code[2]));
    OR2A \Keypad_0/Valid_i_a2  (.A(\Keypad_0/N_152 ), .B(
        \Keypad_0/N_159 ), .Y(\Keypad_0.N_180 ));
    IOPAD_TRI \Col_pad[2]/U0/U0  (.D(\Col_pad[2]/U0/NET1 ), .E(
        \Col_pad[2]/U0/NET2 ), .PAD(Col[2]));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    IOIN_IB \Reset_pad/U0/U1  (.YIN(\Reset_pad/U0/NET1 ), .Y(Reset_c));
    OR2 \Keypad_0/Col_0_i_a5[0]  (.A(\Keypad_0/current_state[1]_net_1 )
        , .B(\Keypad_0/N_156 ), .Y(\Col_0_i_a5[0] ));
    NOR3 \Keypad_0/current_state_RNO[5]  (.A(\Keypad_0/N_175 ), .B(
        \Keypad_0/N_176 ), .C(\Keypad_0/current_state[0]_net_1 ), .Y(
        \Keypad_0/current_state_RNO[5]_net_1 ));
    OA1 \Keypad_0/current_state_RNI0PP4[2]  (.A(
        \Keypad_0/current_state[2]_net_1 ), .B(\Keypad_0/Valid_i_a5_0 )
        , .C(\Keypad_0.N_180 ), .Y(\current_state_RNI0PP4[2] ));
    IOPAD_IN \Reset_pad/U0/U0  (.PAD(Reset), .Y(\Reset_pad/U0/NET1 ));
    NOR2 \Keypad_0/Code_0_i_o2[2]  (.A(\Row_c[3] ), .B(\Row_c[1] ), .Y(
        \Keypad_0/N_152 ));
    AO1C \Keypad_0/Code_0_i_1_1[0]  (.A(\Row_c[2] ), .B(
        \Keypad_0/N_152 ), .C(\Row_c[0] ), .Y(
        \Keypad_0/Code_0_i_1_1[0]_net_1 ));
    NOR2A \Keypad_0/current_state_RNI51L4[5]  (.A(
        \Keypad_0/current_state[5]_net_1 ), .B(\Keypad_0.N_180 ), .Y(
        \Keypad_0/N_175 ));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    IOPAD_TRI \Code_pad[0]/U0/U0  (.D(\Code_pad[0]/U0/NET1 ), .E(
        \Code_pad[0]/U0/NET2 ), .PAD(Code[0]));
    AO1 \Keypad_0/Code_0_i_1[2]  (.A(\Row_c[3] ), .B(\Row_c[1] ), .C(
        \Keypad_0/N_159 ), .Y(\Keypad_0/Code_0_i_1[2]_net_1 ));
    NOR2A \Keypad_0/current_state_RNO[3]  (.A(
        \Keypad_0/current_state[2]_net_1 ), .B(Synchronizer_0_S_Row), 
        .Y(\Keypad_0/current_state_ns[3] ));
    OR2 \Keypad_0/Col_0_i_a5[2]  (.A(\Keypad_0/current_state[3]_net_1 )
        , .B(\Keypad_0/N_156 ), .Y(\Col_0_i_a5[2] ));
    OR3 \Keypad_0/current_state_RNO_0[0]  (.A(
        \Keypad_0/current_state[3]_net_1 ), .B(
        \Keypad_0/current_state[1]_net_1 ), .C(
        \Keypad_0/current_state[2]_net_1 ), .Y(
        \Keypad_0/current_state_ns_a5_1[0] ));
    NOR3C \Keypad_0/current_state_RNI2ROC[4]  (.A(
        \Keypad_0/Code_0_i_1_1[0]_net_1 ), .B(
        \Keypad_0/Code_0_i_1_2[0]_net_1 ), .C(\Keypad_0/N_170 ), .Y(
        \current_state_RNI2ROC[4] ));
    DFN1C1 \Keypad_0/current_state[2]  (.D(
        \Keypad_0/current_state_ns[2] ), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\Keypad_0/current_state[2]_net_1 ));
    DFN1C1 \Keypad_0/current_state[5]  (.D(
        \Keypad_0/current_state_RNO[5]_net_1 ), .CLK(Clk_c), .CLR(
        Reset_c), .Q(\Keypad_0/current_state[5]_net_1 ));
    IOTRI_OB_EB \Code_pad[3]/U0/U1  (.D(\current_state_RNINJM4[0] ), 
        .E(VCC), .DOUT(\Code_pad[3]/U0/NET1 ), .EOUT(
        \Code_pad[3]/U0/NET2 ));
    NOR3 \Keypad_0/current_state_RNINJM4[0]  (.A(
        \Keypad_0/N_157_i_i_0 ), .B(\Keypad_0/N_156 ), .C(
        \Keypad_0/Code_0_i_1[3]_net_1 ), .Y(\current_state_RNINJM4[0] )
        );
    XNOR2 \Keypad_0/Code_0_i_x2_0[3]  (.A(\Row_c[3] ), .B(\Row_c[2] ), 
        .Y(\Keypad_0/N_157_i_i_0 ));
    OR2 \Keypad_0/Col_0_i_a5[3]  (.A(\Keypad_0/current_state[4]_net_1 )
        , .B(\Keypad_0/N_156 ), .Y(\Col_0_i_a5[3] ));
    NOR2A \Keypad_0/current_state_RNO[4]  (.A(
        \Keypad_0/current_state[3]_net_1 ), .B(Synchronizer_0_S_Row), 
        .Y(\Keypad_0/current_state_ns[4] ));
    OR2 \Keypad_0/Col_0_i_a5[1]  (.A(\Keypad_0/current_state[2]_net_1 )
        , .B(\Keypad_0/N_156 ), .Y(\Col_0_i_a5[1] ));
    IOTRI_OB_EB \Code_pad[1]/U0/U1  (.D(\current_state_RNI3ROC[4] ), 
        .E(VCC), .DOUT(\Code_pad[1]/U0/NET1 ), .EOUT(
        \Code_pad[1]/U0/NET2 ));
    DFN1C1 \Synchronizer_0/S_Row  (.D(\Synchronizer_0/A_Row_net_1 ), 
        .CLK(Clk_c), .CLR(Reset_c), .Q(Synchronizer_0_S_Row));
    NOR2B \Keypad_0/current_state_RNO[1]  (.A(Synchronizer_0_S_Row), 
        .B(\Keypad_0/current_state[0]_net_1 ), .Y(
        \Keypad_0/current_state_RNO[1]_net_1 ));
    DFN1C1 \Keypad_0/current_state[3]  (.D(
        \Keypad_0/current_state_ns[3] ), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\Keypad_0/current_state[3]_net_1 ));
    IOPAD_TRI \Valid_pad/U0/U0  (.D(\Valid_pad/U0/NET1 ), .E(
        \Valid_pad/U0/NET2 ), .PAD(Valid));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
