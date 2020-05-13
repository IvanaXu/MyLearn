`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module XYF(
       Clk,
       Reset,
       Red1,
       Yellow1,
       Green1,
       Red2,
       Yellow2,
       Green2,
       Seg,
       Sl
    );
input  Clk;
input  Reset;
output Red1;
output Yellow1;
output Green1;
output Red2;
output Yellow2;
output Green2;
output [7:0] Seg;
output [3:0] Sl;

    wire \Q_NS_0[0] , \Q_NS_0[1] , \Q_NS_0[2] , \Q_NS_0[3] , 
        \Q_NS_0[4] , \Q_NS_0[5] , \Q_NS_0[6] , \Q_NS_0[7] , \Q_NS[0] , 
        \Q_NS[1] , \Q_NS[2] , \Q_NS[3] , \Q_NS[4] , \Q_NS[5] , 
        \Q_NS[6] , \Q_NS[7] , one_seond_clk_0_Cout, 
        \trattic_control_0.current_state[0] , \timer_EW.State_i_0[3] , 
        \dymamic_led_0.Disp_dat9 , \dymamic_led_0.Disp_dat6 , 
        \dymamic_led_0.Disp_dat7 , \dymamic_led_0.Disp_dat8 , 
        \SM_8S_1_i_0_a3_0[0] , \SM_8S_1_i_0[1] , 
        \dymamic_led_0.HC4511_0.N_6 , Clk_c, Reset_c, Red1_c, 
        Yellow1_c, Green1_c, Green2_c, \Seg_c[4] , \Seg_c[5] , 
        \Seg_c[6] , timer_NS_0_Done_NS, timer_EW_Done_NS, 
        \timer_NS_0.Ld_i , \un1_BIN_to_BCD_1[1] , 
        \un1_BIN_to_BCD_1_1[0] , \un1_BIN_to_BCD_0_1[1] , 
        \un1_BIN_to_BCD_1_1[1] , \un1_BIN_to_BCD_0[1] , 
        \un1_BIN_to_BCD_0_1[0] , \un1_BIN_to_BCD_1[2] , 
        \un1_BIN_to_BCD_0_1[2] , \un1_BIN_to_BCD_1_1[2] , 
        \un1_BIN_to_BCD_0[2] , \un1_BIN_to_BCD_0[3] , 
        \un1_BIN_to_BCD_1_1[3] , \un1_BIN_to_BCD_1[3] , 
        \un1_BIN_to_BCD_0_1[3] , Q_NSlde_i_o2tt_m1_0_a2, 
        \dymamic_led_0.HC4511_0.N_21_i_0 , Red1_c_i, \timer_EW.Ld_i , 
        \timer_NS_0.N_16 , \timer_EW.N_60 , 
        \BIN_to_BCD_0/temp_22[7]_net_1 , \BIN_to_BCD_0/N_19_i , 
        \BIN_to_BCD_0/N_25_i , \BIN_to_BCD_0/temp86lto2 , 
        \BIN_to_BCD_0/CO1 , \BIN_to_BCD_0/temp_11_i[0] , 
        \BIN_to_BCD_0/temp_15[1]_net_1 , \BIN_to_BCD_0/CO1_0 , 
        \BIN_to_BCD_0/temp_7_i[0] , \BIN_to_BCD_0/temp_7[1]_net_1 , 
        \BIN_to_BCD_0/temp_7[2]_net_1 , 
        \BIN_to_BCD_0/temp_11[1]_net_1 , 
        \BIN_to_BCD_0/temp_11[2]_net_1 , 
        \BIN_to_BCD_0/temp_22[5]_net_1 , 
        \BIN_to_BCD_0/temp_15[2]_net_1 , \BIN_to_BCD_0/CO1_1 , 
        \BIN_to_BCD_0/temp_15_i[0] , \BIN_to_BCD_0/temp_19[1]_net_1 , 
        \BIN_to_BCD_0/N_31 , \BIN_to_BCD_0/CO1_2 , 
        \BIN_to_BCD_0/temp_22[6]_net_1 , 
        \BIN_to_BCD_0/un1_BIN_to_BCD_0_2[0] , \BIN_to_BCD_0/CO1_3 , 
        \BIN_to_BCD_0/temp_19_i[0] , \BIN_to_BCD_0/temp_19_i[2] , 
        \one_seond_clk_0/Count_19_0 , \one_seond_clk_0/Count[8]_net_1 , 
        \one_seond_clk_0/un1_Reset_1 , \one_seond_clk_0/un1_Count_2_6 , 
        \one_seond_clk_0/un1_Count_2_1 , 
        \one_seond_clk_0/un1_Count_2_0 , \one_seond_clk_0/Count_c1 , 
        \one_seond_clk_0/un1_Count_2_5 , 
        \one_seond_clk_0/Count[7]_net_1 , 
        \one_seond_clk_0/un1_Count_2_3 , 
        \one_seond_clk_0/Count[3]_net_1 , 
        \one_seond_clk_0/Count[4]_net_1 , 
        \one_seond_clk_0/Count[5]_net_1 , 
        \one_seond_clk_0/Count[6]_net_1 , 
        \one_seond_clk_0/Count[9]_net_1 , 
        \one_seond_clk_0/Count[2]_net_1 , \one_seond_clk_0/Count_n2 , 
        \one_seond_clk_0/Count_n3 , \one_seond_clk_0/Count_c2 , 
        \one_seond_clk_0/Count_n4 , \one_seond_clk_0/Count_c3 , 
        \one_seond_clk_0/Count_n5 , \one_seond_clk_0/Count_c4 , 
        \one_seond_clk_0/Count_n6 , \one_seond_clk_0/Count_c5 , 
        \one_seond_clk_0/Count_n7 , \one_seond_clk_0/Count_c6 , 
        \one_seond_clk_0/Count_n8 , \one_seond_clk_0/Count_c7 , 
        \one_seond_clk_0/Count13 , \one_seond_clk_0/Count[1]_net_1 , 
        \one_seond_clk_0/Count[0]_net_1 , \one_seond_clk_0/N_49 , 
        \one_seond_clk_0/Count_n0 , \one_seond_clk_0/Count_n1 , 
        \one_seond_clk_0/Count_n9 , \trattic_control_0/N_3 , 
        \trattic_control_0/N_6 , 
        \trattic_control_0/current_state_ns[1] , 
        \trattic_control_0/N_4_i_0 , \BIN_to_BCD_1/temp_15[1]_net_1 , 
        \BIN_to_BCD_1/un48_temp[3] , \BIN_to_BCD_1/temp_11_i[0] , 
        \BIN_to_BCD_1/un32_temp[3] , \BIN_to_BCD_1/temp_7[1]_net_1 , 
        \BIN_to_BCD_1/CO1 , \BIN_to_BCD_1/un15_temp[3] , 
        \BIN_to_BCD_1/temp_7[2]_net_1 , 
        \BIN_to_BCD_1/temp_22[7]_net_1 , \BIN_to_BCD_1/CO1_0 , 
        \BIN_to_BCD_1/temp_7_i[0] , \BIN_to_BCD_1/temp_11[1]_net_1 , 
        \BIN_to_BCD_1/temp_11[2]_net_1 , 
        \BIN_to_BCD_1/temp_15[2]_net_1 , 
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[1] , 
        \BIN_to_BCD_1/temp_22[5]_net_1 , 
        \BIN_to_BCD_1/temp_22[6]_net_1 , 
        \BIN_to_BCD_1/un76_temp_i_i_0[1] , \BIN_to_BCD_1/un64_temp[3] , 
        \BIN_to_BCD_1/CO1_1 , \BIN_to_BCD_1/CO2_0 , 
        \BIN_to_BCD_1/un104_temp_i[2] , 
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[0] , 
        \BIN_to_BCD_1/temp_19[1]_net_1 , \BIN_to_BCD_1/CO1_2 , 
        \BIN_to_BCD_1/temp_19[2]_net_1 , 
        \BIN_to_BCD_1/temp_19[0]_net_1 , 
        \BIN_to_BCD_1/temp_15[0]_net_1 , \dymamic_led_0/count_i[0] , 
        \dymamic_led_0/count[0]_net_1 , \dymamic_led_0/N_29 , 
        \dymamic_led_0/count[1]_net_1 , \dymamic_led_0/N_33 , 
        \dymamic_led_0/Disp_dat[3] , \dymamic_led_0/SUM1_0 , 
        \dymamic_led_0/N_26 , \dymamic_led_0/N_28 , 
        \dymamic_led_0/N_30 , \dymamic_led_0/N_32 , 
        \dymamic_led_0/Disp_dat[0] , \dymamic_led_0/Disp_dat[2] , 
        \dymamic_led_0/N_27 , \dymamic_led_0/N_31 , 
        \dymamic_led_0/Disp_dat[1] , 
        \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3_0[1]_net_1 , 
        \dymamic_led_0/HC4511_0/N_17 , \dymamic_led_0/HC4511_0/N_19 , 
        \dymamic_led_0/HC4511_0/N_74 , 
        \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3[3]_net_1 , 
        \dymamic_led_0/HC4511_0/N_70 , \dymamic_led_0/HC4511_0/N_15_i , 
        \timer_NS_0/Q_NS_e2_0_2 , \timer_NS_0/Q_NS_e2_0_0 , 
        \timer_NS_0/N_40 , \timer_NS_0/N_404 , 
        \timer_NS_0/Q_NS_e2_0_a2_2_0 , \timer_NS_0/N_42 , 
        \timer_NS_0/Done_NS_0_a2_m3_e_5 , 
        \timer_NS_0/Done_NS_0_a2_m3_e_2 , 
        \timer_NS_0/Done_NS_0_a2_m3_e_1 , 
        \timer_NS_0/Done_NS_0_a2_m3_e_3 , \timer_NS_0/N_18 , 
        \timer_NS_0/N_60 , \timer_NS_0/Q_NS_e1 , \timer_NS_0/N_35 , 
        \timer_NS_0/Q_NS_e1_0_0 , \timer_NS_0/N_34 , 
        \timer_NS_0/Q_NS_e2 , \timer_NS_0/N_19 , \timer_NS_0/N_24 , 
        \timer_NS_0/Q_NS_e7 , \timer_NS_0/N_81 , 
        \timer_NS_0/Q_NS_e7_0_0 , \timer_NS_0/Q_NS_e6 , 
        \timer_NS_0/N_54 , \timer_NS_0/N_55 , \timer_NS_0/Q_NS_e5 , 
        \timer_NS_0/Q_NS_e5_0_0 , \timer_NS_0/N_51 , 
        \timer_NS_0/Q_NS_e4 , \timer_NS_0/Q_NS_e4_0_0 , 
        \timer_NS_0/N_46 , \timer_NS_0/Q_NS_e0 , \timer_NS_0/N_62 , 
        \timer_NS_0/Q_NS_e0_0_0 , \timer_NS_0/Q_NS_e3 , 
        \timer_NS_0/N_43 , \timer_NS_0/Q_NS_e3_0_0 , \timer_NS_0/N_44 , 
        \timer_NS_0/N_23 , \timer_NS_0/N_26 , \timer_NS_0/N_22 , 
        \timer_NS_0/N_52 , \timer_NS_0/N_47 , \timer_NS_0/N_36 , 
        \timer_NS_0/Q_NS_e7_0_a2_0 , \timer_NS_0/N_58 , 
        \timer_NS_0/Q_NS_e0_0_a2_0_0_net_1 , \timer_NS_0/N_45 , 
        \timer_NS_0/N_33 , \timer_NS_0/Q_NS_e6_0_a2_0 , 
        \timer_NS_0/Q_NS_e3_0_a2_0 , \timer_NS_0/Q_NS_e4_0_a2_0_0 , 
        \timer_NS_0/Q_NS_e5_0_a2_0_0 , \timer_NS_0/Q_NS_e2_0_a2_1_0 , 
        \timer_NS_0/Q_NS_e1_0_a2_1_0 , \timer_EW/Q_NS_e2_0_2 , 
        \timer_EW/N_41 , \timer_EW/Q_NS_e2_0_0 , \timer_EW/N_39_i , 
        \timer_EW/Q_NS_e2 , \timer_EW/N_19 , \timer_EW/N_24 , 
        \timer_EW/N_30 , \timer_EW/Q_NS_e5 , \timer_EW/Q_NS_e5_0_0 , 
        \timer_EW/N_51 , \timer_EW/Q_NS_e3 , \timer_EW/N_43 , 
        \timer_EW/N_45 , \timer_EW/N_44 , \timer_EW/Q_NS_e7 , 
        \timer_EW/N_56 , \timer_EW/N_58 , \timer_EW/N_57 , 
        \timer_EW/Q_NS_e1 , \timer_EW/N_34 , \timer_EW/Q_NS_e1_0_0 , 
        \timer_EW/Q_NS_e4 , \timer_EW/Q_NS_e4_0_0 , \timer_EW/N_46 , 
        \timer_EW/N_26 , \timer_EW/N_62 , \timer_EW/N_22 , 
        \timer_EW/N_40 , \timer_EW/N_47 , \timer_EW/N_52 , 
        \timer_EW/N_36 , \timer_EW/Q_NS_e6_0_0 , \timer_EW/N_54 , 
        \timer_EW/Q_NS_e6_0_a2_0 , \timer_EW/Q_NS_e4_0_a2_0_0 , 
        \timer_EW/Q_NS_e2_0_a2_1_0 , \timer_EW/Q_NS_e6 , 
        \timer_EW/Q_NS_e0 , \Red1_pad/U0/NET1 , \Red1_pad/U0/NET2 , 
        \Sl_pad[1]/U0/NET1 , \Sl_pad[1]/U0/NET2 , \Green1_pad/U0/NET1 , 
        \Green1_pad/U0/NET2 , \Seg_pad[3]/U0/NET1 , 
        \Seg_pad[3]/U0/NET2 , \Seg_pad[2]/U0/NET1 , 
        \Seg_pad[2]/U0/NET2 , \Reset_pad/U0/NET1 , \Red2_pad/U0/NET1 , 
        \Red2_pad/U0/NET2 , \Seg_pad[1]/U0/NET1 , \Seg_pad[1]/U0/NET2 , 
        \Seg_pad[0]/U0/NET1 , \Seg_pad[0]/U0/NET2 , 
        \Yellow2_pad/U0/NET1 , \Yellow2_pad/U0/NET2 , 
        \Clk_pad/U0/NET1 , \Sl_pad[3]/U0/NET1 , \Sl_pad[3]/U0/NET2 , 
        \Sl_pad[2]/U0/NET1 , \Sl_pad[2]/U0/NET2 , \Seg_pad[4]/U0/NET1 , 
        \Seg_pad[4]/U0/NET2 , \Seg_pad[7]/U0/NET1 , 
        \Seg_pad[7]/U0/NET2 , \Green2_pad/U0/NET1 , 
        \Green2_pad/U0/NET2 , \Seg_pad[6]/U0/NET1 , 
        \Seg_pad[6]/U0/NET2 , \Yellow1_pad/U0/NET1 , 
        \Yellow1_pad/U0/NET2 , \Seg_pad[5]/U0/NET1 , 
        \Seg_pad[5]/U0/NET2 , \Sl_pad[0]/U0/NET1 , \Sl_pad[0]/U0/NET2 , 
        VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    OR2B \timer_NS_0/Q_NS_RNO_5[2]  (.A(\Q_NS_0[2] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .Y(\timer_NS_0/N_42 ));
    OA1 \timer_EW/Q_NS_RNO_3[4]  (.A(\timer_EW/N_19 ), .B(\Q_NS[3] ), 
        .C(\Q_NS[4] ), .Y(\timer_EW/Q_NS_e4_0_a2_0_0 ));
    AXOI4 \BIN_to_BCD_0/temp_22[5]  (.A(\BIN_to_BCD_0/N_19_i ), .B(
        \BIN_to_BCD_0/N_25_i ), .C(\BIN_to_BCD_0/temp86lto2 ), .Y(
        \BIN_to_BCD_0/temp_22[5]_net_1 ));
    NOR2A \trattic_control_0/current_state_RNIVQ5D_1[0]  (.A(Red1_c), 
        .B(\trattic_control_0.current_state[0] ), .Y(Green2_c));
    NOR2A \timer_NS_0/Q_NS_RNO_3[5]  (.A(\Q_NS_0[5] ), .B(
        \timer_NS_0/N_22 ), .Y(\timer_NS_0/Q_NS_e5_0_a2_0_0 ));
    IOTRI_OB_EB \Yellow2_pad/U0/U1  (.D(\timer_EW.State_i_0[3] ), .E(
        VCC), .DOUT(\Yellow2_pad/U0/NET1 ), .EOUT(
        \Yellow2_pad/U0/NET2 ));
    NOR2 \timer_NS_0/Q_NS_RNI5GG3[4]  (.A(\Q_NS_0[3] ), .B(\Q_NS_0[4] )
        , .Y(\timer_NS_0/Done_NS_0_a2_m3_e_2 ));
    OA1 \timer_EW/Q_NS_RNO_2[6]  (.A(\timer_EW/N_22 ), .B(\Q_NS[5] ), 
        .C(\Q_NS[6] ), .Y(\timer_EW/Q_NS_e6_0_a2_0 ));
    NOR2B \timer_NS_0/Q_NS_RNO_3[3]  (.A(\Q_NS_0[3] ), .B(
        \timer_NS_0/N_19 ), .Y(\timer_NS_0/Q_NS_e3_0_a2_0 ));
    NOR3C \timer_NS_0/Q_NS_RNO_0[2]  (.A(\timer_NS_0/Q_NS_e2_0_0 ), .B(
        \timer_NS_0/N_40 ), .C(\timer_NS_0/N_404 ), .Y(
        \timer_NS_0/Q_NS_e2_0_2 ));
    XA1B \one_seond_clk_0/Count_RNO[4]  (.A(\one_seond_clk_0/Count_c3 )
        , .B(\one_seond_clk_0/Count[4]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n4 ));
    IOTRI_OB_EB \Seg_pad[2]/U0/U1  (.D(\dymamic_led_0.HC4511_0.N_6 ), 
        .E(VCC), .DOUT(\Seg_pad[2]/U0/NET1 ), .EOUT(
        \Seg_pad[2]/U0/NET2 ));
    NOR2B \one_seond_clk_0/Count_RNI4JIC1[7]  (.A(
        \one_seond_clk_0/Count[7]_net_1 ), .B(
        \one_seond_clk_0/Count_c6 ), .Y(\one_seond_clk_0/Count_c7 ));
    MX2 \BIN_to_BCD_0/temp[6]  (.A(\BIN_to_BCD_0/temp_22[6]_net_1 ), 
        .B(\BIN_to_BCD_0/temp_22[7]_net_1 ), .S(\BIN_to_BCD_0/CO1_2 ), 
        .Y(\un1_BIN_to_BCD_0_1[3] ));
    IOTRI_OB_EB \Red2_pad/U0/U1  (.D(Red1_c_i), .E(VCC), .DOUT(
        \Red2_pad/U0/NET1 ), .EOUT(\Red2_pad/U0/NET2 ));
    DFN1 \one_seond_clk_0/Count[3]  (.D(\one_seond_clk_0/Count_n3 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[3]_net_1 ));
    OR3B \timer_NS_0/Q_NS_RNO_2[2]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e2_0_a2_1_0 ), .C(Reset_c), .Y(
        \timer_NS_0/N_40 ));
    OR2B \timer_NS_0/Q_NS_RNO_1[4]  (.A(\timer_NS_0/N_24 ), .B(
        \timer_NS_0/N_22 ), .Y(\timer_NS_0/N_46 ));
    AX1E \one_seond_clk_0/Count_RNO[9]  (.A(\one_seond_clk_0/Count_c7 )
        , .B(\one_seond_clk_0/Count_19_0 ), .C(\one_seond_clk_0/N_49 ), 
        .Y(\one_seond_clk_0/Count_n9 ));
    XA1B \one_seond_clk_0/Count_RNO[2]  (.A(\one_seond_clk_0/Count_c1 )
        , .B(\one_seond_clk_0/Count[2]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n2 ));
    OR2B \timer_EW/Q_NS_RNO_3[2]  (.A(\timer_EW/Q_NS_e2_0_a2_1_0 ), .B(
        \timer_EW/N_30 ), .Y(\timer_EW/N_40 ));
    OR2B \timer_NS_0/Q_NS_RNO_4[3]  (.A(\Q_NS_0[3] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .Y(\timer_NS_0/N_45 ));
    MX2 \dymamic_led_0/count_RNIJ56C03[1]  (.A(\un1_BIN_to_BCD_0[2] ), 
        .B(\un1_BIN_to_BCD_1[2] ), .S(\dymamic_led_0/count[1]_net_1 ), 
        .Y(\dymamic_led_0/N_28 ));
    DFN1 \timer_NS_0/Q_NS[6]  (.D(\timer_NS_0/Q_NS_e6 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[6] ));
    AX1E \BIN_to_BCD_0/un64_temp_1_SUM3_0  (.A(
        \BIN_to_BCD_0/temp_15[1]_net_1 ), .B(\BIN_to_BCD_0/CO1_1 ), .C(
        \BIN_to_BCD_0/temp_15[2]_net_1 ), .Y(\BIN_to_BCD_0/N_31 ));
    AX1 \BIN_to_BCD_0/temp[5]  (.A(\BIN_to_BCD_0/N_31 ), .B(
        \BIN_to_BCD_0/un1_BIN_to_BCD_0_2[0] ), .C(
        \BIN_to_BCD_0/temp_22[5]_net_1 ), .Y(\un1_BIN_to_BCD_0_1[2] ));
    OA1 \timer_EW/Q_NS_RNO_4[2]  (.A(\Q_NS[0] ), .B(\Q_NS[1] ), .C(
        \Q_NS[2] ), .Y(\timer_EW/Q_NS_e2_0_a2_1_0 ));
    AX1A \BIN_to_BCD_1/temp_15[1]  (.A(\Q_NS[3] ), .B(
        \BIN_to_BCD_1/un48_temp[3] ), .C(\BIN_to_BCD_1/temp_11_i[0] ), 
        .Y(\BIN_to_BCD_1/temp_15[1]_net_1 ));
    OR2A \timer_NS_0/Q_NS_RNO_1[1]  (.A(\timer_NS_0/N_24 ), .B(
        \timer_NS_0/N_18 ), .Y(\timer_NS_0/N_34 ));
    OAI1 \timer_NS_0/Q_NS_RNO[0]  (.A(\timer_NS_0/N_62 ), .B(
        \Q_NS_0[0] ), .C(\timer_NS_0/Q_NS_e0_0_0 ), .Y(
        \timer_NS_0/Q_NS_e0 ));
    NOR3C \timer_EW/Q_NS_RNO_0[2]  (.A(\timer_EW/N_41 ), .B(
        \timer_EW/Q_NS_e2_0_0 ), .C(\timer_EW/N_39_i ), .Y(
        \timer_EW/Q_NS_e2_0_2 ));
    XA1B \one_seond_clk_0/Count_RNO[6]  (.A(\one_seond_clk_0/Count_c5 )
        , .B(\one_seond_clk_0/Count[6]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n6 ));
    NOR3B \dymamic_led_0/HC4511_0/SM_8S_1_i_i_a2[6]  (.A(
        \dymamic_led_0/Disp_dat[1] ), .B(\dymamic_led_0/Disp_dat[2] ), 
        .C(\dymamic_led_0/Disp_dat[0] ), .Y(
        \dymamic_led_0/HC4511_0/N_74 ));
    IOPAD_TRI \Sl_pad[3]/U0/U0  (.D(\Sl_pad[3]/U0/NET1 ), .E(
        \Sl_pad[3]/U0/NET2 ), .PAD(Sl[3]));
    IOPAD_IN \Clk_pad/U0/U0  (.PAD(Clk), .Y(\Clk_pad/U0/NET1 ));
    MX2A \BIN_to_BCD_0/temp_11[2]  (.A(\BIN_to_BCD_0/temp_7[1]_net_1 ), 
        .B(\BIN_to_BCD_0/temp_7[2]_net_1 ), .S(\BIN_to_BCD_0/CO1_0 ), 
        .Y(\BIN_to_BCD_0/temp_11[2]_net_1 ));
    IOTRI_OB_EB \Seg_pad[4]/U0/U1  (.D(\Seg_c[4] ), .E(VCC), .DOUT(
        \Seg_pad[4]/U0/NET1 ), .EOUT(\Seg_pad[4]/U0/NET2 ));
    OR3C \timer_EW/Q_NS_RNO_0[3]  (.A(\Q_NS[3] ), .B(\timer_EW/N_19 ), 
        .C(\timer_EW/N_30 ), .Y(\timer_EW/N_43 ));
    DFN1 \timer_EW/Q_NS[4]  (.D(\timer_EW/Q_NS_e4 ), .CLK(Clk_c), .Q(
        \Q_NS[4] ));
    NOR2B \one_seond_clk_0/Count_RNIT45B[5]  (.A(
        \one_seond_clk_0/Count[5]_net_1 ), .B(
        \one_seond_clk_0/Count[6]_net_1 ), .Y(
        \one_seond_clk_0/un1_Count_2_1 ));
    OR2A \BIN_to_BCD_1/un32_temp_1_CO1  (.A(\BIN_to_BCD_1/temp_7_i[0] )
        , .B(\Q_NS[4] ), .Y(\BIN_to_BCD_1/CO1_0 ));
    DFN1 \timer_EW/Q_NS[5]  (.D(\timer_EW/Q_NS_e5 ), .CLK(Clk_c), .Q(
        \Q_NS[5] ));
    MX2A \BIN_to_BCD_1/temp_15[2]  (.A(\BIN_to_BCD_1/temp_11[1]_net_1 )
        , .B(\BIN_to_BCD_1/temp_11[2]_net_1 ), .S(\BIN_to_BCD_1/CO1 ), 
        .Y(\BIN_to_BCD_1/temp_15[2]_net_1 ));
    IOPAD_TRI \Seg_pad[5]/U0/U0  (.D(\Seg_pad[5]/U0/NET1 ), .E(
        \Seg_pad[5]/U0/NET2 ), .PAD(Seg[5]));
    AOI1B \dymamic_led_0/HC4511_0/SM_8S_1_i_i_a3_0[4]  (.A(
        \dymamic_led_0/Disp_dat[2] ), .B(\dymamic_led_0/Disp_dat[1] ), 
        .C(\dymamic_led_0/Disp_dat[0] ), .Y(\Seg_c[4] ));
    AX1D \BIN_to_BCD_0/temp_11[1]  (.A(\Q_NS_0[4] ), .B(
        \BIN_to_BCD_0/N_19_i ), .C(\BIN_to_BCD_0/temp_7_i[0] ), .Y(
        \BIN_to_BCD_0/temp_11[1]_net_1 ));
    OR3C \timer_NS_0/Q_NS_RNO[3]  (.A(\timer_NS_0/N_43 ), .B(
        \timer_NS_0/Q_NS_e3_0_0 ), .C(\timer_NS_0/N_44 ), .Y(
        \timer_NS_0/Q_NS_e3 ));
    OR2 \BIN_to_BCD_0/un104_temp_1_CO1  (.A(
        \BIN_to_BCD_0/temp_22[5]_net_1 ), .B(\BIN_to_BCD_0/N_31 ), .Y(
        \BIN_to_BCD_0/CO1_2 ));
    INV \dymamic_led_0/count_RNO[0]  (.A(
        \dymamic_led_0/count[0]_net_1 ), .Y(\dymamic_led_0/count_i[0] )
        );
    MX2B \BIN_to_BCD_1/temp[2]  (.A(\BIN_to_BCD_1/temp_19[1]_net_1 ), 
        .B(\BIN_to_BCD_1/temp_19[2]_net_1 ), .S(\BIN_to_BCD_1/CO1_2 ), 
        .Y(\un1_BIN_to_BCD_1[3] ));
    OR2A \timer_NS_0/Q_NS_e1_0_o2_0  (.A(\timer_NS_0/N_62 ), .B(
        Reset_c), .Y(\timer_NS_0/N_24 ));
    NOR2 \trattic_control_0/current_state_RNIVQ5D_2[0]  (.A(
        \trattic_control_0.current_state[0] ), .B(Red1_c), .Y(Green1_c)
        );
    DFN1 \timer_NS_0/Q_NS[1]  (.D(\timer_NS_0/Q_NS_e1 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[1] ));
    MX2 \dymamic_led_0/count_RNI1AQJM4[0]  (.A(\dymamic_led_0/N_27 ), 
        .B(\dymamic_led_0/N_31 ), .S(\dymamic_led_0/count[0]_net_1 ), 
        .Y(\dymamic_led_0/Disp_dat[1] ));
    AX1A \BIN_to_BCD_0/temp[1]  (.A(\Q_NS_0[1] ), .B(
        \un1_BIN_to_BCD_0_1[0] ), .C(\BIN_to_BCD_0/temp_19_i[0] ), .Y(
        \un1_BIN_to_BCD_0[2] ));
    CLKIO \Clk_pad/U0/U1  (.A(\Clk_pad/U0/NET1 ), .Y(Clk_c));
    OA1B \BIN_to_BCD_1/un104_temp_1_CO2  (.A(
        \BIN_to_BCD_1/temp_22[5]_net_1 ), .B(
        \BIN_to_BCD_1/un64_temp[3] ), .C(
        \BIN_to_BCD_1/temp_22[6]_net_1 ), .Y(\BIN_to_BCD_1/CO2_0 ));
    OR3C \timer_NS_0/Q_NS_RNO[1]  (.A(\timer_NS_0/N_35 ), .B(
        \timer_NS_0/Q_NS_e1_0_0 ), .C(\timer_NS_0/N_34 ), .Y(
        \timer_NS_0/Q_NS_e1 ));
    OR2A \timer_NS_0/Q_NS_e2_0_o2  (.A(\timer_NS_0.Ld_i ), .B(
        one_seond_clk_0_Cout), .Y(\timer_NS_0.N_16 ));
    NOR2A \dymamic_led_0/HC4511_0/SM_8S_1_i_0_1[3]  (.A(
        \SM_8S_1_i_0_a3_0[0] ), .B(
        \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3[3]_net_1 ), .Y(
        \dymamic_led_0.HC4511_0.N_21_i_0 ));
    OR3B \timer_EW/Q_NS_RNO_1[2]  (.A(Green2_c), .B(\timer_NS_0.N_16 ), 
        .C(\timer_EW/N_30 ), .Y(\timer_EW/N_41 ));
    XOR2 \BIN_to_BCD_0/temp[4]  (.A(
        \BIN_to_BCD_0/un1_BIN_to_BCD_0_2[0] ), .B(\BIN_to_BCD_0/N_31 ), 
        .Y(\un1_BIN_to_BCD_0_1[1] ));
    OR3C \dymamic_led_0/HC4511_0/SM_8S_1_0_i_a3_0[2]  (.A(
        \dymamic_led_0/Disp_dat[3] ), .B(\dymamic_led_0/Disp_dat[0] ), 
        .C(\dymamic_led_0/HC4511_0/N_17 ), .Y(
        \dymamic_led_0.HC4511_0.N_6 ));
    IOPAD_TRI \Sl_pad[0]/U0/U0  (.D(\Sl_pad[0]/U0/NET1 ), .E(
        \Sl_pad[0]/U0/NET2 ), .PAD(Sl[0]));
    OR2A \BIN_to_BCD_0/un48_temp_1_CO1  (.A(
        \BIN_to_BCD_0/temp_11_i[0] ), .B(\Q_NS_0[3] ), .Y(
        \BIN_to_BCD_0/CO1 ));
    IOPAD_TRI \Seg_pad[1]/U0/U0  (.D(\Seg_pad[1]/U0/NET1 ), .E(
        \Seg_pad[1]/U0/NET2 ), .PAD(Seg[1]));
    OA1C \timer_EW/Q_NS_e2_0_a2_0  (.A(\timer_EW.Ld_i ), .B(
        \timer_EW.N_60 ), .C(Reset_c), .Y(\timer_EW/N_39_i ));
    DFN1 \one_seond_clk_0/Cout  (.D(\one_seond_clk_0/Count13 ), .CLK(
        Clk_c), .Q(one_seond_clk_0_Cout));
    MX2C \trattic_control_0/current_state_ns_1_0__m2  (.A(
        timer_NS_0_Done_NS), .B(timer_EW_Done_NS), .S(Red1_c), .Y(
        \trattic_control_0/N_3 ));
    IOTRI_OB_EB \Sl_pad[1]/U0/U1  (.D(\dymamic_led_0.Disp_dat7 ), .E(
        VCC), .DOUT(\Sl_pad[1]/U0/NET1 ), .EOUT(\Sl_pad[1]/U0/NET2 ));
    IOPAD_TRI \Seg_pad[0]/U0/U0  (.D(\Seg_pad[0]/U0/NET1 ), .E(
        \Seg_pad[0]/U0/NET2 ), .PAD(Seg[0]));
    AOI1B \timer_EW/Q_NS_RNO_1[1]  (.A(\Q_NS[1] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_EW/N_36 ), .Y(
        \timer_EW/Q_NS_e1_0_0 ));
    AX1D \BIN_to_BCD_0/temp_15[1]  (.A(\Q_NS_0[3] ), .B(
        \BIN_to_BCD_0/N_25_i ), .C(\BIN_to_BCD_0/temp_11_i[0] ), .Y(
        \BIN_to_BCD_0/temp_15[1]_net_1 ));
    OR3B \timer_NS_0/Q_NS_RNO_2[1]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e1_0_a2_1_0 ), .C(Reset_c), .Y(
        \timer_NS_0/N_36 ));
    MX2A \BIN_to_BCD_0/temp_15[2]  (.A(\BIN_to_BCD_0/temp_11[1]_net_1 )
        , .B(\BIN_to_BCD_0/temp_11[2]_net_1 ), .S(\BIN_to_BCD_0/CO1 ), 
        .Y(\BIN_to_BCD_0/temp_15[2]_net_1 ));
    OR2B \timer_EW/Q_NS_RNO_1[7]  (.A(\Q_NS[7] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .Y(\timer_EW/N_58 ));
    NOR2B \one_seond_clk_0/Count_RNIU0MG[2]  (.A(
        \one_seond_clk_0/Count[2]_net_1 ), .B(
        \one_seond_clk_0/Count_c1 ), .Y(\one_seond_clk_0/Count_c2 ));
    OA1 \timer_NS_0/Q_NS_RNO_3[4]  (.A(\timer_NS_0/N_19 ), .B(
        \Q_NS_0[3] ), .C(\Q_NS_0[4] ), .Y(
        \timer_NS_0/Q_NS_e4_0_a2_0_0 ));
    NOR3 \timer_NS_0/Q_NS_RNI5AO8[4]  (.A(\timer_NS_0/N_19 ), .B(
        \Q_NS_0[3] ), .C(\Q_NS_0[4] ), .Y(\timer_NS_0/N_22 ));
    NOR2B \one_seond_clk_0/Count_RNI56D11[5]  (.A(
        \one_seond_clk_0/Count[5]_net_1 ), .B(
        \one_seond_clk_0/Count_c4 ), .Y(\one_seond_clk_0/Count_c5 ));
    OR2 \dymamic_led_0/count_RNI9I46_2[0]  (.A(
        \dymamic_led_0/count[1]_net_1 ), .B(
        \dymamic_led_0/count[0]_net_1 ), .Y(\dymamic_led_0.Disp_dat6 ));
    MX2C \BIN_to_BCD_1/temp[6]  (.A(\BIN_to_BCD_1/temp_22[6]_net_1 ), 
        .B(\BIN_to_BCD_1/un104_temp_i[2] ), .S(
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[0] ), .Y(
        \un1_BIN_to_BCD_1_1[3] ));
    OR2 \timer_NS_0/Q_NS_RNIQJHH2[6]  (.A(\timer_NS_0/N_62 ), .B(
        \timer_NS_0/N_26 ), .Y(\timer_NS_0/N_81 ));
    XOR2 \BIN_to_BCD_0/temp[0]  (.A(\Q_NS_0[1] ), .B(
        \un1_BIN_to_BCD_0_1[0] ), .Y(\un1_BIN_to_BCD_0[1] ));
    AO1A \dymamic_led_0/HC4511_0/SM_8S_1_i_i_a3[6]  (.A(
        \dymamic_led_0/Disp_dat[0] ), .B(\dymamic_led_0/Disp_dat[2] ), 
        .C(\dymamic_led_0/Disp_dat[1] ), .Y(
        \dymamic_led_0/HC4511_0/N_70 ));
    OR2B \timer_NS_0/Q_NS_RNO_1[0]  (.A(\Q_NS_0[0] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .Y(\timer_NS_0/N_33 ));
    IOTRI_OB_EB \Seg_pad[7]/U0/U1  (.D(GND), .E(VCC), .DOUT(
        \Seg_pad[7]/U0/NET1 ), .EOUT(\Seg_pad[7]/U0/NET2 ));
    MX2 \dymamic_led_0/count_RNIBPHJ35[0]  (.A(\dymamic_led_0/N_29 ), 
        .B(\dymamic_led_0/N_33 ), .S(\dymamic_led_0/count[0]_net_1 ), 
        .Y(\dymamic_led_0/Disp_dat[3] ));
    NOR3B \BIN_to_BCD_0/temp_22[7]  (.A(\BIN_to_BCD_0/N_19_i ), .B(
        \BIN_to_BCD_0/N_25_i ), .C(\BIN_to_BCD_0/temp86lto2 ), .Y(
        \BIN_to_BCD_0/temp_22[7]_net_1 ));
    DFN1 \timer_EW/Q_NS[1]  (.D(\timer_EW/Q_NS_e1 ), .CLK(Clk_c), .Q(
        \Q_NS[1] ));
    AX1 \BIN_to_BCD_1/temp[5]  (.A(\BIN_to_BCD_1/un64_temp[3] ), .B(
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[0] ), .C(
        \BIN_to_BCD_1/temp_22[5]_net_1 ), .Y(\un1_BIN_to_BCD_1_1[2] ));
    IOPAD_TRI \Yellow2_pad/U0/U0  (.D(\Yellow2_pad/U0/NET1 ), .E(
        \Yellow2_pad/U0/NET2 ), .PAD(Yellow2));
    OR3C \timer_EW/Q_NS_RNO[5]  (.A(\timer_EW/N_39_i ), .B(
        \timer_EW/Q_NS_e5_0_0 ), .C(\timer_EW/N_51 ), .Y(
        \timer_EW/Q_NS_e5 ));
    IOPAD_TRI \Green1_pad/U0/U0  (.D(\Green1_pad/U0/NET1 ), .E(
        \Green1_pad/U0/NET2 ), .PAD(Green1));
    OR2A \timer_NS_0/Q_NS_RNIVE7H[0]  (.A(
        \timer_NS_0/Done_NS_0_a2_m3_e_5 ), .B(\timer_NS_0/N_18 ), .Y(
        timer_NS_0_Done_NS));
    IOTRI_OB_EB \Yellow1_pad/U0/U1  (.D(Yellow1_c), .E(VCC), .DOUT(
        \Yellow1_pad/U0/NET1 ), .EOUT(\Yellow1_pad/U0/NET2 ));
    MX2C \dymamic_led_0/count_RNIJC01A2[1]  (.A(\un1_BIN_to_BCD_0[1] ), 
        .B(\un1_BIN_to_BCD_1[1] ), .S(\dymamic_led_0/count[1]_net_1 ), 
        .Y(\dymamic_led_0/N_27 ));
    AO1C \timer_NS_0/Q_NS_RNO[2]  (.A(\timer_NS_0/N_19 ), .B(
        \timer_NS_0/N_24 ), .C(\timer_NS_0/Q_NS_e2_0_2 ), .Y(
        \timer_NS_0/Q_NS_e2 ));
    OR2 \timer_NS_0/Q_NS_RNI0Q75[2]  (.A(\Q_NS_0[2] ), .B(
        \timer_NS_0/N_18 ), .Y(\timer_NS_0/N_19 ));
    DFN1 \timer_EW/Q_NS[3]  (.D(\timer_EW/Q_NS_e3 ), .CLK(Clk_c), .Q(
        \Q_NS[3] ));
    AX1C \BIN_to_BCD_0/un48_temp_1_SUM3_0  (.A(
        \BIN_to_BCD_0/temp_11[1]_net_1 ), .B(\BIN_to_BCD_0/CO1 ), .C(
        \BIN_to_BCD_0/temp_11[2]_net_1 ), .Y(\BIN_to_BCD_0/N_25_i ));
    OR3B \timer_NS_0/Q_NS_e1_0_a2_4  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0.N_16 ), .C(Reset_c), .Y(\timer_NS_0/N_62 ));
    AOI1B \timer_NS_0/Q_NS_RNO_1[2]  (.A(\timer_NS_0/Q_NS_e2_0_a2_2_0 )
        , .B(\timer_NS_0.N_16 ), .C(\timer_NS_0/N_42 ), .Y(
        \timer_NS_0/Q_NS_e2_0_0 ));
    NOR3C \timer_NS_0/Q_NS_e2_0_a2_4  (.A(Red1_c), .B(
        \trattic_control_0.current_state[0] ), .C(\timer_NS_0.N_16 ), 
        .Y(\timer_NS_0/N_60 ));
    DFN1C1 \dymamic_led_0/count[0]  (.D(\dymamic_led_0/count_i[0] ), 
        .CLK(Clk_c), .CLR(Reset_c), .Q(\dymamic_led_0/count[0]_net_1 ));
    OR3A \timer_EW/Q_NS_RNO_1[5]  (.A(\timer_EW/N_24 ), .B(
        \timer_EW/N_22 ), .C(\Q_NS[5] ), .Y(\timer_EW/N_51 ));
    XOR2 \dymamic_led_0/un3_count_1_SUM1_0  (.A(
        \dymamic_led_0/count[1]_net_1 ), .B(
        \dymamic_led_0/count[0]_net_1 ), .Y(\dymamic_led_0/SUM1_0 ));
    AOI1B \timer_NS_0/Q_NS_RNO_0[1]  (.A(\Q_NS_0[1] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_NS_0/N_36 ), .Y(
        \timer_NS_0/Q_NS_e1_0_0 ));
    NOR2B \one_seond_clk_0/Count_RNIT45B[9]  (.A(
        \one_seond_clk_0/Count[9]_net_1 ), .B(
        \one_seond_clk_0/Count[2]_net_1 ), .Y(
        \one_seond_clk_0/un1_Count_2_0 ));
    NOR2A \BIN_to_BCD_0/temp_22[6]  (.A(\BIN_to_BCD_0/temp86lto2 ), .B(
        \BIN_to_BCD_0/N_19_i ), .Y(\BIN_to_BCD_0/temp_22[6]_net_1 ));
    IOTRI_OB_EB \Sl_pad[2]/U0/U1  (.D(\dymamic_led_0.Disp_dat8 ), .E(
        VCC), .DOUT(\Sl_pad[2]/U0/NET1 ), .EOUT(\Sl_pad[2]/U0/NET2 ));
    DFN1 \timer_EW/Q_NS[0]  (.D(\timer_EW/Q_NS_e0 ), .CLK(Clk_c), .Q(
        \Q_NS[0] ));
    AO1C \dymamic_led_0/HC4511_0/SM_8S_1_0_0[5]  (.A(
        \dymamic_led_0/HC4511_0/N_17 ), .B(\dymamic_led_0/Disp_dat[0] )
        , .C(\dymamic_led_0/HC4511_0/N_15_i ), .Y(\Seg_c[5] ));
    MX2 \dymamic_led_0/count_RNIQM47A2[0]  (.A(\dymamic_led_0/N_26 ), 
        .B(\dymamic_led_0/N_30 ), .S(\dymamic_led_0/count[0]_net_1 ), 
        .Y(\dymamic_led_0/Disp_dat[0] ));
    OR2A \BIN_to_BCD_0/un64_temp_1_CO1  (.A(
        \BIN_to_BCD_0/temp_15_i[0] ), .B(\Q_NS_0[2] ), .Y(
        \BIN_to_BCD_0/CO1_1 ));
    OR2B \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3_0[1]  (.A(
        \dymamic_led_0/Disp_dat[2] ), .B(\dymamic_led_0/Disp_dat[0] ), 
        .Y(\dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3_0[1]_net_1 ));
    DFN1 \one_seond_clk_0/Count[5]  (.D(\one_seond_clk_0/Count_n5 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[5]_net_1 ));
    MX2B \trattic_control_0/current_state_ns_1_0__m5  (.A(
        timer_NS_0_Done_NS), .B(timer_EW_Done_NS), .S(Red1_c), .Y(
        \trattic_control_0/N_6 ));
    AX1 \BIN_to_BCD_1/temp[1]  (.A(\Q_NS[1] ), .B(
        \un1_BIN_to_BCD_1_1[0] ), .C(\BIN_to_BCD_1/temp_19[0]_net_1 ), 
        .Y(\un1_BIN_to_BCD_1[2] ));
    NOR3C \timer_NS_0/Q_NS_RNI0NND[2]  (.A(
        \timer_NS_0/Done_NS_0_a2_m3_e_2 ), .B(
        \timer_NS_0/Done_NS_0_a2_m3_e_1 ), .C(
        \timer_NS_0/Done_NS_0_a2_m3_e_3 ), .Y(
        \timer_NS_0/Done_NS_0_a2_m3_e_5 ));
    AX1C \BIN_to_BCD_0/un104_temp_1_SUM3_0  (.A(\BIN_to_BCD_0/CO1_2 ), 
        .B(\BIN_to_BCD_0/temp_22[6]_net_1 ), .C(
        \BIN_to_BCD_0/temp_22[7]_net_1 ), .Y(
        \BIN_to_BCD_0/un1_BIN_to_BCD_0_2[0] ));
    OA1A \BIN_to_BCD_0/temp_7[1]  (.A(\Q_NS_0[7] ), .B(\Q_NS_0[5] ), 
        .C(\Q_NS_0[6] ), .Y(\BIN_to_BCD_0/temp_7[1]_net_1 ));
    NOR3B \timer_NS_0/Q_NS_RNO_1[7]  (.A(\timer_NS_0.Ld_i ), .B(
        \Q_NS_0[7] ), .C(Reset_c), .Y(\timer_NS_0/Q_NS_e7_0_a2_0 ));
    XOR2 \BIN_to_BCD_1/temp[4]  (.A(
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[0] ), .B(
        \BIN_to_BCD_1/un64_temp[3] ), .Y(\un1_BIN_to_BCD_1_1[1] ));
    IOPAD_TRI \Red1_pad/U0/U0  (.D(\Red1_pad/U0/NET1 ), .E(
        \Red1_pad/U0/NET2 ), .PAD(Red1));
    DFN1C1 \trattic_control_0/current_state[0]  (.D(
        \trattic_control_0/N_4_i_0 ), .CLK(Clk_c), .CLR(Reset_c), .Q(
        \trattic_control_0.current_state[0] ));
    NOR3A \timer_NS_0/Q_NS_RNIKEM6[6]  (.A(one_seond_clk_0_Cout), .B(
        \Q_NS_0[6] ), .C(\Q_NS_0[5] ), .Y(
        \timer_NS_0/Done_NS_0_a2_m3_e_3 ));
    IOTRI_OB_EB \Red1_pad/U0/U1  (.D(Red1_c), .E(VCC), .DOUT(
        \Red1_pad/U0/NET1 ), .EOUT(\Red1_pad/U0/NET2 ));
    XA1B \one_seond_clk_0/Count_RNO[3]  (.A(\one_seond_clk_0/Count_c2 )
        , .B(\one_seond_clk_0/Count[3]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n3 ));
    IOPAD_TRI \Seg_pad[3]/U0/U0  (.D(\Seg_pad[3]/U0/NET1 ), .E(
        \Seg_pad[3]/U0/NET2 ), .PAD(Seg[3]));
    OR3A \timer_NS_0/Q_NS_RNIEA9C[6]  (.A(\timer_NS_0/N_22 ), .B(
        \Q_NS_0[5] ), .C(\Q_NS_0[6] ), .Y(\timer_NS_0/N_26 ));
    OA1C \timer_NS_0/Q_NS_RNO_4[2]  (.A(\timer_NS_0.Ld_i ), .B(Reset_c)
        , .C(Yellow1_c), .Y(\timer_NS_0/Q_NS_e2_0_a2_2_0 ));
    OR3C \timer_EW/Q_NS_RNO[7]  (.A(\timer_EW/N_56 ), .B(
        \timer_EW/N_58 ), .C(\timer_EW/N_57 ), .Y(\timer_EW/Q_NS_e7 ));
    AX1B \BIN_to_BCD_1/un104_temp_1_SUM2_0  (.A(
        \BIN_to_BCD_1/temp_22[5]_net_1 ), .B(
        \BIN_to_BCD_1/un64_temp[3] ), .C(\BIN_to_BCD_1/un32_temp[3] ), 
        .Y(\BIN_to_BCD_1/un104_temp_i[2] ));
    NOR2B \one_seond_clk_0/Count_RNIKQV61[6]  (.A(
        \one_seond_clk_0/Count[6]_net_1 ), .B(
        \one_seond_clk_0/Count_c5 ), .Y(\one_seond_clk_0/Count_c6 ));
    MX2A \BIN_to_BCD_1/temp_19[2]  (.A(\BIN_to_BCD_1/temp_15[1]_net_1 )
        , .B(\BIN_to_BCD_1/temp_15[2]_net_1 ), .S(\BIN_to_BCD_1/CO1_1 )
        , .Y(\BIN_to_BCD_1/temp_19[2]_net_1 ));
    NOR2A \one_seond_clk_0/Count_RNO_0[9]  (.A(
        \one_seond_clk_0/Count[8]_net_1 ), .B(
        \one_seond_clk_0/un1_Reset_1 ), .Y(
        \one_seond_clk_0/Count_19_0 ));
    OR3C \timer_NS_0/Q_NS_RNO[6]  (.A(\timer_NS_0/N_54 ), .B(
        \timer_NS_0/N_55 ), .C(\timer_NS_0/N_81 ), .Y(
        \timer_NS_0/Q_NS_e6 ));
    OR2B \dymamic_led_0/HC4511_0/SM_8S_1_i_i_1[6]  (.A(
        \dymamic_led_0/HC4511_0/N_70 ), .B(
        \dymamic_led_0/HC4511_0/N_15_i ), .Y(\Seg_c[6] ));
    DFN1 \timer_NS_0/Q_NS[3]  (.D(\timer_NS_0/Q_NS_e3 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[3] ));
    AO1C \timer_EW/Q_NS_RNO[2]  (.A(\timer_EW/N_19 ), .B(
        \timer_EW/N_24 ), .C(\timer_EW/Q_NS_e2_0_2 ), .Y(
        \timer_EW/Q_NS_e2 ));
    IOPAD_TRI \Seg_pad[6]/U0/U0  (.D(\Seg_pad[6]/U0/NET1 ), .E(
        \Seg_pad[6]/U0/NET2 ), .PAD(Seg[6]));
    OR3B \timer_NS_0/Q_NS_RNO_2[5]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e5_0_a2_0_0 ), .C(Reset_c), .Y(
        \timer_NS_0/N_52 ));
    OR2 \BIN_to_BCD_1/un64_temp_1_CO1  (.A(\Q_NS[2] ), .B(
        \BIN_to_BCD_1/temp_15[0]_net_1 ), .Y(\BIN_to_BCD_1/CO1_1 ));
    OA1A \BIN_to_BCD_1/temp_7[1]  (.A(\Q_NS[7] ), .B(\Q_NS[5] ), .C(
        \Q_NS[6] ), .Y(\BIN_to_BCD_1/temp_7[1]_net_1 ));
    OR2 \trattic_control_0/current_state_RNIU9DU[0]  (.A(
        timer_NS_0_Done_NS), .B(Green2_c), .Y(\timer_NS_0.Ld_i ));
    AOI1B \timer_EW/Q_NS_RNO_2[2]  (.A(\Q_NS[2] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_EW/N_40 ), .Y(
        \timer_EW/Q_NS_e2_0_0 ));
    DFN1 \one_seond_clk_0/Count[7]  (.D(\one_seond_clk_0/Count_n7 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[7]_net_1 ));
    NOR2 \timer_NS_0/Q_NSlde_i_o2tt_m1_0_a2  (.A(one_seond_clk_0_Cout), 
        .B(Reset_c), .Y(Q_NSlde_i_o2tt_m1_0_a2));
    IOTRI_OB_EB \Green2_pad/U0/U1  (.D(Green2_c), .E(VCC), .DOUT(
        \Green2_pad/U0/NET1 ), .EOUT(\Green2_pad/U0/NET2 ));
    OR3C \timer_EW/Q_NS_RNO_2[5]  (.A(\Q_NS[5] ), .B(\timer_EW/N_22 ), 
        .C(\timer_EW/N_30 ), .Y(\timer_EW/N_52 ));
    OR3C \timer_EW/Q_NS_RNO[1]  (.A(\timer_EW/N_34 ), .B(
        \timer_EW/Q_NS_e1_0_0 ), .C(\timer_EW/N_39_i ), .Y(
        \timer_EW/Q_NS_e1 ));
    MX2A \BIN_to_BCD_1/temp_11[2]  (.A(\BIN_to_BCD_1/temp_7[1]_net_1 ), 
        .B(\BIN_to_BCD_1/temp_7[2]_net_1 ), .S(\BIN_to_BCD_1/CO1_0 ), 
        .Y(\BIN_to_BCD_1/temp_11[2]_net_1 ));
    OR3C \timer_NS_0/Q_NS_RNO[5]  (.A(\timer_NS_0/N_35 ), .B(
        \timer_NS_0/Q_NS_e5_0_0 ), .C(\timer_NS_0/N_51 ), .Y(
        \timer_NS_0/Q_NS_e5 ));
    OA1A \timer_NS_0/Q_NS_RNO_2[6]  (.A(\timer_NS_0/N_22 ), .B(
        \Q_NS_0[5] ), .C(\Q_NS_0[6] ), .Y(\timer_NS_0/Q_NS_e6_0_a2_0 ));
    XOR2 \BIN_to_BCD_1/temp[0]  (.A(\Q_NS[1] ), .B(
        \un1_BIN_to_BCD_1_1[0] ), .Y(\un1_BIN_to_BCD_1[1] ));
    OAI1 \BIN_to_BCD_0/un15_temp_1_CO2  (.A(\Q_NS_0[5] ), .B(
        \Q_NS_0[6] ), .C(\Q_NS_0[7] ), .Y(\BIN_to_BCD_0/temp86lto2 ));
    DFN1C1 \dymamic_led_0/count[1]  (.D(\dymamic_led_0/SUM1_0 ), .CLK(
        Clk_c), .CLR(Reset_c), .Q(\dymamic_led_0/count[1]_net_1 ));
    XNOR2 \BIN_to_BCD_0/temp_19[0]  (.A(\Q_NS_0[2] ), .B(
        \BIN_to_BCD_0/N_31 ), .Y(\BIN_to_BCD_0/temp_19_i[0] ));
    DFN1 \one_seond_clk_0/Count[2]  (.D(\one_seond_clk_0/Count_n2 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[2]_net_1 ));
    AOI1B \timer_NS_0/Q_NS_RNO_0[7]  (.A(\timer_NS_0/Q_NS_e7_0_a2_0 ), 
        .B(\timer_NS_0/N_26 ), .C(\timer_NS_0/N_58 ), .Y(
        \timer_NS_0/Q_NS_e7_0_0 ));
    OR2A \timer_NS_0/Q_NS_e0_0_a2_0_0  (.A(Yellow1_c), .B(Reset_c), .Y(
        \timer_NS_0/Q_NS_e0_0_a2_0_0_net_1 ));
    AX1 \BIN_to_BCD_1/temp_19[1]  (.A(\Q_NS[2] ), .B(
        \BIN_to_BCD_1/un64_temp[3] ), .C(
        \BIN_to_BCD_1/temp_15[0]_net_1 ), .Y(
        \BIN_to_BCD_1/temp_19[1]_net_1 ));
    DFN1 \timer_NS_0/Q_NS[5]  (.D(\timer_NS_0/Q_NS_e5 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[5] ));
    OR3 \timer_EW/Q_NS_RNI6VA9[0]  (.A(\Q_NS[0] ), .B(\Q_NS[1] ), .C(
        \Q_NS[2] ), .Y(\timer_EW/N_19 ));
    DFN1 \timer_EW/Q_NS[6]  (.D(\timer_EW/Q_NS_e6 ), .CLK(Clk_c), .Q(
        \Q_NS[6] ));
    MX2C \dymamic_led_0/count_RNI5MT7[1]  (.A(\Q_NS_0[0] ), .B(
        \Q_NS[0] ), .S(\dymamic_led_0/count[1]_net_1 ), .Y(
        \dymamic_led_0/N_26 ));
    DFN1 \timer_NS_0/Q_NS[4]  (.D(\timer_NS_0/Q_NS_e4 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[4] ));
    DFN1 \one_seond_clk_0/Count[6]  (.D(\one_seond_clk_0/Count_n6 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[6]_net_1 ));
    AOI1B \timer_EW/Q_NS_RNO_0[4]  (.A(\Q_NS[4] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_EW/N_47 ), .Y(
        \timer_EW/Q_NS_e4_0_0 ));
    OR2A \BIN_to_BCD_0/un32_temp_1_CO1  (.A(\BIN_to_BCD_0/temp_7_i[0] )
        , .B(\Q_NS_0[4] ), .Y(\BIN_to_BCD_0/CO1_0 ));
    OA1C \timer_NS_0/Q_NS_RNO_3[2]  (.A(\timer_NS_0/N_60 ), .B(
        \timer_NS_0.Ld_i ), .C(Reset_c), .Y(\timer_NS_0/N_404 ));
    NOR3A \timer_NS_0/Q_NS_e1_0_o2  (.A(\timer_EW.N_60 ), .B(Reset_c), 
        .C(\timer_NS_0/N_60 ), .Y(\timer_NS_0/N_23 ));
    IOTRI_OB_EB \Seg_pad[5]/U0/U1  (.D(\Seg_c[5] ), .E(VCC), .DOUT(
        \Seg_pad[5]/U0/NET1 ), .EOUT(\Seg_pad[5]/U0/NET2 ));
    XA1B \one_seond_clk_0/Count_RNO[7]  (.A(\one_seond_clk_0/Count_c6 )
        , .B(\one_seond_clk_0/Count[7]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n7 ));
    MX2A \timer_EW/Q_NS_RNO[0]  (.A(\timer_EW/N_62 ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .S(\Q_NS[0] ), .Y(\timer_EW/Q_NS_e0 ));
    IOPAD_TRI \Sl_pad[1]/U0/U0  (.D(\Sl_pad[1]/U0/NET1 ), .E(
        \Sl_pad[1]/U0/NET2 ), .PAD(Sl[1]));
    DFN1 \one_seond_clk_0/Count[0]  (.D(\one_seond_clk_0/Count_n0 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[0]_net_1 ));
    MX2 \dymamic_led_0/count_RNIRUL5P5[0]  (.A(\dymamic_led_0/N_28 ), 
        .B(\dymamic_led_0/N_32 ), .S(\dymamic_led_0/count[0]_net_1 ), 
        .Y(\dymamic_led_0/Disp_dat[2] ));
    AX1E \BIN_to_BCD_0/un92_temp_1_SUM3_0  (.A(
        \BIN_to_BCD_0/temp_19[1]_net_1 ), .B(\BIN_to_BCD_0/CO1_3 ), .C(
        \BIN_to_BCD_0/temp_19_i[2] ), .Y(\un1_BIN_to_BCD_0_1[0] ));
    AOI1B \timer_NS_0/Q_NS_RNO_0[4]  (.A(\Q_NS_0[4] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_NS_0/N_47 ), .Y(
        \timer_NS_0/Q_NS_e4_0_0 ));
    OR2A \dymamic_led_0/count_RNI9I46_0[0]  (.A(
        \dymamic_led_0/count[1]_net_1 ), .B(
        \dymamic_led_0/count[0]_net_1 ), .Y(\dymamic_led_0.Disp_dat8 ));
    AX1E \BIN_to_BCD_1/un48_temp_1_SUM3_0  (.A(
        \BIN_to_BCD_1/temp_11[1]_net_1 ), .B(\BIN_to_BCD_1/CO1 ), .C(
        \BIN_to_BCD_1/temp_11[2]_net_1 ), .Y(
        \BIN_to_BCD_1/un48_temp[3] ));
    XOR2 \BIN_to_BCD_0/temp_15[0]  (.A(\Q_NS_0[3] ), .B(
        \BIN_to_BCD_0/N_25_i ), .Y(\BIN_to_BCD_0/temp_15_i[0] ));
    MX2C \dymamic_led_0/count_RNIMOAKP2[1]  (.A(
        \un1_BIN_to_BCD_0_1[3] ), .B(\un1_BIN_to_BCD_1_1[3] ), .S(
        \dymamic_led_0/count[1]_net_1 ), .Y(\dymamic_led_0/N_33 ));
    XOR2 \trattic_control_0/current_state_ns_1_0__m3_0  (.A(
        \trattic_control_0/N_3 ), .B(
        \trattic_control_0.current_state[0] ), .Y(
        \trattic_control_0/N_4_i_0 ));
    OR2A \dymamic_led_0/count_RNI9I46_1[0]  (.A(
        \dymamic_led_0/count[0]_net_1 ), .B(
        \dymamic_led_0/count[1]_net_1 ), .Y(\dymamic_led_0.Disp_dat7 ));
    OR2A \one_seond_clk_0/Count_RNO_1[9]  (.A(
        \one_seond_clk_0/Count[9]_net_1 ), .B(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/N_49 ));
    OR2B \timer_NS_0/Q_NS_RNO_2[7]  (.A(\Q_NS_0[7] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .Y(\timer_NS_0/N_58 ));
    AX1C \BIN_to_BCD_0/un32_temp_1_SUM3_0  (.A(\BIN_to_BCD_0/CO1_0 ), 
        .B(\BIN_to_BCD_0/temp_7[1]_net_1 ), .C(
        \BIN_to_BCD_0/temp_7[2]_net_1 ), .Y(\BIN_to_BCD_0/N_19_i ));
    IOPAD_TRI \Yellow1_pad/U0/U0  (.D(\Yellow1_pad/U0/NET1 ), .E(
        \Yellow1_pad/U0/NET2 ), .PAD(Yellow1));
    IOPAD_TRI \Seg_pad[2]/U0/U0  (.D(\Seg_pad[2]/U0/NET1 ), .E(
        \Seg_pad[2]/U0/NET2 ), .PAD(Seg[2]));
    OR2B \dymamic_led_0/count_RNI9I46[0]  (.A(
        \dymamic_led_0/count[1]_net_1 ), .B(
        \dymamic_led_0/count[0]_net_1 ), .Y(\dymamic_led_0.Disp_dat9 ));
    OR2A \BIN_to_BCD_1/un48_temp_1_CO1  (.A(
        \BIN_to_BCD_1/temp_11_i[0] ), .B(\Q_NS[3] ), .Y(
        \BIN_to_BCD_1/CO1 ));
    OR3B \timer_NS_0/Q_NS_RNO_1[5]  (.A(\timer_NS_0/N_22 ), .B(
        \timer_NS_0/N_24 ), .C(\Q_NS_0[5] ), .Y(\timer_NS_0/N_51 ));
    NOR2B \timer_NS_0/Q_NS_RNO_6[2]  (.A(\Q_NS_0[2] ), .B(
        \timer_NS_0/N_18 ), .Y(\timer_NS_0/Q_NS_e2_0_a2_1_0 ));
    OR2A \timer_EW/Q_NS_e1_0_o2_0  (.A(\timer_EW/N_62 ), .B(Reset_c), 
        .Y(\timer_EW/N_24 ));
    IOTRI_OB_EB \Seg_pad[1]/U0/U1  (.D(\SM_8S_1_i_0[1] ), .E(VCC), 
        .DOUT(\Seg_pad[1]/U0/NET1 ), .EOUT(\Seg_pad[1]/U0/NET2 ));
    OR3 \timer_EW/Q_NS_RNO_2[3]  (.A(\timer_EW/N_19 ), .B(\Q_NS[3] ), 
        .C(\timer_EW/N_62 ), .Y(\timer_EW/N_44 ));
    NOR2B \dymamic_led_0/HC4511_0/SM_8S_1_i_0_o2[1]  (.A(
        \dymamic_led_0/Disp_dat[3] ), .B(\dymamic_led_0/Disp_dat[1] ), 
        .Y(\dymamic_led_0/HC4511_0/N_19 ));
    IOPAD_TRI \Red2_pad/U0/U0  (.D(\Red2_pad/U0/NET1 ), .E(
        \Red2_pad/U0/NET2 ), .PAD(Red2));
    OR2A \timer_EW/Q_NS_RNO_1[4]  (.A(\timer_EW/N_24 ), .B(
        \timer_EW/N_22 ), .Y(\timer_EW/N_46 ));
    IOTRI_OB_EB \Green1_pad/U0/U1  (.D(Green1_c), .E(VCC), .DOUT(
        \Green1_pad/U0/NET1 ), .EOUT(\Green1_pad/U0/NET2 ));
    XOR2 \BIN_to_BCD_1/temp_19[0]  (.A(\Q_NS[2] ), .B(
        \BIN_to_BCD_1/un64_temp[3] ), .Y(
        \BIN_to_BCD_1/temp_19[0]_net_1 ));
    IOTRI_OB_EB \Seg_pad[0]/U0/U1  (.D(\SM_8S_1_i_0_a3_0[0] ), .E(VCC), 
        .DOUT(\Seg_pad[0]/U0/NET1 ), .EOUT(\Seg_pad[0]/U0/NET2 ));
    DFN1 \timer_NS_0/Q_NS[7]  (.D(\timer_NS_0/Q_NS_e7 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[7] ));
    DFN1 \timer_EW/Q_NS[2]  (.D(\timer_EW/Q_NS_e2 ), .CLK(Clk_c), .Q(
        \Q_NS[2] ));
    OR2B \timer_NS_0/Q_NS_RNO_1[6]  (.A(\Q_NS_0[6] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .Y(\timer_NS_0/N_55 ));
    IOPAD_TRI \Seg_pad[4]/U0/U0  (.D(\Seg_pad[4]/U0/NET1 ), .E(
        \Seg_pad[4]/U0/NET2 ), .PAD(Seg[4]));
    NOR2 \timer_NS_0/Q_NS_RNI7OG3[2]  (.A(\Q_NS_0[7] ), .B(\Q_NS_0[2] )
        , .Y(\timer_NS_0/Done_NS_0_a2_m3_e_1 ));
    DFN1 \one_seond_clk_0/Count[4]  (.D(\one_seond_clk_0/Count_n4 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[4]_net_1 ));
    OA1 \BIN_to_BCD_1/un15_temp_1_CO2  (.A(\Q_NS[5] ), .B(\Q_NS[6] ), 
        .C(\Q_NS[7] ), .Y(\BIN_to_BCD_1/un15_temp[3] ));
    NOR3A \BIN_to_BCD_1/temp_22[7]  (.A(\BIN_to_BCD_1/un15_temp[3] ), 
        .B(\BIN_to_BCD_1/temp_7[1]_net_1 ), .C(
        \BIN_to_BCD_1/un48_temp[3] ), .Y(
        \BIN_to_BCD_1/temp_22[7]_net_1 ));
    OAI1 \timer_NS_0/Q_NS_RNO[7]  (.A(\timer_NS_0/N_81 ), .B(
        \Q_NS_0[7] ), .C(\timer_NS_0/Q_NS_e7_0_0 ), .Y(
        \timer_NS_0/Q_NS_e7 ));
    OR3B \timer_NS_0/Q_NS_RNO_0[3]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e3_0_a2_0 ), .C(Reset_c), .Y(
        \timer_NS_0/N_43 ));
    OR3B \timer_EW/Q_NS_RNIF75S[7]  (.A(one_seond_clk_0_Cout), .B(
        \timer_EW/N_26 ), .C(\Q_NS[7] ), .Y(timer_EW_Done_NS));
    AX1E \BIN_to_BCD_1/un32_temp_1_SUM3_0  (.A(\BIN_to_BCD_1/CO1_0 ), 
        .B(\BIN_to_BCD_1/temp_7[1]_net_1 ), .C(
        \BIN_to_BCD_1/temp_7[2]_net_1 ), .Y(
        \BIN_to_BCD_1/un32_temp[3] ));
    OR2B \timer_EW/Q_NS_RNO_1[3]  (.A(\Q_NS[3] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .Y(\timer_EW/N_45 ));
    XOR3 \BIN_to_BCD_1/un76_temp_1_SUM1_0  (.A(
        \BIN_to_BCD_1/temp_7[1]_net_1 ), .B(\BIN_to_BCD_1/CO1_0 ), .C(
        \BIN_to_BCD_1/un48_temp[3] ), .Y(
        \BIN_to_BCD_1/un76_temp_i_i_0[1] ));
    INV \trattic_control_0/current_state_RNIGVI6[1]  (.A(Red1_c), .Y(
        Red1_c_i));
    AOI1B \timer_EW/Q_NS_RNO_0[6]  (.A(\Q_NS[6] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_EW/N_54 ), .Y(
        \timer_EW/Q_NS_e6_0_0 ));
    AOI1B \timer_NS_0/Q_NS_RNO_0[5]  (.A(\Q_NS_0[5] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_NS_0/N_52 ), .Y(
        \timer_NS_0/Q_NS_e5_0_0 ));
    MX2C \dymamic_led_0/count_RNIAMNFC2[1]  (.A(
        \un1_BIN_to_BCD_0_1[1] ), .B(\un1_BIN_to_BCD_1_1[1] ), .S(
        \dymamic_led_0/count[1]_net_1 ), .Y(\dymamic_led_0/N_31 ));
    AX1A \BIN_to_BCD_1/temp_11[1]  (.A(\Q_NS[4] ), .B(
        \BIN_to_BCD_1/un32_temp[3] ), .C(\BIN_to_BCD_1/temp_7_i[0] ), 
        .Y(\BIN_to_BCD_1/temp_11[1]_net_1 ));
    IOPAD_TRI \Sl_pad[2]/U0/U0  (.D(\Sl_pad[2]/U0/NET1 ), .E(
        \Sl_pad[2]/U0/NET2 ), .PAD(Sl[2]));
    OA1B \dymamic_led_0/HC4511_0/SM_8S_1_i_0[1]  (.A(
        \dymamic_led_0/HC4511_0/N_19 ), .B(
        \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3_0[1]_net_1 ), .C(
        \dymamic_led_0/HC4511_0/N_74 ), .Y(\SM_8S_1_i_0[1] ));
    AX1E \BIN_to_BCD_1/un64_temp_1_SUM3_0  (.A(
        \BIN_to_BCD_1/temp_15[1]_net_1 ), .B(\BIN_to_BCD_1/CO1_1 ), .C(
        \BIN_to_BCD_1/temp_15[2]_net_1 ), .Y(
        \BIN_to_BCD_1/un64_temp[3] ));
    XOR2 \BIN_to_BCD_0/temp_7[0]  (.A(\Q_NS_0[5] ), .B(
        \BIN_to_BCD_0/temp86lto2 ), .Y(\BIN_to_BCD_0/temp_7_i[0] ));
    NOR2A \trattic_control_0/current_state_RNIVQ5D_0[0]  (.A(
        \trattic_control_0.current_state[0] ), .B(Red1_c), .Y(
        Yellow1_c));
    IOTRI_OB_EB \Sl_pad[3]/U0/U1  (.D(\dymamic_led_0.Disp_dat9 ), .E(
        VCC), .DOUT(\Sl_pad[3]/U0/NET1 ), .EOUT(\Sl_pad[3]/U0/NET2 ));
    OAI1 \BIN_to_BCD_1/_l5.temp86lto2  (.A(
        \BIN_to_BCD_1/temp_7[1]_net_1 ), .B(
        \BIN_to_BCD_1/un48_temp[3] ), .C(\BIN_to_BCD_1/un15_temp[3] ), 
        .Y(\BIN_to_BCD_1/un1_BIN_to_BCD_1_2[1] ));
    XA1B \one_seond_clk_0/Count_RNO[5]  (.A(\one_seond_clk_0/Count_c4 )
        , .B(\one_seond_clk_0/Count[5]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n5 ));
    NOR2 \one_seond_clk_0/Count_RNIPK4B[3]  (.A(
        \one_seond_clk_0/Count[3]_net_1 ), .B(
        \one_seond_clk_0/Count[4]_net_1 ), .Y(
        \one_seond_clk_0/un1_Count_2_3 ));
    DFN1 \one_seond_clk_0/Count[8]  (.D(\one_seond_clk_0/Count_n8 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[8]_net_1 ));
    XOR2 \BIN_to_BCD_1/temp_15[0]  (.A(\Q_NS[3] ), .B(
        \BIN_to_BCD_1/un48_temp[3] ), .Y(
        \BIN_to_BCD_1/temp_15[0]_net_1 ));
    AO1A \timer_NS_0/Q_NS_e1_0_a2_0  (.A(Reset_c), .B(
        \timer_NS_0.Ld_i ), .C(\timer_NS_0/N_23 ), .Y(
        \timer_NS_0/N_35 ));
    DFN1 \timer_EW/Q_NS[7]  (.D(\timer_EW/Q_NS_e7 ), .CLK(Clk_c), .Q(
        \Q_NS[7] ));
    NOR2 \trattic_control_0/Sload_EW_i  (.A(timer_NS_0_Done_NS), .B(
        Green1_c), .Y(\timer_EW.Ld_i ));
    NOR2 \timer_EW/un1_Reset_1_i_i_a2  (.A(\timer_EW.Ld_i ), .B(
        Reset_c), .Y(\timer_EW/N_30 ));
    OR3C \timer_EW/Q_NS_RNO_2[1]  (.A(\Q_NS[0] ), .B(\Q_NS[1] ), .C(
        \timer_EW/N_30 ), .Y(\timer_EW/N_36 ));
    IOIN_IB \Reset_pad/U0/U1  (.YIN(\Reset_pad/U0/NET1 ), .Y(Reset_c));
    DFN1 \one_seond_clk_0/Count[9]  (.D(\one_seond_clk_0/Count_n9 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[9]_net_1 ));
    OR3B \timer_EW/Q_NS_e2_0_a2_4  (.A(
        \trattic_control_0.current_state[0] ), .B(\timer_NS_0.N_16 ), 
        .C(Red1_c), .Y(\timer_EW.N_60 ));
    AX1C \dymamic_led_0/HC4511_0/SM_8S_1_i_i_x2[6]  (.A(
        \dymamic_led_0/Disp_dat[1] ), .B(\dymamic_led_0/Disp_dat[2] ), 
        .C(\dymamic_led_0/Disp_dat[3] ), .Y(
        \dymamic_led_0/HC4511_0/N_15_i ));
    IOPAD_TRI \Green2_pad/U0/U0  (.D(\Green2_pad/U0/NET1 ), .E(
        \Green2_pad/U0/NET2 ), .PAD(Green2));
    OR2B \timer_EW/Q_NS_RNO_2[4]  (.A(\timer_EW/Q_NS_e4_0_a2_0_0 ), .B(
        \timer_EW/N_30 ), .Y(\timer_EW/N_47 ));
    MX2A \BIN_to_BCD_0/temp_19[2]  (.A(\BIN_to_BCD_0/temp_15[1]_net_1 )
        , .B(\BIN_to_BCD_0/temp_15[2]_net_1 ), .S(\BIN_to_BCD_0/CO1_1 )
        , .Y(\BIN_to_BCD_0/temp_19_i[2] ));
    OR2B \BIN_to_BCD_0/temp_7[2]  (.A(\Q_NS_0[7] ), .B(
        \BIN_to_BCD_0/temp86lto2 ), .Y(\BIN_to_BCD_0/temp_7[2]_net_1 ));
    AO1C \timer_EW/Q_NS_RNO[6]  (.A(\timer_EW/N_62 ), .B(
        \timer_EW/N_26 ), .C(\timer_EW/Q_NS_e6_0_0 ), .Y(
        \timer_EW/Q_NS_e6 ));
    XNOR2 \BIN_to_BCD_1/temp_7[0]  (.A(\Q_NS[5] ), .B(
        \BIN_to_BCD_1/un15_temp[3] ), .Y(\BIN_to_BCD_1/temp_7_i[0] ));
    MX2B \trattic_control_0/current_state_ns_1_0__m6  (.A(Red1_c), .B(
        \trattic_control_0/N_6 ), .S(
        \trattic_control_0.current_state[0] ), .Y(
        \trattic_control_0/current_state_ns[1] ));
    XOR2 \BIN_to_BCD_0/temp_11[0]  (.A(\Q_NS_0[4] ), .B(
        \BIN_to_BCD_0/N_19_i ), .Y(\BIN_to_BCD_0/temp_11_i[0] ));
    NOR2B \one_seond_clk_0/Count_RNIJS3B[1]  (.A(
        \one_seond_clk_0/Count[1]_net_1 ), .B(
        \one_seond_clk_0/Count[0]_net_1 ), .Y(
        \one_seond_clk_0/Count_c1 ));
    MX2C \dymamic_led_0/count_RNIHP4S92[1]  (.A(\un1_BIN_to_BCD_0[3] ), 
        .B(\un1_BIN_to_BCD_1[3] ), .S(\dymamic_led_0/count[1]_net_1 ), 
        .Y(\dymamic_led_0/N_29 ));
    AX1E \BIN_to_BCD_1/un92_temp_1_SUM3_0  (.A(
        \BIN_to_BCD_1/temp_19[1]_net_1 ), .B(\BIN_to_BCD_1/CO1_2 ), .C(
        \BIN_to_BCD_1/temp_19[2]_net_1 ), .Y(\un1_BIN_to_BCD_1_1[0] ));
    OR2B \timer_EW/Q_NS_RNO_1[6]  (.A(\timer_EW/Q_NS_e6_0_a2_0 ), .B(
        \timer_EW/N_30 ), .Y(\timer_EW/N_54 ));
    MX2C \BIN_to_BCD_1/temp_22[6]  (.A(
        \BIN_to_BCD_1/un76_temp_i_i_0[1] ), .B(
        \BIN_to_BCD_1/un32_temp[3] ), .S(
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[1] ), .Y(
        \BIN_to_BCD_1/temp_22[6]_net_1 ));
    XAI1A \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3_0[0]  (.A(
        \dymamic_led_0/Disp_dat[2] ), .B(\dymamic_led_0/Disp_dat[0] ), 
        .C(\dymamic_led_0/HC4511_0/N_19 ), .Y(\SM_8S_1_i_0_a3_0[0] ));
    NOR2B \trattic_control_0/current_state_RNIVQ5D[0]  (.A(
        \trattic_control_0.current_state[0] ), .B(Red1_c), .Y(
        \timer_EW.State_i_0[3] ));
    DFN1 \one_seond_clk_0/Count[1]  (.D(\one_seond_clk_0/Count_n1 ), 
        .CLK(Clk_c), .Q(\one_seond_clk_0/Count[1]_net_1 ));
    OR3 \timer_NS_0/Q_NS_RNO_2[3]  (.A(\timer_NS_0/N_19 ), .B(
        \Q_NS_0[3] ), .C(\timer_NS_0/N_62 ), .Y(\timer_NS_0/N_44 ));
    XOR2 \BIN_to_BCD_1/un104_temp_1_SUM3_0  (.A(\BIN_to_BCD_1/CO2_0 ), 
        .B(\BIN_to_BCD_1/temp_22[7]_net_1 ), .Y(
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[0] ));
    OR3B \timer_NS_0/Q_NS_RNO_0[6]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e6_0_a2_0 ), .C(Reset_c), .Y(
        \timer_NS_0/N_54 ));
    DFN1 \timer_NS_0/Q_NS[2]  (.D(\timer_NS_0/Q_NS_e2 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[2] ));
    NOR3B \one_seond_clk_0/Cout_RNO  (.A(
        \one_seond_clk_0/un1_Count_2_5 ), .B(
        \one_seond_clk_0/un1_Count_2_6 ), .C(Reset_c), .Y(
        \one_seond_clk_0/Count13 ));
    OR2A \BIN_to_BCD_0/un92_temp_1_CO1  (.A(
        \BIN_to_BCD_0/temp_19_i[0] ), .B(\Q_NS_0[1] ), .Y(
        \BIN_to_BCD_0/CO1_3 ));
    OR3B \timer_NS_0/Q_NS_RNO_2[4]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e4_0_a2_0_0 ), .C(Reset_c), .Y(
        \timer_NS_0/N_47 ));
    OR2A \BIN_to_BCD_1/temp_7[2]  (.A(\Q_NS[7] ), .B(
        \BIN_to_BCD_1/un15_temp[3] ), .Y(
        \BIN_to_BCD_1/temp_7[2]_net_1 ));
    NOR2B \timer_NS_0/Q_NS_RNO_3[1]  (.A(\Q_NS_0[0] ), .B(\Q_NS_0[1] ), 
        .Y(\timer_NS_0/Q_NS_e1_0_a2_1_0 ));
    AOI1B \timer_EW/Q_NS_RNO_0[5]  (.A(\Q_NS[5] ), .B(
        Q_NSlde_i_o2tt_m1_0_a2), .C(\timer_EW/N_52 ), .Y(
        \timer_EW/Q_NS_e5_0_0 ));
    IOTRI_OB_EB \Sl_pad[0]/U0/U1  (.D(\dymamic_led_0.Disp_dat6 ), .E(
        VCC), .DOUT(\Sl_pad[0]/U0/NET1 ), .EOUT(\Sl_pad[0]/U0/NET2 ));
    IOTRI_OB_EB \Seg_pad[3]/U0/U1  (.D(
        \dymamic_led_0.HC4511_0.N_21_i_0 ), .E(VCC), .DOUT(
        \Seg_pad[3]/U0/NET1 ), .EOUT(\Seg_pad[3]/U0/NET2 ));
    MX2 \dymamic_led_0/count_RNI4IDMO2[1]  (.A(\un1_BIN_to_BCD_0_1[2] )
        , .B(\un1_BIN_to_BCD_1_1[2] ), .S(
        \dymamic_led_0/count[1]_net_1 ), .Y(\dymamic_led_0/N_32 ));
    IOPAD_TRI \Seg_pad[7]/U0/U0  (.D(\Seg_pad[7]/U0/NET1 ), .E(
        \Seg_pad[7]/U0/NET2 ), .PAD(Seg[7]));
    IOPAD_IN \Reset_pad/U0/U0  (.PAD(Reset), .Y(\Reset_pad/U0/NET1 ));
    OR2 \BIN_to_BCD_1/un92_temp_1_CO1  (.A(\Q_NS[1] ), .B(
        \BIN_to_BCD_1/temp_19[0]_net_1 ), .Y(\BIN_to_BCD_1/CO1_2 ));
    OA1 \timer_NS_0/Q_NS_RNO_1[3]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e0_0_a2_0_0_net_1 ), .C(\timer_NS_0/N_45 ), 
        .Y(\timer_NS_0/Q_NS_e3_0_0 ));
    XNOR2 \BIN_to_BCD_1/temp_11[0]  (.A(\Q_NS[4] ), .B(
        \BIN_to_BCD_1/un32_temp[3] ), .Y(\BIN_to_BCD_1/temp_11_i[0] ));
    OR3 \timer_EW/Q_NS_RNIFTIF[4]  (.A(\timer_EW/N_19 ), .B(\Q_NS[3] ), 
        .C(\Q_NS[4] ), .Y(\timer_EW/N_22 ));
    DFN1 \timer_NS_0/Q_NS[0]  (.D(\timer_NS_0/Q_NS_e0 ), .CLK(Clk_c), 
        .Q(\Q_NS_0[0] ));
    XA1B \one_seond_clk_0/Count_RNO[1]  (.A(
        \one_seond_clk_0/Count[1]_net_1 ), .B(
        \one_seond_clk_0/Count[0]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n1 ));
    NOR2 \dymamic_led_0/HC4511_0/SM_8S_1_0_0_o2[5]  (.A(
        \dymamic_led_0/Disp_dat[1] ), .B(\dymamic_led_0/Disp_dat[2] ), 
        .Y(\dymamic_led_0/HC4511_0/N_17 ));
    DFN1C1 \trattic_control_0/current_state[1]  (.D(
        \trattic_control_0/current_state_ns[1] ), .CLK(Clk_c), .CLR(
        Reset_c), .Q(Red1_c));
    IOTRI_OB_EB \Seg_pad[6]/U0/U1  (.D(\Seg_c[6] ), .E(VCC), .DOUT(
        \Seg_pad[6]/U0/NET1 ), .EOUT(\Seg_pad[6]/U0/NET2 ));
    OR2 \timer_NS_0/Q_NS_RNIVNF3[0]  (.A(\Q_NS_0[1] ), .B(\Q_NS_0[0] ), 
        .Y(\timer_NS_0/N_18 ));
    NOR2B \one_seond_clk_0/Count_RNINLQR[4]  (.A(
        \one_seond_clk_0/Count[4]_net_1 ), .B(
        \one_seond_clk_0/Count_c3 ), .Y(\one_seond_clk_0/Count_c4 ));
    OR3B \timer_EW/Q_NS_RNO_0[7]  (.A(\timer_EW/N_30 ), .B(\Q_NS[7] ), 
        .C(\timer_EW/N_26 ), .Y(\timer_EW/N_56 ));
    OR3C \timer_EW/Q_NS_RNO[3]  (.A(\timer_EW/N_43 ), .B(
        \timer_EW/N_45 ), .C(\timer_EW/N_44 ), .Y(\timer_EW/Q_NS_e3 ));
    MX2B \BIN_to_BCD_0/temp[2]  (.A(\BIN_to_BCD_0/temp_19[1]_net_1 ), 
        .B(\BIN_to_BCD_0/temp_19_i[2] ), .S(\BIN_to_BCD_0/CO1_3 ), .Y(
        \un1_BIN_to_BCD_0[3] ));
    AO1 \one_seond_clk_0/Count_RNICN0T1[7]  (.A(
        \one_seond_clk_0/un1_Count_2_6 ), .B(
        \one_seond_clk_0/un1_Count_2_5 ), .C(Reset_c), .Y(
        \one_seond_clk_0/un1_Reset_1 ));
    XNOR2 \BIN_to_BCD_1/temp_22[5]  (.A(
        \BIN_to_BCD_1/un1_BIN_to_BCD_1_2[1] ), .B(
        \BIN_to_BCD_1/un48_temp[3] ), .Y(
        \BIN_to_BCD_1/temp_22[5]_net_1 ));
    OR3A \timer_EW/Q_NS_RNO_0[1]  (.A(\timer_EW/N_24 ), .B(\Q_NS[0] ), 
        .C(\Q_NS[1] ), .Y(\timer_EW/N_34 ));
    XA1B \one_seond_clk_0/Count_RNO[8]  (.A(\one_seond_clk_0/Count_c7 )
        , .B(\one_seond_clk_0/Count[8]_net_1 ), .C(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n8 ));
    NOR3C \one_seond_clk_0/Count_RNID6E11[5]  (.A(
        \one_seond_clk_0/un1_Count_2_1 ), .B(
        \one_seond_clk_0/un1_Count_2_0 ), .C(
        \one_seond_clk_0/Count_c1 ), .Y(
        \one_seond_clk_0/un1_Count_2_6 ));
    MX2C \dymamic_led_0/count_RNIHP4S92_0[1]  (.A(
        \un1_BIN_to_BCD_0_1[0] ), .B(\un1_BIN_to_BCD_1_1[0] ), .S(
        \dymamic_led_0/count[1]_net_1 ), .Y(\dymamic_led_0/N_30 ));
    OR2B \timer_EW/Q_NS_e1_0_a2_4  (.A(\timer_EW/N_30 ), .B(
        one_seond_clk_0_Cout), .Y(\timer_EW/N_62 ));
    AX1A \BIN_to_BCD_0/temp_19[1]  (.A(\Q_NS_0[2] ), .B(
        \BIN_to_BCD_0/N_31 ), .C(\BIN_to_BCD_0/temp_15_i[0] ), .Y(
        \BIN_to_BCD_0/temp_19[1]_net_1 ));
    NOR2 \one_seond_clk_0/Count_RNO[0]  (.A(
        \one_seond_clk_0/Count[0]_net_1 ), .B(
        \one_seond_clk_0/un1_Reset_1 ), .Y(\one_seond_clk_0/Count_n0 ));
    OA1 \timer_NS_0/Q_NS_RNO_0[0]  (.A(\timer_NS_0.Ld_i ), .B(
        \timer_NS_0/Q_NS_e0_0_a2_0_0_net_1 ), .C(\timer_NS_0/N_33 ), 
        .Y(\timer_NS_0/Q_NS_e0_0_0 ));
    OR3C \timer_NS_0/Q_NS_RNO[4]  (.A(\timer_NS_0/N_35 ), .B(
        \timer_NS_0/Q_NS_e4_0_0 ), .C(\timer_NS_0/N_46 ), .Y(
        \timer_NS_0/Q_NS_e4 ));
    OR3C \timer_EW/Q_NS_RNO[4]  (.A(\timer_EW/N_39_i ), .B(
        \timer_EW/Q_NS_e4_0_0 ), .C(\timer_EW/N_46 ), .Y(
        \timer_EW/Q_NS_e4 ));
    NOR3A \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3[3]  (.A(
        \dymamic_led_0/Disp_dat[2] ), .B(\dymamic_led_0/Disp_dat[0] ), 
        .C(\dymamic_led_0/Disp_dat[1] ), .Y(
        \dymamic_led_0/HC4511_0/SM_8S_1_i_0_a3[3]_net_1 ));
    NOR3 \timer_EW/Q_NS_RNISBRL[6]  (.A(\timer_EW/N_22 ), .B(\Q_NS[5] )
        , .C(\Q_NS[6] ), .Y(\timer_EW/N_26 ));
    NOR3C \one_seond_clk_0/Count_RNIQ9AM[7]  (.A(
        \one_seond_clk_0/Count[8]_net_1 ), .B(
        \one_seond_clk_0/Count[7]_net_1 ), .C(
        \one_seond_clk_0/un1_Count_2_3 ), .Y(
        \one_seond_clk_0/un1_Count_2_5 ));
    OR3A \timer_EW/Q_NS_RNO_2[7]  (.A(\timer_EW/N_26 ), .B(
        \timer_EW/N_62 ), .C(\Q_NS[7] ), .Y(\timer_EW/N_57 ));
    NOR2B \one_seond_clk_0/Count_RNIA98M[3]  (.A(
        \one_seond_clk_0/Count[3]_net_1 ), .B(
        \one_seond_clk_0/Count_c2 ), .Y(\one_seond_clk_0/Count_c3 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
