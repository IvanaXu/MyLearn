`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module XYF(
       EI,
       Y,
       DataIn,
       DataIn_0,
       Seg
    );
input  EI;
output Y;
input  [7:0] DataIn;
input  [7:0] DataIn_0;
output [7:0] Seg;

    wire HC148_1_GS, INV_2_Y, HC148_0_GS, INV_1_Y, INV_0_Y, 
        \HC4511_0.N_4 , \HC4511_0.N_6 , \HC4511_0.N_8 , 
        \HC4511_0.N_10 , \HC4511_0.N_12 , \HC4511_0.N_15 , 
        \HC4511_0.N_18 , \HC148_0.N_41 , \HC148_0.N_43 , 
        \HC148_0.N_56 , \Dataout_i[0] , \Dataout_i[1] , 
        \Dataout_i_a2[2] , EI_c, Y_c, \DataIn_c[0] , \DataIn_c[1] , 
        \DataIn_c[2] , \DataIn_c[3] , \DataIn_c[4] , \DataIn_c[5] , 
        \DataIn_c[6] , \DataIn_c[7] , \DataIn_0_c[0] , \DataIn_0_c[1] , 
        \DataIn_0_c[2] , \DataIn_0_c[3] , \DataIn_0_c[4] , 
        \DataIn_0_c[5] , \DataIn_0_c[6] , \DataIn_0_c[7] , GND, 
        \HC148_0.EI_i_0 , HC85_0_QASB, 
        \HC148_1/Dataout_i_a2_0[0]_net_1 , \HC148_1/un1_DataIn_1 , 
        \HC148_1/un1_DataIn_2 , \HC148_1/un1_DataIn_3 , 
        \HC148_1/un1_DataIn_4 , \HC148_1/un1_DataIn_0 , 
        \HC148_1/Dataout_i_a2_0[1]_net_1 , \HC148_1/N_53 , 
        \HC148_1/N_52 , \HC148_1/N_51 , \HC148_1/N_49 , \HC148_1/N_55 , 
        \HC148_0/Dataout_i_a2_0[0]_net_1 , \HC148_0/un1_DataIn_1 , 
        \HC148_0/un1_DataIn_2 , \HC148_0/un1_DataIn_3 , 
        \HC148_0/un1_DataIn_4 , \HC148_0/un1_DataIn_0 , \HC148_0/N_53 , 
        \HC148_0/N_54 , \HC148_0/N_52 , \HC148_0/N_51 , \HC148_0/N_49 , 
        \HC4511_0/SM_8S_i_a5_0[0]_net_1 , \HC4511_0/N_80 , 
        \HC4511_0/SM_8S_i_0[6]_net_1 , 
        \HC4511_0/SM_8S_i_a5_0_0[6]_net_1 , 
        \HC4511_0/SM_8S_i_a5_0[1]_net_1 , \HC4511_0/N_63 , 
        \HC4511_0/N_76 , \HC4511_0/N_77 , \HC4511_0/N_22 , 
        \HC4511_0/N_65 , \HC4511_0/N_67 , \HC4511_0/N_73 , 
        \HC4511_0/N_82 , \DataIn_pad[4]/U0/NET1 , 
        \DataIn_0_pad[2]/U0/NET1 , \DataIn_pad[5]/U0/NET1 , 
        \DataIn_pad[7]/U0/NET1 , \Seg_pad[0]/U0/NET1 , 
        \Seg_pad[0]/U0/NET2 , \Seg_pad[2]/U0/NET1 , 
        \Seg_pad[2]/U0/NET2 , \DataIn_pad[2]/U0/NET1 , 
        \DataIn_0_pad[1]/U0/NET1 , \Seg_pad[1]/U0/NET1 , 
        \Seg_pad[1]/U0/NET2 , \DataIn_0_pad[3]/U0/NET1 , 
        \DataIn_0_pad[5]/U0/NET1 , \DataIn_0_pad[0]/U0/NET1 , 
        \DataIn_0_pad[7]/U0/NET1 , \DataIn_0_pad[4]/U0/NET1 , 
        \Seg_pad[5]/U0/NET1 , \Seg_pad[5]/U0/NET2 , 
        \DataIn_pad[0]/U0/NET1 , \Seg_pad[7]/U0/NET1 , 
        \Seg_pad[7]/U0/NET2 , \DataIn_pad[1]/U0/NET1 , 
        \EI_pad/U0/NET1 , \Seg_pad[4]/U0/NET1 , \Seg_pad[4]/U0/NET2 , 
        \Y_pad/U0/NET1 , \Y_pad/U0/NET2 , \DataIn_pad[6]/U0/NET1 , 
        \DataIn_pad[3]/U0/NET1 , \Seg_pad[3]/U0/NET1 , 
        \Seg_pad[3]/U0/NET2 , \Seg_pad[6]/U0/NET1 , 
        \Seg_pad[6]/U0/NET2 , VCC, \DataIn_0_pad[6]/U0/NET1 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR2 \HC4511_0/SM_8S_i_a2_0[3]  (.A(INV_2_Y), .B(INV_0_Y), .Y(
        \HC4511_0/N_82 ));
    AX1C \HC4511_0/SM_8S_i_0[6]  (.A(INV_1_Y), .B(INV_2_Y), .C(
        \HC148_0.EI_i_0 ), .Y(\HC4511_0/SM_8S_i_0[6]_net_1 ));
    NOR3 \HC148_1/Dataout_i_a2[0]  (.A(\HC148_1/N_49 ), .B(EI_c), .C(
        \HC148_1/Dataout_i_a2_0[0]_net_1 ), .Y(\HC148_1/N_51 ));
    NOR2A \HC4511_0/SM_8S_i_a5_0[2]  (.A(\HC4511_0/N_80 ), .B(INV_1_Y), 
        .Y(\HC4511_0/N_67 ));
    IOIN_IB \DataIn_0_pad[3]/U0/U1  (.YIN(\DataIn_0_pad[3]/U0/NET1 ), 
        .Y(\DataIn_0_c[3] ));
    IOIN_IB \DataIn_0_pad[5]/U0/U1  (.YIN(\DataIn_0_pad[5]/U0/NET1 ), 
        .Y(\DataIn_0_c[5] ));
    OR2B \HC148_1/Dataout_i_a2_0_0[0]  (.A(\DataIn_0_c[4] ), .B(
        \DataIn_0_c[6] ), .Y(\HC148_1/Dataout_i_a2_0[0]_net_1 ));
    OR2B \HC148_1/local.un1_DataIn_4  (.A(\DataIn_0_c[7] ), .B(
        \DataIn_0_c[6] ), .Y(\HC148_1/un1_DataIn_4 ));
    NOR2A \HC148_1/Dataout_i_a2_0[1]  (.A(\HC148_1/un1_DataIn_4 ), .B(
        EI_c), .Y(\HC148_1/N_55 ));
    IOIN_IB \DataIn_0_pad[1]/U0/U1  (.YIN(\DataIn_0_pad[1]/U0/NET1 ), 
        .Y(\DataIn_0_c[1] ));
    OR2A \HC4511_0/SM_8S_i_a5_0_0[1]  (.A(INV_0_Y), .B(INV_2_Y), .Y(
        \HC4511_0/SM_8S_i_a5_0[1]_net_1 ));
    NOR2B \HC148_0/local.un1_DataIn_2  (.A(\DataIn_c[3] ), .B(
        \DataIn_c[2] ), .Y(\HC148_0/un1_DataIn_2 ));
    IOPAD_IN \DataIn_0_pad[2]/U0/U0  (.PAD(DataIn_0[2]), .Y(
        \DataIn_0_pad[2]/U0/NET1 ));
    OR3B \HC148_1/local.Dataout62  (.A(\HC148_1/un1_DataIn_0 ), .B(
        \HC148_1/un1_DataIn_1 ), .C(EI_c), .Y(\HC148_0.EI_i_0 ));
    IOPAD_IN \EI_pad/U0/U0  (.PAD(EI), .Y(\EI_pad/U0/NET1 ));
    IOTRI_OB_EB \Seg_pad[5]/U0/U1  (.D(\HC4511_0.N_15 ), .E(VCC), 
        .DOUT(\Seg_pad[5]/U0/NET1 ), .EOUT(\Seg_pad[5]/U0/NET2 ));
    AND2 AND2_0 (.A(\Dataout_i[0] ), .B(\HC148_0.N_41 ), .Y(INV_0_Y));
    IOPAD_TRI \Seg_pad[1]/U0/U0  (.D(\Seg_pad[1]/U0/NET1 ), .E(
        \Seg_pad[1]/U0/NET2 ), .PAD(Seg[1]));
    IOPAD_IN \DataIn_pad[1]/U0/U0  (.PAD(DataIn[1]), .Y(
        \DataIn_pad[1]/U0/NET1 ));
    NOR2B \HC148_0/local.un1_DataIn_0  (.A(\DataIn_c[0] ), .B(
        \DataIn_c[1] ), .Y(\HC148_0/un1_DataIn_0 ));
    IOPAD_IN \DataIn_0_pad[6]/U0/U0  (.PAD(DataIn_0[6]), .Y(
        \DataIn_0_pad[6]/U0/NET1 ));
    NOR3 \HC4511_0/SM_8S_i[5]  (.A(\HC4511_0/N_67 ), .B(HC85_0_QASB), 
        .C(\HC4511_0/N_73 ), .Y(\HC4511_0.N_15 ));
    NOR3 \HC148_0/Dataout_i[0]  (.A(\HC148_0/N_52 ), .B(\HC148_0/N_51 )
        , .C(\HC148_0/N_53 ), .Y(\HC148_0.N_41 ));
    NOR3 \HC148_1/Dataout_i[0]  (.A(\HC148_1/N_52 ), .B(\HC148_1/N_51 )
        , .C(\HC148_1/N_53 ), .Y(\Dataout_i[0] ));
    IOTRI_OB_EB \Seg_pad[6]/U0/U1  (.D(\HC4511_0.N_18 ), .E(VCC), 
        .DOUT(\Seg_pad[6]/U0/NET1 ), .EOUT(\Seg_pad[6]/U0/NET2 ));
    IOIN_IB \DataIn_0_pad[0]/U0/U1  (.YIN(\DataIn_0_pad[0]/U0/NET1 ), 
        .Y(\DataIn_0_c[0] ));
    NOR3 \HC4511_0/SM_8S_i_a5[5]  (.A(INV_0_Y), .B(\HC148_0.EI_i_0 ), 
        .C(\HC4511_0/N_22 ), .Y(\HC4511_0/N_73 ));
    AND2 AND2_2 (.A(\Dataout_i_a2[2] ), .B(\HC148_0.N_56 ), .Y(INV_2_Y)
        );
    AO1C \HC148_0/Dataout_i_o2[0]  (.A(\DataIn_c[1] ), .B(
        \DataIn_c[2] ), .C(\DataIn_c[3] ), .Y(\HC148_0/N_49 ));
    AND2 AND2_G (.A(HC148_1_GS), .B(HC148_0_GS), .Y(Y_c));
    NOR3A \HC148_0/local.un1_DataIn_1  (.A(\HC148_0/un1_DataIn_2 ), .B(
        \HC148_0/un1_DataIn_3 ), .C(\HC148_0/un1_DataIn_4 ), .Y(
        \HC148_0/un1_DataIn_1 ));
    IOIN_IB \DataIn_pad[1]/U0/U1  (.YIN(\DataIn_pad[1]/U0/NET1 ), .Y(
        \DataIn_c[1] ));
    IOTRI_OB_EB \Seg_pad[4]/U0/U1  (.D(\HC4511_0.N_12 ), .E(VCC), 
        .DOUT(\Seg_pad[4]/U0/NET1 ), .EOUT(\Seg_pad[4]/U0/NET2 ));
    IOPAD_IN \DataIn_0_pad[3]/U0/U0  (.PAD(DataIn_0[3]), .Y(
        \DataIn_0_pad[3]/U0/NET1 ));
    IOPAD_TRI \Seg_pad[5]/U0/U0  (.D(\Seg_pad[5]/U0/NET1 ), .E(
        \Seg_pad[5]/U0/NET2 ), .PAD(Seg[5]));
    AO1D \HC148_0/Dataout_i_a2[2]  (.A(\HC148_0/un1_DataIn_4 ), .B(
        \HC148_0/un1_DataIn_3 ), .C(\HC148_0.EI_i_0 ), .Y(
        \HC148_0.N_56 ));
    IOPAD_IN \DataIn_0_pad[5]/U0/U0  (.PAD(DataIn_0[5]), .Y(
        \DataIn_0_pad[5]/U0/NET1 ));
    AND2 AND2_1 (.A(\Dataout_i[1] ), .B(\HC148_0.N_43 ), .Y(INV_1_Y));
    IOTRI_OB_EB \Seg_pad[2]/U0/U1  (.D(\HC4511_0.N_8 ), .E(VCC), .DOUT(
        \Seg_pad[2]/U0/NET1 ), .EOUT(\Seg_pad[2]/U0/NET2 ));
    NOR3C \HC4511_0/SM_8S_i_a5_1[6]  (.A(\HC148_0.EI_i_0 ), .B(INV_0_Y)
        , .C(\HC4511_0/N_22 ), .Y(\HC4511_0/N_77 ));
    NOR2B \HC148_1/local.un1_DataIn_2  (.A(\DataIn_0_c[3] ), .B(
        \DataIn_0_c[2] ), .Y(\HC148_1/un1_DataIn_2 ));
    IOIN_IB \DataIn_0_pad[7]/U0/U1  (.YIN(\DataIn_0_pad[7]/U0/NET1 ), 
        .Y(\DataIn_0_c[7] ));
    IOPAD_IN \DataIn_0_pad[1]/U0/U0  (.PAD(DataIn_0[1]), .Y(
        \DataIn_0_pad[1]/U0/NET1 ));
    OA1C \HC148_0/Dataout_i[1]  (.A(\HC148_0/un1_DataIn_4 ), .B(
        \HC148_0.EI_i_0 ), .C(\HC148_0/N_54 ), .Y(\HC148_0.N_43 ));
    OA1C \HC4511_0/SM_8S_i_a5[1]  (.A(INV_1_Y), .B(\HC148_0.EI_i_0 ), 
        .C(\HC4511_0/SM_8S_i_a5_0[1]_net_1 ), .Y(\HC4511_0/N_63 ));
    IOIN_IB \DataIn_0_pad[4]/U0/U1  (.YIN(\DataIn_0_pad[4]/U0/NET1 ), 
        .Y(\DataIn_0_c[4] ));
    IOPAD_IN \DataIn_pad[5]/U0/U0  (.PAD(DataIn[5]), .Y(
        \DataIn_pad[5]/U0/NET1 ));
    IOPAD_IN \DataIn_pad[6]/U0/U0  (.PAD(DataIn[6]), .Y(
        \DataIn_pad[6]/U0/NET1 ));
    AOI1B \HC85_0/QAGB17lto3  (.A(INV_2_Y), .B(INV_1_Y), .C(
        \HC148_0.EI_i_0 ), .Y(HC85_0_QASB));
    AO1D \HC148_1/Dataout_i_a2[2]  (.A(\HC148_1/un1_DataIn_4 ), .B(
        \HC148_1/un1_DataIn_3 ), .C(EI_c), .Y(\Dataout_i_a2[2] ));
    IOPAD_TRI \Seg_pad[6]/U0/U0  (.D(\Seg_pad[6]/U0/NET1 ), .E(
        \Seg_pad[6]/U0/NET2 ), .PAD(Seg[6]));
    OR2 \HC148_1/Dataout_i_a2_0_0[1]  (.A(EI_c), .B(
        \HC148_1/un1_DataIn_2 ), .Y(\HC148_1/Dataout_i_a2_0[1]_net_1 ));
    NOR3A \HC148_0/Dataout_i_a2_1[0]  (.A(\DataIn_c[6] ), .B(
        \DataIn_c[5] ), .C(\HC148_0.EI_i_0 ), .Y(\HC148_0/N_53 ));
    NOR2B \HC148_1/local.un1_DataIn_0  (.A(\DataIn_0_c[0] ), .B(
        \DataIn_0_c[1] ), .Y(\HC148_1/un1_DataIn_0 ));
    IOPAD_TRI \Seg_pad[4]/U0/U0  (.D(\Seg_pad[4]/U0/NET1 ), .E(
        \Seg_pad[4]/U0/NET2 ), .PAD(Seg[4]));
    IOTRI_OB_EB \Seg_pad[3]/U0/U1  (.D(\HC4511_0.N_10 ), .E(VCC), 
        .DOUT(\Seg_pad[3]/U0/NET1 ), .EOUT(\Seg_pad[3]/U0/NET2 ));
    IOPAD_TRI \Seg_pad[2]/U0/U0  (.D(\Seg_pad[2]/U0/NET1 ), .E(
        \Seg_pad[2]/U0/NET2 ), .PAD(Seg[2]));
    IOIN_IB \DataIn_pad[5]/U0/U1  (.YIN(\DataIn_pad[5]/U0/NET1 ), .Y(
        \DataIn_c[5] ));
    NOR2B \HC4511_0/SM_8S_i_a2[2]  (.A(INV_2_Y), .B(INV_0_Y), .Y(
        \HC4511_0/N_80 ));
    IOTRI_OB_EB \Y_pad/U0/U1  (.D(Y_c), .E(VCC), .DOUT(\Y_pad/U0/NET1 )
        , .EOUT(\Y_pad/U0/NET2 ));
    AO1 \HC148_1/GS  (.A(\HC148_1/un1_DataIn_1 ), .B(
        \HC148_1/un1_DataIn_0 ), .C(EI_c), .Y(HC148_1_GS));
    OA1A \HC148_1/Dataout_i_o2[0]  (.A(\DataIn_0_c[2] ), .B(
        \DataIn_0_c[1] ), .C(\DataIn_0_c[3] ), .Y(\HC148_1/N_49 ));
    NOR2 \HC148_0/Dataout_i_a2_0[0]  (.A(\HC148_0.EI_i_0 ), .B(
        \DataIn_c[7] ), .Y(\HC148_0/N_52 ));
    IOIN_IB \DataIn_pad[6]/U0/U1  (.YIN(\DataIn_pad[6]/U0/NET1 ), .Y(
        \DataIn_c[6] ));
    NOR3 \HC4511_0/SM_8S_i[6]  (.A(\HC4511_0/N_77 ), .B(
        \HC4511_0/N_76 ), .C(\HC4511_0/SM_8S_i_0[6]_net_1 ), .Y(
        \HC4511_0.N_18 ));
    IOPAD_IN \DataIn_pad[7]/U0/U0  (.PAD(DataIn[7]), .Y(
        \DataIn_pad[7]/U0/NET1 ));
    IOPAD_IN \DataIn_pad[4]/U0/U0  (.PAD(DataIn[4]), .Y(
        \DataIn_pad[4]/U0/NET1 ));
    IOPAD_IN \DataIn_0_pad[0]/U0/U0  (.PAD(DataIn_0[0]), .Y(
        \DataIn_0_pad[0]/U0/NET1 ));
    NOR2 \HC4511_0/SM_8S_i_a5_0_0[6]  (.A(INV_1_Y), .B(INV_2_Y), .Y(
        \HC4511_0/SM_8S_i_a5_0_0[6]_net_1 ));
    NOR3A \HC148_1/local.un1_DataIn_1  (.A(\HC148_1/un1_DataIn_2 ), .B(
        \HC148_1/un1_DataIn_3 ), .C(\HC148_1/un1_DataIn_4 ), .Y(
        \HC148_1/un1_DataIn_1 ));
    NOR3A \HC4511_0/SM_8S_i_2  (.A(INV_0_Y), .B(HC85_0_QASB), .C(
        \HC4511_0/N_22 ), .Y(\HC4511_0.N_12 ));
    IOPAD_IN \DataIn_pad[3]/U0/U0  (.PAD(DataIn[3]), .Y(
        \DataIn_pad[3]/U0/NET1 ));
    OR2B \HC148_0/local.un1_DataIn_3  (.A(\DataIn_c[5] ), .B(
        \DataIn_c[4] ), .Y(\HC148_0/un1_DataIn_3 ));
    NOR3A \HC4511_0/SM_8S_i_a5_0[6]  (.A(
        \HC4511_0/SM_8S_i_a5_0_0[6]_net_1 ), .B(INV_0_Y), .C(
        \HC148_0.EI_i_0 ), .Y(\HC4511_0/N_76 ));
    NOR2B \HC4511_0/SM_8S_i_a5_0[1]  (.A(\HC4511_0/N_82 ), .B(
        \HC4511_0/N_22 ), .Y(\HC4511_0/N_65 ));
    IOPAD_TRI \Y_pad/U0/U0  (.D(\Y_pad/U0/NET1 ), .E(\Y_pad/U0/NET2 ), 
        .PAD(Y));
    IOIN_IB \EI_pad/U0/U1  (.YIN(\EI_pad/U0/NET1 ), .Y(EI_c));
    IOPAD_IN \DataIn_pad[2]/U0/U0  (.PAD(DataIn[2]), .Y(
        \DataIn_pad[2]/U0/NET1 ));
    IOPAD_IN \DataIn_0_pad[7]/U0/U0  (.PAD(DataIn_0[7]), .Y(
        \DataIn_0_pad[7]/U0/NET1 ));
    IOPAD_TRI \Seg_pad[3]/U0/U0  (.D(\Seg_pad[3]/U0/NET1 ), .E(
        \Seg_pad[3]/U0/NET2 ), .PAD(Seg[3]));
    IOPAD_IN \DataIn_0_pad[4]/U0/U0  (.PAD(DataIn_0[4]), .Y(
        \DataIn_0_pad[4]/U0/NET1 ));
    IOTRI_OB_EB \Seg_pad[0]/U0/U1  (.D(\HC4511_0.N_4 ), .E(VCC), .DOUT(
        \Seg_pad[0]/U0/NET1 ), .EOUT(\Seg_pad[0]/U0/NET2 ));
    NOR2B \HC148_0/Dataout_i_a2_0_0[0]  (.A(\DataIn_c[4] ), .B(
        \DataIn_c[6] ), .Y(\HC148_0/Dataout_i_a2_0[0]_net_1 ));
    IOPAD_IN \DataIn_pad[0]/U0/U0  (.PAD(DataIn[0]), .Y(
        \DataIn_pad[0]/U0/NET1 ));
    OR2B \HC148_0/local.un1_DataIn_4  (.A(\DataIn_c[7] ), .B(
        \DataIn_c[6] ), .Y(\HC148_0/un1_DataIn_4 ));
    IOIN_IB \DataIn_0_pad[2]/U0/U1  (.YIN(\DataIn_0_pad[2]/U0/NET1 ), 
        .Y(\DataIn_0_c[2] ));
    IOIN_IB \DataIn_pad[7]/U0/U1  (.YIN(\DataIn_pad[7]/U0/NET1 ), .Y(
        \DataIn_c[7] ));
    IOIN_IB \DataIn_pad[4]/U0/U1  (.YIN(\DataIn_pad[4]/U0/NET1 ), .Y(
        \DataIn_c[4] ));
    IOTRI_OB_EB \Seg_pad[7]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \Seg_pad[7]/U0/NET1 ), .EOUT(\Seg_pad[7]/U0/NET2 ));
    OR3A \HC4511_0/SM_8S_i_a5_0[0]  (.A(INV_1_Y), .B(\HC148_0.EI_i_0 ), 
        .C(\HC4511_0/N_80 ), .Y(\HC4511_0/SM_8S_i_a5_0[0]_net_1 ));
    OA1B \HC148_1/Dataout_i[1]  (.A(\HC148_1/un1_DataIn_3 ), .B(
        \HC148_1/Dataout_i_a2_0[1]_net_1 ), .C(\HC148_1/N_55 ), .Y(
        \Dataout_i[1] ));
    IOIN_IB \DataIn_pad[3]/U0/U1  (.YIN(\DataIn_pad[3]/U0/NET1 ), .Y(
        \DataIn_c[3] ));
    NOR3 \HC4511_0/SM_8S_i_1[1]  (.A(\HC4511_0/N_63 ), .B(HC85_0_QASB), 
        .C(\HC4511_0/N_65 ), .Y(\HC4511_0.N_6 ));
    NOR3A \HC148_1/Dataout_i_a2_1[0]  (.A(\DataIn_0_c[6] ), .B(
        \DataIn_0_c[5] ), .C(EI_c), .Y(\HC148_1/N_53 ));
    NOR2A \HC4511_0/SM_8S_i_o2[5]  (.A(INV_1_Y), .B(INV_2_Y), .Y(
        \HC4511_0/N_22 ));
    IOIN_IB \DataIn_pad[2]/U0/U1  (.YIN(\DataIn_pad[2]/U0/NET1 ), .Y(
        \DataIn_c[2] ));
    IOIN_IB \DataIn_0_pad[6]/U0/U1  (.YIN(\DataIn_0_pad[6]/U0/NET1 ), 
        .Y(\DataIn_0_c[6] ));
    IOIN_IB \DataIn_pad[0]/U0/U1  (.YIN(\DataIn_pad[0]/U0/NET1 ), .Y(
        \DataIn_c[0] ));
    OA1A \HC4511_0/SM_8S_i[3]  (.A(\HC4511_0/N_82 ), .B(INV_1_Y), .C(
        \HC4511_0.N_4 ), .Y(\HC4511_0.N_10 ));
    NOR3B \HC148_0/Dataout_i_a2[0]  (.A(\HC148_0/N_49 ), .B(
        \HC148_0/Dataout_i_a2_0[0]_net_1 ), .C(\HC148_0.EI_i_0 ), .Y(
        \HC148_0/N_51 ));
    IOPAD_TRI \Seg_pad[0]/U0/U0  (.D(\Seg_pad[0]/U0/NET1 ), .E(
        \Seg_pad[0]/U0/NET2 ), .PAD(Seg[0]));
    OA1B \HC4511_0/SM_8S_i_1[3]  (.A(\HC4511_0/N_82 ), .B(
        \HC4511_0/SM_8S_i_a5_0[0]_net_1 ), .C(HC85_0_QASB), .Y(
        \HC4511_0.N_4 ));
    AO1 \HC148_0/GS  (.A(\HC148_0/un1_DataIn_1 ), .B(
        \HC148_0/un1_DataIn_0 ), .C(\HC148_0.EI_i_0 ), .Y(HC148_0_GS));
    NOR2 \HC148_1/Dataout_i_a2_0[0]  (.A(EI_c), .B(\DataIn_0_c[7] ), 
        .Y(\HC148_1/N_52 ));
    NOR3 \HC148_0/Dataout_i_a2[1]  (.A(\HC148_0/un1_DataIn_2 ), .B(
        \HC148_0.EI_i_0 ), .C(\HC148_0/un1_DataIn_3 ), .Y(
        \HC148_0/N_54 ));
    OR2B \HC148_1/local.un1_DataIn_3  (.A(\DataIn_0_c[5] ), .B(
        \DataIn_0_c[4] ), .Y(\HC148_1/un1_DataIn_3 ));
    IOPAD_TRI \Seg_pad[7]/U0/U0  (.D(\Seg_pad[7]/U0/NET1 ), .E(
        \Seg_pad[7]/U0/NET2 ), .PAD(Seg[7]));
    NOR2 \HC4511_0/SM_8S_i[2]  (.A(\HC4511_0/N_67 ), .B(HC85_0_QASB), 
        .Y(\HC4511_0.N_8 ));
    IOTRI_OB_EB \Seg_pad[1]/U0/U1  (.D(\HC4511_0.N_6 ), .E(VCC), .DOUT(
        \Seg_pad[1]/U0/NET1 ), .EOUT(\Seg_pad[1]/U0/NET2 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
