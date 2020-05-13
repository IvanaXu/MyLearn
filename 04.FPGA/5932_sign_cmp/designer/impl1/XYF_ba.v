`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module XYF(
       DataA,
       DataB,
       AGEB
    );
input  [7:0] DataA;
input  [7:0] DataB;
output AGEB;

    wire \DataOut_2_0[1] , \DataOut_2_0[2] , \DataOut_2_0[3] , 
        \DataOut_2_0[4] , \DataOut_2_0[5] , \DataOut_2_0[6] , 
        \DataOut_2_0[7] , \DataOut_2[1] , \DataOut_2[2] , 
        \DataOut_2[3] , \DataOut_2[4] , \DataOut_2[5] , \DataOut_2[6] , 
        \DataOut_2[7] , \DataA_c[0] , \DataA_c[1] , \DataA_c[2] , 
        \DataA_c[3] , \DataA_c[4] , \DataA_c[5] , \DataA_c[6] , 
        \DataA_c[7] , \DataB_c[0] , \DataB_c[1] , \DataB_c[2] , 
        \DataB_c[3] , \DataB_c[4] , \DataB_c[5] , \DataB_c[6] , 
        \DataB_c[7] , AGEB_c, \Com_2C_0/CO1 , \Com_2C_0/CO2 , 
        \Com_2C_0/CO3 , \Com_2C_0/CO4 , \Com_2C_0/CO5 , \Com_2C_1/CO1 , 
        \Com_2C_1/CO2 , \Com_2C_1/CO3 , \Com_2C_1/CO4 , \Com_2C_1/CO5 , 
        \cmp_2_0/le_OUT , \cmp_2_0/AND3_0_Y , \cmp_2_0/AO1D_0_Y , 
        \cmp_2_0/NAND3A_0_Y , \cmp_2_0/U1 , \cmp_2_0/XNOR2_1_Y , 
        \cmp_2_0/OR2A_1_Y , \cmp_2_0/NOR3A_0_Y , \cmp_2_0/OR2A_2_Y , 
        \cmp_2_0/NAND3A_1_Y , \cmp_2_0/U2 , \cmp_2_0/XNOR2_2_Y , 
        \cmp_2_0/XNOR2_0_Y , \cmp_2_0/AO1C_1_Y , \cmp_2_0/AO1C_0_Y , 
        \cmp_2_0/NOR2A_0_Y , \cmp_2_0/OR2A_3_Y , \cmp_2_0/OR2A_0_Y , 
        \cmp_2_0/AO1C_4_Y , \cmp_2_0/AO1C_2_Y , \cmp_2_0/AO1C_5_Y , 
        \cmp_2_0/AO1C_3_Y , \DataB_pad[1]/U0/NET1 , \AGEB_pad/U0/NET1 , 
        \AGEB_pad/U0/NET2 , VCC, \DataB_pad[2]/U0/NET1 , 
        \DataB_pad[0]/U0/NET1 , \DataA_pad[0]/U0/NET1 , 
        \DataA_pad[3]/U0/NET1 , \DataA_pad[6]/U0/NET1 , 
        \DataB_pad[3]/U0/NET1 , \DataA_pad[5]/U0/NET1 , 
        \DataA_pad[1]/U0/NET1 , \DataB_pad[6]/U0/NET1 , 
        \DataB_pad[7]/U0/NET1 , \DataA_pad[4]/U0/NET1 , 
        \DataA_pad[7]/U0/NET1 , \DataB_pad[5]/U0/NET1 , 
        \DataA_pad[2]/U0/NET1 , \DataB_pad[4]/U0/NET1 , GND, 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    AO1 \cmp_2_0/AND_AO21  (.A(\cmp_2_0/le_OUT ), .B(\cmp_2_0/U1 ), .C(
        \cmp_2_0/U2 ), .Y(AGEB_c));
    IOPAD_IN \DataB_pad[7]/U0/U0  (.PAD(DataB[7]), .Y(
        \DataB_pad[7]/U0/NET1 ));
    IOTRI_OB_EB \AGEB_pad/U0/U1  (.D(AGEB_c), .E(VCC), .DOUT(
        \AGEB_pad/U0/NET1 ), .EOUT(\AGEB_pad/U0/NET2 ));
    OR2 \Com_2C_1/DataOut_1_1_ANC3  (.A(\DataB_c[3] ), .B(
        \Com_2C_1/CO2 ), .Y(\Com_2C_1/CO3 ));
    AX1C \Com_2C_0/DataOut_2[6]  (.A(\Com_2C_0/CO5 ), .B(\DataA_c[7] ), 
        .C(\DataA_c[6] ), .Y(\DataOut_2[6] ));
    IOIN_IB \DataB_pad[7]/U0/U1  (.YIN(\DataB_pad[7]/U0/NET1 ), .Y(
        \DataB_c[7] ));
    AO1C \cmp_2_0/AO1C_2  (.A(\DataOut_2[3] ), .B(\DataOut_2_0[3] ), 
        .C(\cmp_2_0/AO1C_3_Y ), .Y(\cmp_2_0/AO1C_2_Y ));
    NAND3A \cmp_2_0/NAND3A_0  (.A(\cmp_2_0/NOR3A_0_Y ), .B(
        \cmp_2_0/OR2A_2_Y ), .C(\cmp_2_0/NAND3A_1_Y ), .Y(
        \cmp_2_0/NAND3A_0_Y ));
    AX1C \Com_2C_1/DataOut_2[4]  (.A(\Com_2C_1/CO3 ), .B(\DataB_c[7] ), 
        .C(\DataB_c[4] ), .Y(\DataOut_2_0[4] ));
    AX1C \Com_2C_0/DataOut_2[4]  (.A(\Com_2C_0/CO3 ), .B(\DataA_c[7] ), 
        .C(\DataA_c[4] ), .Y(\DataOut_2[4] ));
    IOPAD_IN \DataA_pad[5]/U0/U0  (.PAD(DataA[5]), .Y(
        \DataA_pad[5]/U0/NET1 ));
    IOPAD_IN \DataA_pad[2]/U0/U0  (.PAD(DataA[2]), .Y(
        \DataA_pad[2]/U0/NET1 ));
    IOPAD_IN \DataA_pad[0]/U0/U0  (.PAD(DataA[0]), .Y(
        \DataA_pad[0]/U0/NET1 ));
    XNOR2 \cmp_2_0/XNOR2_1  (.A(\DataOut_2_0[4] ), .B(\DataOut_2[4] ), 
        .Y(\cmp_2_0/XNOR2_1_Y ));
    OR2A \cmp_2_0/OR2A_0  (.A(\DataOut_2[1] ), .B(\DataOut_2_0[1] ), 
        .Y(\cmp_2_0/OR2A_0_Y ));
    NOR2A \cmp_2_0/NOR2A_0  (.A(\DataOut_2_0[2] ), .B(\DataOut_2[2] ), 
        .Y(\cmp_2_0/NOR2A_0_Y ));
    IOIN_IB \DataA_pad[5]/U0/U1  (.YIN(\DataA_pad[5]/U0/NET1 ), .Y(
        \DataA_c[5] ));
    IOIN_IB \DataA_pad[2]/U0/U1  (.YIN(\DataA_pad[2]/U0/NET1 ), .Y(
        \DataA_c[2] ));
    AOI1 \cmp_2_0/AOI1_le_OUT  (.A(\cmp_2_0/AND3_0_Y ), .B(
        \cmp_2_0/AO1D_0_Y ), .C(\cmp_2_0/NAND3A_0_Y ), .Y(
        \cmp_2_0/le_OUT ));
    AX1C \Com_2C_1/DataOut_2[5]  (.A(\Com_2C_1/CO4 ), .B(\DataB_c[7] ), 
        .C(\DataB_c[5] ), .Y(\DataOut_2_0[5] ));
    IOIN_IB \DataA_pad[0]/U0/U1  (.YIN(\DataA_pad[0]/U0/NET1 ), .Y(
        \DataA_c[0] ));
    XNOR2 \cmp_2_0/XNOR2_2  (.A(\DataOut_2_0[6] ), .B(\DataOut_2[6] ), 
        .Y(\cmp_2_0/XNOR2_2_Y ));
    OR2A \cmp_2_0/OR2A_3  (.A(\DataOut_2[6] ), .B(\DataOut_2_0[6] ), 
        .Y(\cmp_2_0/OR2A_3_Y ));
    NAND3A \cmp_2_0/NAND3A_1  (.A(\DataOut_2[5] ), .B(\DataOut_2_0[5] )
        , .C(\cmp_2_0/OR2A_3_Y ), .Y(\cmp_2_0/NAND3A_1_Y ));
    IOPAD_IN \DataB_pad[2]/U0/U0  (.PAD(DataB[2]), .Y(
        \DataB_pad[2]/U0/NET1 ));
    OR2 \Com_2C_1/DataOut_1_1_ANC1  (.A(\DataB_c[1] ), .B(\DataB_c[0] )
        , .Y(\Com_2C_1/CO1 ));
    IOPAD_IN \DataB_pad[6]/U0/U0  (.PAD(DataB[6]), .Y(
        \DataB_pad[6]/U0/NET1 ));
    OR2 \Com_2C_0/DataOut_1_1_ANC5  (.A(\DataA_c[5] ), .B(
        \Com_2C_0/CO4 ), .Y(\Com_2C_0/CO5 ));
    AX1C \Com_2C_0/DataOut_2[5]  (.A(\Com_2C_0/CO4 ), .B(\DataA_c[7] ), 
        .C(\DataA_c[5] ), .Y(\DataOut_2[5] ));
    XNOR2 \cmp_2_0/XNOR2_0  (.A(\DataOut_2_0[5] ), .B(\DataOut_2[5] ), 
        .Y(\cmp_2_0/XNOR2_0_Y ));
    OR2 \Com_2C_1/DataOut_1_1_ANC2  (.A(\DataB_c[2] ), .B(
        \Com_2C_1/CO1 ), .Y(\Com_2C_1/CO2 ));
    IOIN_IB \DataB_pad[2]/U0/U1  (.YIN(\DataB_pad[2]/U0/NET1 ), .Y(
        \DataB_c[2] ));
    IOIN_IB \DataB_pad[6]/U0/U1  (.YIN(\DataB_pad[6]/U0/NET1 ), .Y(
        \DataB_c[6] ));
    AX1C \Com_2C_0/DataOut_2[3]  (.A(\Com_2C_0/CO2 ), .B(\DataA_c[7] ), 
        .C(\DataA_c[3] ), .Y(\DataOut_2[3] ));
    OR2 \Com_2C_1/DataOut_1_1_ANC4  (.A(\DataB_c[4] ), .B(
        \Com_2C_1/CO3 ), .Y(\Com_2C_1/CO4 ));
    AO1C \cmp_2_0/AO1C_1  (.A(\DataOut_2_0[3] ), .B(\DataOut_2[3] ), 
        .C(\cmp_2_0/AO1C_0_Y ), .Y(\cmp_2_0/AO1C_1_Y ));
    IOPAD_TRI \AGEB_pad/U0/U0  (.D(\AGEB_pad/U0/NET1 ), .E(
        \AGEB_pad/U0/NET2 ), .PAD(AGEB));
    IOPAD_IN \DataA_pad[1]/U0/U0  (.PAD(DataA[1]), .Y(
        \DataA_pad[1]/U0/NET1 ));
    OA1 \Com_2C_0/DataOut_2[7]  (.A(\Com_2C_0/CO5 ), .B(\DataA_c[6] ), 
        .C(\DataA_c[7] ), .Y(\DataOut_2[7] ));
    NOR3A \cmp_2_0/NOR3A_0  (.A(\cmp_2_0/OR2A_3_Y ), .B(
        \cmp_2_0/AO1C_5_Y ), .C(\DataOut_2[4] ), .Y(
        \cmp_2_0/NOR3A_0_Y ));
    AX1C \Com_2C_1/DataOut_2[3]  (.A(\Com_2C_1/CO2 ), .B(\DataB_c[7] ), 
        .C(\DataB_c[3] ), .Y(\DataOut_2_0[3] ));
    OA1 \Com_2C_1/DataOut_2[7]  (.A(\Com_2C_1/CO5 ), .B(\DataB_c[6] ), 
        .C(\DataB_c[7] ), .Y(\DataOut_2_0[7] ));
    IOPAD_IN \DataB_pad[4]/U0/U0  (.PAD(DataB[4]), .Y(
        \DataB_pad[4]/U0/NET1 ));
    AX1C \Com_2C_0/DataOut_2[1]  (.A(\DataA_c[0] ), .B(\DataA_c[7] ), 
        .C(\DataA_c[1] ), .Y(\DataOut_2[1] ));
    OR2 \Com_2C_0/DataOut_1_1_ANC3  (.A(\DataA_c[3] ), .B(
        \Com_2C_0/CO2 ), .Y(\Com_2C_0/CO3 ));
    IOIN_IB \DataA_pad[1]/U0/U1  (.YIN(\DataA_pad[1]/U0/NET1 ), .Y(
        \DataA_c[1] ));
    IOPAD_IN \DataA_pad[3]/U0/U0  (.PAD(DataA[3]), .Y(
        \DataA_pad[3]/U0/NET1 ));
    IOPAD_IN \DataA_pad[4]/U0/U0  (.PAD(DataA[4]), .Y(
        \DataA_pad[4]/U0/NET1 ));
    AND2A \cmp_2_0/AND_SIGN  (.A(\DataOut_2[7] ), .B(\DataOut_2_0[7] ), 
        .Y(\cmp_2_0/U2 ));
    AO1D \cmp_2_0/AO1D_0  (.A(\cmp_2_0/AO1C_1_Y ), .B(
        \cmp_2_0/AO1C_4_Y ), .C(\cmp_2_0/AO1C_2_Y ), .Y(
        \cmp_2_0/AO1D_0_Y ));
    IOIN_IB \DataB_pad[4]/U0/U1  (.YIN(\DataB_pad[4]/U0/NET1 ), .Y(
        \DataB_c[4] ));
    IOPAD_IN \DataB_pad[3]/U0/U0  (.PAD(DataB[3]), .Y(
        \DataB_pad[3]/U0/NET1 ));
    AO1C \cmp_2_0/AO1C_0  (.A(\DataA_c[0] ), .B(\DataB_c[0] ), .C(
        \cmp_2_0/OR2A_1_Y ), .Y(\cmp_2_0/AO1C_0_Y ));
    IOIN_IB \DataA_pad[3]/U0/U1  (.YIN(\DataA_pad[3]/U0/NET1 ), .Y(
        \DataA_c[3] ));
    IOPAD_IN \DataA_pad[6]/U0/U0  (.PAD(DataA[6]), .Y(
        \DataA_pad[6]/U0/NET1 ));
    IOIN_IB \DataA_pad[4]/U0/U1  (.YIN(\DataA_pad[4]/U0/NET1 ), .Y(
        \DataA_c[4] ));
    AND3 \cmp_2_0/AND3_0  (.A(\cmp_2_0/XNOR2_1_Y ), .B(
        \cmp_2_0/XNOR2_0_Y ), .C(\cmp_2_0/XNOR2_2_Y ), .Y(
        \cmp_2_0/AND3_0_Y ));
    OR2A \cmp_2_0/OR2A_2  (.A(\DataOut_2_0[6] ), .B(\DataOut_2[6] ), 
        .Y(\cmp_2_0/OR2A_2_Y ));
    AO1C \cmp_2_0/AO1C_4  (.A(\DataOut_2_0[2] ), .B(\DataOut_2[2] ), 
        .C(\cmp_2_0/OR2A_0_Y ), .Y(\cmp_2_0/AO1C_4_Y ));
    IOIN_IB \DataB_pad[3]/U0/U1  (.YIN(\DataB_pad[3]/U0/NET1 ), .Y(
        \DataB_c[3] ));
    IOPAD_IN \DataB_pad[1]/U0/U0  (.PAD(DataB[1]), .Y(
        \DataB_pad[1]/U0/NET1 ));
    AX1C \Com_2C_0/DataOut_2[2]  (.A(\Com_2C_0/CO1 ), .B(\DataA_c[7] ), 
        .C(\DataA_c[2] ), .Y(\DataOut_2[2] ));
    IOIN_IB \DataA_pad[6]/U0/U1  (.YIN(\DataA_pad[6]/U0/NET1 ), .Y(
        \DataA_c[6] ));
    IOPAD_IN \DataB_pad[0]/U0/U0  (.PAD(DataB[0]), .Y(
        \DataB_pad[0]/U0/NET1 ));
    AX1C \Com_2C_1/DataOut_2[2]  (.A(\Com_2C_1/CO1 ), .B(\DataB_c[7] ), 
        .C(\DataB_c[2] ), .Y(\DataOut_2_0[2] ));
    IOIN_IB \DataB_pad[1]/U0/U1  (.YIN(\DataB_pad[1]/U0/NET1 ), .Y(
        \DataB_c[1] ));
    IOPAD_IN \DataA_pad[7]/U0/U0  (.PAD(DataA[7]), .Y(
        \DataA_pad[7]/U0/NET1 ));
    OR2 \Com_2C_0/DataOut_1_1_ANC1  (.A(\DataA_c[1] ), .B(\DataA_c[0] )
        , .Y(\Com_2C_0/CO1 ));
    IOPAD_IN \DataB_pad[5]/U0/U0  (.PAD(DataB[5]), .Y(
        \DataB_pad[5]/U0/NET1 ));
    OR2A \cmp_2_0/OR_SIGN  (.A(\DataOut_2[7] ), .B(\DataOut_2_0[7] ), 
        .Y(\cmp_2_0/U1 ));
    AO1C \cmp_2_0/AO1C_3  (.A(\DataOut_2_0[3] ), .B(\DataOut_2[3] ), 
        .C(\cmp_2_0/NOR2A_0_Y ), .Y(\cmp_2_0/AO1C_3_Y ));
    IOIN_IB \DataB_pad[0]/U0/U1  (.YIN(\DataB_pad[0]/U0/NET1 ), .Y(
        \DataB_c[0] ));
    OR2 \Com_2C_1/DataOut_1_1_ANC5  (.A(\DataB_c[5] ), .B(
        \Com_2C_1/CO4 ), .Y(\Com_2C_1/CO5 ));
    AO1C \cmp_2_0/AO1C_5  (.A(\DataOut_2_0[5] ), .B(\DataOut_2[5] ), 
        .C(\DataOut_2_0[4] ), .Y(\cmp_2_0/AO1C_5_Y ));
    IOIN_IB \DataA_pad[7]/U0/U1  (.YIN(\DataA_pad[7]/U0/NET1 ), .Y(
        \DataA_c[7] ));
    AX1C \Com_2C_1/DataOut_2[1]  (.A(\DataB_c[0] ), .B(\DataB_c[7] ), 
        .C(\DataB_c[1] ), .Y(\DataOut_2_0[1] ));
    OR2A \cmp_2_0/OR2A_1  (.A(\DataOut_2_0[1] ), .B(\DataOut_2[1] ), 
        .Y(\cmp_2_0/OR2A_1_Y ));
    OR2 \Com_2C_0/DataOut_1_1_ANC2  (.A(\DataA_c[2] ), .B(
        \Com_2C_0/CO1 ), .Y(\Com_2C_0/CO2 ));
    AX1C \Com_2C_1/DataOut_2[6]  (.A(\Com_2C_1/CO5 ), .B(\DataB_c[7] ), 
        .C(\DataB_c[6] ), .Y(\DataOut_2_0[6] ));
    IOIN_IB \DataB_pad[5]/U0/U1  (.YIN(\DataB_pad[5]/U0/NET1 ), .Y(
        \DataB_c[5] ));
    OR2 \Com_2C_0/DataOut_1_1_ANC4  (.A(\DataA_c[4] ), .B(
        \Com_2C_0/CO3 ), .Y(\Com_2C_0/CO4 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
