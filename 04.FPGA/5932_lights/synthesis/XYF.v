`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module paomadeng_paomadeng_1_2(
       sel_0_c,
       led_0_c,
       rst_c,
       rst_c_0,
       clk_c
    );
input  [1:0] sel_0_c;
output [7:0] led_0_c;
input  rst_c;
input  rst_c_0;
input  clk_c;

    wire dir_0_net_1, N_240, \led_12_iv_0_1[7] , N_146, N_145, N_147, 
        \led_12_iv_i_2[6] , N_160, \led_12_iv_i_1[6] , N_80, N_203, 
        \led_RNO_4[6]_net_1 , \led_12_iv_0_a6_0_0[7] , N_68, N_128, 
        \led_12_iv_i_1[5] , N_114, N_186, N_165, \led_12_iv_i_0[5] , 
        N_164, N_79, \led_12_iv_i_1[4] , \led_RNO_4[4]_net_1 , 
        \led_12_iv_i_0[4] , \un8_led_i_0[4] , N_201, N_168, 
        \led_12_iv_i_2[3] , N_172, N_173, N_171, \led_12_iv_i_2[2] , 
        \led_12_iv_i_0[2] , \un8_led_i_0[2] , \led_RNO_4[2]_net_1 , 
        \led_12_iv_i_2[1] , \led_12_iv_i_0[1] , N_206, 
        \led_12_iv_i_a6_1_1[1] , N_151, \led_r_11_i_1[7] , N_70_i, 
        N_131, ADD_7x7_medium_area_I27_Y_0_0, \led_r[7]_net_1 , 
        ADD_7x7_medium_area_I19_Y_0, \led_r[6]_net_1 , N113, 
        \led_12_0_iv_0_0[0] , \led_12_0_iv_0_a6_0[0] , N_155, 
        \led_12_iv_i_a6_1_1[3] , \led_r1[4]_net_1 , \led_r1[3]_net_1 , 
        \led_r[2]_net_1 , \led_r_11_i_a6_0[6] , \led_r_11_i_a6_0[4] , 
        \led_r[4]_net_1 , \led_r_11_i_a6_0[2] , \led_r[0]_net_1 , 
        \led_r1[1]_net_1 , \led_r1[2]_net_1 , \led_12_iv_i_a6_1_1[6] , 
        \led_r1[6]_net_1 , \led_r1[7]_net_1 , \led_12_iv_i_a6_1_1[5] , 
        \led_r1[5]_net_1 , \led_12_iv_i_a6_1_1[4] , 
        \led_12_iv_i_a6_1_1[2] , ADD_7x7_medium_area_I19_un1_Y_0, N112, 
        \led_r_11_0_o6_0[0] , ADD_7x7_medium_area_I12_Y_0, N109, 
        \led_12_iv_0_a6_0[7] , ADD_7x7_medium_area_I12_un1_Y_0, N108, 
        \led_r1_8_i_a6_0[5] , \led_r1_8_i_a6_0[4] , 
        \led_r1_8_i_a6_0[3] , \led_r1_8_i_a6_0[2] , 
        \led_r1_8_i_a6_0[1] , \led_r1[0]_net_1 , led_r38, 
        un1_dir_2_sqmuxa_0_a2_0, \cnt2[2]_net_1 , N132, N122, N_48_i_0, 
        \led_RNO_0[1]_net_1 , N_65_i_0, \led_RNO_0[2]_net_1 , N_63_i_0, 
        \led_RNO_0[3]_net_1 , N_61_i_0, N_167, N_59_i_0, N_163, 
        N_57_i_0, \un8_led_i_0[6] , \led_12[0] , N_154, N_123, N_205, 
        N_204, N_43, \cnt2[0]_net_1 , \cnt2[1]_net_1 , N_198, 
        \cnt3[1]_net_1 , \cnt3[0]_net_1 , N134, N_144_i, N_143, N_83, 
        N_89, \led_12[7] , N_26_i_0, \led_r_RNO_1[7]_net_1 , N_130, 
        \led_r1_8_i_0_tz[0] , dir_net_1, N_55, N_66, N_121, N_185, 
        N_184, N_124, N_211, \led_r_11[0] , N_195, N_14, N_16, N_18, 
        N_20, N_22, N_126, N_24, \led_r[1]_net_1 , N_69, \cnt3_6[1] , 
        \un1_cnt3_2[1] , \cnt3_6[0] , \DWACT_ADD_CI_0_partial_sum[0] , 
        \led_r1_8[7] , N_30, N_32, N_34, N_36, N_38, N_106, N_71, 
        N_182, N_72, N_180, N_81, N_52, cnt1_net_1, N_28, un1_rst_3, 
        N_87, un1_dir_2_sqmuxa, N_45, cnt2e, cnt2_n0, N_118, un1_rst_2, 
        N_116, N_115, \led_r[5]_net_1 , N_113, \led_r[3]_net_1 , N_112, 
        N_111, N136_i, N138_i, N105, \DWACT_ADD_CI_0_TMP[0] , GND, VCC, 
        GND_0, VCC_0;
    
    OR2 \led_12_iv_0_o2_0[7]  (.A(sel_0_c[1]), .B(sel_0_c[0]), .Y(N_81)
        );
    NOR2 \cnt2_RNO[0]  (.A(rst_c), .B(\cnt2[0]_net_1 ), .Y(cnt2_n0));
    DFN1E0 \led_r[4]  (.D(N_20), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[4]_net_1 ));
    NOR2B \led_RNO_4[5]  (.A(\led_r[4]_net_1 ), .B(\led_r1[6]_net_1 ), 
        .Y(N_114));
    OR2A dir_RNIPLP9_0 (.A(N_69), .B(dir_net_1), .Y(N_195));
    NOR2 \led_r_RNI1ORC[5]  (.A(\led_r[5]_net_1 ), .B(N_69), .Y(N_204));
    NOR3B \led_RNO_0[6]  (.A(N_160), .B(\led_12_iv_i_1[6] ), .C(N_80), 
        .Y(\led_12_iv_i_2[6] ));
    AO1A cnt2lde_0 (.A(sel_0_c[1]), .B(sel_0_c[0]), .C(rst_c), .Y(
        cnt2e));
    OR3C \led_RNO[0]  (.A(\led_12_0_iv_0_0[0] ), .B(N_154), .C(N_123), 
        .Y(\led_12[0] ));
    DFN1 cnt1 (.D(N_52), .CLK(clk_c), .Q(cnt1_net_1));
    DFN1E0 \led[5]  (.D(N_59_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[5]));
    AOI1 \led_r_RNO_0[1]  (.A(N_206), .B(N_186), .C(\led_r[0]_net_1 ), 
        .Y(N_121));
    OA1C \led_r_RNO_0[5]  (.A(N_186), .B(N_204), .C(\led_r[4]_net_1 ), 
        .Y(N_126));
    XA1B dir_RNI9N5U (.A(dir_net_1), .B(un1_dir_2_sqmuxa), .C(rst_c), 
        .Y(N_240));
    XA1 un8_led_ADD_7x7_medium_area_I19_un1_Y_0 (.A(led_0_c[5]), .B(
        \led_r[6]_net_1 ), .C(N112), .Y(
        ADD_7x7_medium_area_I19_un1_Y_0));
    OR2B dir_RNI8PIH1_0 (.A(N_155), .B(N_72), .Y(N_79));
    NOR3B \led_RNO[3]  (.A(\led_RNO_0[3]_net_1 ), .B(
        \led_12_iv_i_2[3] ), .C(N_79), .Y(N_63_i_0));
    OA1 dir_RNI8NVT (.A(N_71), .B(dir_net_1), .C(N_180), .Y(N_72));
    NOR3 \led_RNO_6[3]  (.A(\led_r1[4]_net_1 ), .B(\led_r1[3]_net_1 ), 
        .C(\led_r[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[3] ));
    DFN1 dir (.D(N_240), .CLK(clk_c), .Q(dir_net_1));
    NOR3B \cnt2_RNI9DED[2]  (.A(sel_0_c[0]), .B(\cnt2[2]_net_1 ), .C(
        sel_0_c[1]), .Y(un1_dir_2_sqmuxa_0_a2_0));
    XOR2 un8_led_ADD_7x7_medium_area_I27_Y_0_0 (.A(\led_r[7]_net_1 ), 
        .B(led_0_c[6]), .Y(ADD_7x7_medium_area_I27_Y_0_0));
    NOR2A un1_rst_i_a6 (.A(led_r38), .B(rst_c), .Y(N_118));
    OR2B dir_RNI8PIH1 (.A(N_145), .B(N_72), .Y(N_80));
    OR3A \led_RNO_6[7]  (.A(sel_0_c[0]), .B(N_68), .C(N_128), .Y(
        \led_12_iv_0_a6_0_0[7] ));
    DFN1E0 \led_r[7]  (.D(N_26_i_0), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[7]_net_1 ));
    AO1 dir_RNI8NVT_0 (.A(N_185), .B(N_184), .C(dir_net_1), .Y(N_123));
    NOR2B un8_led_ADD_7x7_medium_area_I2_CO1 (.A(\led_r[3]_net_1 ), .B(
        led_0_c[2]), .Y(N109));
    OR2 \led_RNO_4[6]  (.A(N_186), .B(N_115), .Y(\led_RNO_4[6]_net_1 ));
    OR2B \led_RNO_3[3]  (.A(\led_12_iv_i_a6_1_1[3] ), .B(N_205), .Y(
        N_172));
    AXOI5 \cnt2_RNI22FD_0[1]  (.A(N_68), .B(sel_0_c[0]), .C(sel_0_c[1])
        , .Y(\led_r_11_0_o6_0[0] ));
    XNOR3 un8_led_ADD_7x7_medium_area_I22_Y_0 (.A(led_0_c[1]), .B(
        \led_r[2]_net_1 ), .C(N105), .Y(\un8_led_i_0[2] ));
    OR2A dir_RNIPLP9 (.A(dir_net_1), .B(N_69), .Y(N_186));
    AO1B un8_led_ADD_7x7_medium_area_I19_Y (.A(
        ADD_7x7_medium_area_I19_un1_Y_0), .B(N132), .C(
        ADD_7x7_medium_area_I19_Y_0), .Y(N134));
    XAI1A \led_RNO_4[3]  (.A(N108), .B(N122), .C(N_201), .Y(N_173));
    NOR3B \led_RNO[1]  (.A(\led_RNO_0[1]_net_1 ), .B(
        \led_12_iv_i_2[1] ), .C(N_79), .Y(N_48_i_0));
    AOI1B \led_RNO_3[2]  (.A(\un8_led_i_0[2] ), .B(N_201), .C(
        \led_RNO_4[2]_net_1 ), .Y(\led_12_iv_i_0[2] ));
    DFN1 dir_0 (.D(N_240), .CLK(clk_c), .Q(dir_0_net_1));
    OA1A \led_RNO_2[6]  (.A(N_203), .B(led_0_c[5]), .C(
        \led_RNO_4[6]_net_1 ), .Y(\led_12_iv_i_1[6] ));
    OA1C \led_r_RNO_0[3]  (.A(N_186), .B(N_205), .C(\led_r[2]_net_1 ), 
        .Y(N_124));
    NOR3C \led_RNO_1[7]  (.A(N_146), .B(N_145), .C(N_147), .Y(
        \led_12_iv_0_1[7] ));
    OA1C \led_r1_RNO[4]  (.A(N_66), .B(\led_r1_8_i_a6_0[4] ), .C(N_131)
        , .Y(N_34));
    XOR2 un8_led_ADD_7x7_medium_area_I4_S_0 (.A(\led_r[5]_net_1 ), .B(
        led_0_c[4]), .Y(N112));
    DFN1E1 \led_r1[7]  (.D(\led_r1_8[7] ), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[7]_net_1 ));
    AO1B \cnt2_RNIOPTQ[2]  (.A(un1_dir_2_sqmuxa_0_a2_0), .B(N_87), .C(
        N_198), .Y(un1_dir_2_sqmuxa));
    DFN1E0 \led_r[3]  (.D(N_18), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[3]_net_1 ));
    OA1C \led_r_RNO_0[6]  (.A(\led_r[6]_net_1 ), .B(dir_0_net_1), .C(
        sel_0_c[0]), .Y(\led_r_11_i_a6_0[6] ));
    GND GND_i (.Y(GND));
    NOR2A \led_RNO_0[5]  (.A(N_164), .B(N_79), .Y(\led_12_iv_i_0[5] ));
    XOR3 un8_led_ADD_7x7_medium_area_I24_Y_0 (.A(led_0_c[3]), .B(
        \led_r[4]_net_1 ), .C(N138_i), .Y(\un8_led_i_0[4] ));
    OR2 \cnt3_RNIRK[1]  (.A(\cnt3[1]_net_1 ), .B(\cnt3[0]_net_1 ), .Y(
        N_66));
    DFN1E0 \led[3]  (.D(N_63_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[3]));
    AO1A \led_r1_RNO_0[5]  (.A(dir_0_net_1), .B(\led_r1[5]_net_1 ), .C(
        \led_r1[6]_net_1 ), .Y(\led_r1_8_i_a6_0[5] ));
    VCC VCC_i_0 (.Y(VCC_0));
    OR3B \led_r_RNO[0]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(N_211)
        , .Y(\led_r_11[0] ));
    OA1 \led_RNO_3[1]  (.A(N_206), .B(\led_12_iv_i_a6_1_1[1] ), .C(
        N_151), .Y(\led_12_iv_i_0[1] ));
    NOR2B \led_RNO_2[3]  (.A(\led_r[2]_net_1 ), .B(\led_r1[4]_net_1 ), 
        .Y(N_112));
    NOR3B \led_r_RNO_0[7]  (.A(N_128), .B(N_70_i), .C(N_131), .Y(
        \led_r_11_i_1[7] ));
    OA1C \led_r1_RNO[2]  (.A(N_66), .B(\led_r1_8_i_a6_0[2] ), .C(N_131)
        , .Y(N_30));
    NOR2A \led_RNO_2[4]  (.A(\led_RNO_4[4]_net_1 ), .B(N_80), .Y(
        \led_12_iv_i_1[4] ));
    OR2A \led_RNO_5[3]  (.A(N_203), .B(led_0_c[2]), .Y(N_171));
    OR2B \led_RNO_3[4]  (.A(\led_12_iv_i_a6_1_1[4] ), .B(N_205), .Y(
        N_168));
    OR3C \led_RNO_5[7]  (.A(dir_0_net_1), .B(sel_0_c[0]), .C(N_68), .Y(
        N_147));
    NOR2B un8_led_ADD_7x7_medium_area_I4_CO1 (.A(\led_r[5]_net_1 ), .B(
        led_0_c[4]), .Y(N113));
    NOR3 \led_RNO_5[4]  (.A(\led_r1[5]_net_1 ), .B(\led_r1[4]_net_1 ), 
        .C(\led_r[4]_net_1 ), .Y(\led_12_iv_i_a6_1_1[4] ));
    DFN1E1 \cnt2[0]  (.D(cnt2_n0), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[0]_net_1 ));
    OR2B un1_rst_2_0_a2 (.A(sel_0_c[1]), .B(sel_0_c[0]), .Y(N_180));
    OA1 \led_r_RNO[2]  (.A(N_206), .B(\led_r_11_i_a6_0[2] ), .C(N_123), 
        .Y(N_16));
    NOR3C \led_RNO_1[3]  (.A(N_172), .B(N_173), .C(N_171), .Y(
        \led_12_iv_i_2[3] ));
    NOR2A \led_RNO_3[7]  (.A(sel_0_c[1]), .B(dir_0_net_1), .Y(
        \led_12_iv_0_a6_0[7] ));
    XOR2 un8_led_ADD_7x7_medium_area_I2_S_0 (.A(\led_r[3]_net_1 ), .B(
        led_0_c[2]), .Y(N108));
    XA1B \cnt2_RNO[2]  (.A(N_87), .B(\cnt2[2]_net_1 ), .C(rst_c), .Y(
        N_45));
    OR2A \led_RNO_1[5]  (.A(N_203), .B(led_0_c[4]), .Y(N_163));
    AND2 un1_cnt3_2_I_1 (.A(\cnt3[0]_net_1 ), .B(led_r38), .Y(
        \DWACT_ADD_CI_0_TMP[0] ));
    VCC VCC_i (.Y(VCC));
    NOR3B dir_RNI4SP9 (.A(sel_0_c[0]), .B(dir_net_1), .C(N_68), .Y(
        N_203));
    NOR2A \cnt3_RNO[1]  (.A(\un1_cnt3_2[1] ), .B(rst_c_0), .Y(
        \cnt3_6[1] ));
    OA1B \led_r1_RNO[6]  (.A(N_83), .B(N_106), .C(N_131), .Y(N_38));
    NOR2B \cnt2_RNIPK[1]  (.A(\cnt2[1]_net_1 ), .B(\cnt2[0]_net_1 ), 
        .Y(N_87));
    AO1A \led_r1_RNO_0[4]  (.A(dir_0_net_1), .B(\led_r1[4]_net_1 ), .C(
        \led_r1[5]_net_1 ), .Y(\led_r1_8_i_a6_0[4] ));
    OR3C \led_RNO[7]  (.A(N_143), .B(\led_12_iv_0_1[7] ), .C(N_144_i), 
        .Y(\led_12[7] ));
    AO1A \led_r1_RNO_0[2]  (.A(dir_0_net_1), .B(\led_r1[2]_net_1 ), .C(
        \led_r1[3]_net_1 ), .Y(\led_r1_8_i_a6_0[2] ));
    DFN1E1 \led_r1[2]  (.D(N_30), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[2]_net_1 ));
    DFN1E1 \led_r1[5]  (.D(N_36), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[5]_net_1 ));
    NOR2A led_r38_0_a2 (.A(sel_0_c[1]), .B(sel_0_c[0]), .Y(led_r38));
    NOR3B \led_r_RNO[5]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_126), .Y(N_22));
    NOR2 \led_r_RNIVFRC[3]  (.A(\led_r[3]_net_1 ), .B(N_69), .Y(N_205));
    XOR2 \led_r_11_i_x2[7]  (.A(sel_0_c[1]), .B(sel_0_c[0]), .Y(N_70_i)
        );
    NOR2B \led_RNO_5[6]  (.A(\led_r[5]_net_1 ), .B(\led_r1[7]_net_1 ), 
        .Y(N_115));
    DFN1E0 \led[0]  (.D(\led_12[0] ), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[0]));
    OA1C \led_r1_RNO[1]  (.A(N_66), .B(\led_r1_8_i_a6_0[1] ), .C(N_131)
        , .Y(N_28));
    DFN1E1 \led_r1[4]  (.D(N_34), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[4]_net_1 ));
    NOR2A \led_r_RNI3959[0]  (.A(\led_r[0]_net_1 ), .B(dir_net_1), .Y(
        N_211));
    OR2 cnt1_RNI02JJ_0 (.A(cnt1_net_1), .B(N_81), .Y(N_155));
    OR2B \led_RNO_1[6]  (.A(\led_12_iv_i_a6_1_1[6] ), .B(N_204), .Y(
        N_160));
    OR2A \cnt3_RNIMNED_0[1]  (.A(led_r38), .B(N_66), .Y(N_185));
    OR2 \led_RNO_4[2]  (.A(\led_12_iv_i_a6_1_1[2] ), .B(N_206), .Y(
        \led_RNO_4[2]_net_1 ));
    NOR2A dir_RNITSO9 (.A(sel_0_c[0]), .B(dir_net_1), .Y(N_201));
    OR2 \led_r_RNO_1[7]  (.A(N_89), .B(N_69), .Y(
        \led_r_RNO_1[7]_net_1 ));
    OA1C \led_r1_RNO[5]  (.A(N_66), .B(\led_r1_8_i_a6_0[5] ), .C(N_131)
        , .Y(N_36));
    NOR2B \led_RNO_2[1]  (.A(\led_r[0]_net_1 ), .B(\led_r1[2]_net_1 ), 
        .Y(N_116));
    DFN1E0 \led[2]  (.D(N_65_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[2]));
    DFN1E0 \led_r[0]  (.D(\led_r_11[0] ), .CLK(clk_c), .E(un1_rst_2), 
        .Q(\led_r[0]_net_1 ));
    MIN3 un8_led_ADD_7x7_medium_area_I20_Y (.A(led_0_c[4]), .B(
        \led_r[5]_net_1 ), .C(N132), .Y(N136_i));
    OR2A un1_rst_2_0_o6 (.A(N_180), .B(rst_c), .Y(un1_rst_3));
    NOR3B \led_r_RNO[1]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_121), .Y(N_14));
    NOR3C \led_r_RNO[7]  (.A(\led_r_11_i_1[7] ), .B(
        \led_r_RNO_1[7]_net_1 ), .C(N_130), .Y(N_26_i_0));
    NOR2B \led_RNO_6[4]  (.A(\led_r[3]_net_1 ), .B(\led_r1[5]_net_1 ), 
        .Y(N_113));
    OR2B \led_RNO_3[5]  (.A(\led_12_iv_i_a6_1_1[5] ), .B(N_204), .Y(
        N_164));
    OR3 \led_RNO_4[1]  (.A(\led_r[0]_net_1 ), .B(\led_r1[1]_net_1 ), 
        .C(\led_r1[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[1] ));
    OR2 \led_r_RNIJB8C[7]  (.A(\led_r[7]_net_1 ), .B(\led_r[6]_net_1 ), 
        .Y(N_89));
    AO1B un8_led_ADD_7x7_medium_area_I12_Y (.A(
        ADD_7x7_medium_area_I12_un1_Y_0), .B(N122), .C(
        ADD_7x7_medium_area_I12_Y_0), .Y(N132));
    XO1A \led_RNO_2[7]  (.A(N134), .B(ADD_7x7_medium_area_I27_Y_0_0), 
        .C(\led_12_iv_0_a6_0_0[7] ), .Y(N_144_i));
    OR3C \led_RNO_4[7]  (.A(led_0_c[6]), .B(sel_0_c[0]), .C(
        dir_0_net_1), .Y(N_146));
    DFN1E0 \led[6]  (.D(N_57_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[6]));
    DFN1E1 \led_r1[1]  (.D(N_28), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[1]_net_1 ));
    NOR3 \led_RNO_6[5]  (.A(\led_r1[6]_net_1 ), .B(\led_r1[5]_net_1 ), 
        .C(\led_r[4]_net_1 ), .Y(\led_12_iv_i_a6_1_1[5] ));
    XA1B \cnt2_RNO[1]  (.A(\cnt2[0]_net_1 ), .B(\cnt2[1]_net_1 ), .C(
        rst_c_0), .Y(N_43));
    OA1C \led_r1_RNO[3]  (.A(N_66), .B(\led_r1_8_i_a6_0[3] ), .C(N_131)
        , .Y(N_32));
    AO1A \cnt2_RNIG1CK[1]  (.A(N_68), .B(sel_0_c[0]), .C(un1_rst_3), 
        .Y(un1_rst_2));
    XAI1A \led_RNO_5[5]  (.A(N112), .B(N132), .C(N_201), .Y(N_165));
    DFN1E1 \cnt2[2]  (.D(N_45), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[2]_net_1 ));
    XA1 un8_led_ADD_7x7_medium_area_I12_un1_Y_0 (.A(led_0_c[3]), .B(
        \led_r[4]_net_1 ), .C(N108), .Y(
        ADD_7x7_medium_area_I12_un1_Y_0));
    OA1 \led_RNO_2[0]  (.A(\led_r1[0]_net_1 ), .B(\led_r1[1]_net_1 ), 
        .C(led_r38), .Y(\led_12_0_iv_0_a6_0[0] ));
    OR2B \led_RNO_1[0]  (.A(N_211), .B(N_70_i), .Y(N_154));
    XA1C cnt1_RNO (.A(N_81), .B(cnt1_net_1), .C(rst_c), .Y(N_52));
    NOR3C \led_RNO[5]  (.A(\led_12_iv_i_0[5] ), .B(N_163), .C(
        \led_12_iv_i_1[5] ), .Y(N_59_i_0));
    OA1 \led_RNO_2[5]  (.A(N_114), .B(N_186), .C(N_165), .Y(
        \led_12_iv_i_1[5] ));
    DFN1E0 \led[7]  (.D(\led_12[7] ), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[7]));
    XOR3 un8_led_ADD_7x7_medium_area_I26_Y_0 (.A(led_0_c[5]), .B(
        \led_r[6]_net_1 ), .C(N136_i), .Y(\un8_led_i_0[6] ));
    OR2 \led_r_RNIT7RC[1]  (.A(\led_r[1]_net_1 ), .B(N_69), .Y(N_206));
    OR2 \led_RNO_4[4]  (.A(N_186), .B(N_113), .Y(\led_RNO_4[4]_net_1 ));
    MAJ3 un8_led_ADD_7x7_medium_area_I11_Y (.A(led_0_c[1]), .B(
        \led_r[2]_net_1 ), .C(N105), .Y(N122));
    GND GND_i_0 (.Y(GND_0));
    NOR3 \led_RNO_3[6]  (.A(\led_r1[6]_net_1 ), .B(\led_r1[7]_net_1 ), 
        .C(\led_r[6]_net_1 ), .Y(\led_12_iv_i_a6_1_1[6] ));
    OA1C \led_r1_RNO_0[0]  (.A(\led_r1[0]_net_1 ), .B(dir_net_1), .C(
        \led_r1[1]_net_1 ), .Y(\led_r1_8_i_0_tz[0] ));
    OA1A \led_RNO_0[0]  (.A(\led_12_0_iv_0_a6_0[0] ), .B(dir_0_net_1), 
        .C(N_155), .Y(\led_12_0_iv_0_0[0] ));
    DFN1E0 \led_r[2]  (.D(N_16), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[2]_net_1 ));
    OR3C \cnt3_RNIMNED[1]  (.A(\cnt3[1]_net_1 ), .B(led_r38), .C(
        \cnt3[0]_net_1 ), .Y(N_198));
    DFN1E1 \cnt2[1]  (.D(N_43), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[1]_net_1 ));
    NOR2B \led_RNO_2[2]  (.A(\led_r[1]_net_1 ), .B(\led_r1[3]_net_1 ), 
        .Y(N_111));
    NOR2A \led_r1_RNO_0[6]  (.A(\led_r1[6]_net_1 ), .B(dir_net_1), .Y(
        N_106));
    DFN1E0 \led_r[5]  (.D(N_22), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[5]_net_1 ));
    AO1A \led_r1_RNO_0[1]  (.A(dir_0_net_1), .B(\led_r1[1]_net_1 ), .C(
        \led_r1[2]_net_1 ), .Y(\led_r1_8_i_a6_0[1] ));
    DFN1E0 \led[4]  (.D(N_61_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[4]));
    OA1C \led_r_RNO_0[4]  (.A(\led_r[4]_net_1 ), .B(dir_0_net_1), .C(
        sel_0_c[0]), .Y(\led_r_11_i_a6_0[4] ));
    NOR2A \led_r1_RNO[7]  (.A(N_83), .B(dir_net_1), .Y(\led_r1_8[7] ));
    OR2A cnt1_RNI02JJ (.A(cnt1_net_1), .B(N_81), .Y(N_145));
    AOI1 \led_r1_RNO[0]  (.A(\led_r1_8_i_0_tz[0] ), .B(N_66), .C(N_131)
        , .Y(N_55));
    OR3B \cnt2_RNI22FD[1]  (.A(sel_0_c[0]), .B(N_68), .C(sel_0_c[1]), 
        .Y(N_184));
    OR2 dir_0_RNI1VTA (.A(sel_0_c[1]), .B(dir_0_net_1), .Y(N_128));
    DFN1E0 \led[1]  (.D(N_48_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_0_c[1]));
    AO1A \led_r_RNO_0[2]  (.A(dir_0_net_1), .B(\led_r[2]_net_1 ), .C(
        sel_0_c[0]), .Y(\led_r_11_i_a6_0[2] ));
    OR2A \led_RNO_1[4]  (.A(N_203), .B(led_0_c[3]), .Y(N_167));
    OA1A \led_RNO_1[1]  (.A(N_203), .B(led_0_c[0]), .C(
        \led_12_iv_i_0[1] ), .Y(\led_12_iv_i_2[1] ));
    OR2 \led_RNO_0[1]  (.A(N_186), .B(N_116), .Y(\led_RNO_0[1]_net_1 ));
    OR2 \led_r_RNO_2[7]  (.A(\led_r[6]_net_1 ), .B(N_186), .Y(N_130));
    OR2B \cnt3_RNI9ON6[1]  (.A(sel_0_c[1]), .B(N_66), .Y(N_69));
    DFN1E1 \led_r1[3]  (.D(N_32), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[3]_net_1 ));
    OR2 \led_RNO_0[3]  (.A(N_186), .B(N_112), .Y(\led_RNO_0[3]_net_1 ));
    DFN1E0 \led_r[6]  (.D(N_24), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[6]_net_1 ));
    NOR3C \led_RNO[4]  (.A(\led_12_iv_i_0[4] ), .B(N_167), .C(
        \led_12_iv_i_1[4] ), .Y(N_61_i_0));
    DFN1E1 \led_r1[6]  (.D(N_38), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[6]_net_1 ));
    OR3 \led_RNO_5[2]  (.A(\led_r1[2]_net_1 ), .B(\led_r1[3]_net_1 ), 
        .C(\led_r[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[2] ));
    OR2 \led_RNO_0[2]  (.A(N_186), .B(N_111), .Y(\led_RNO_0[2]_net_1 ));
    AO1A \led_r1_RNO_0[3]  (.A(dir_0_net_1), .B(\led_r1[3]_net_1 ), .C(
        \led_r1[4]_net_1 ), .Y(\led_r1_8_i_a6_0[3] ));
    DFN1 \cnt3[0]  (.D(\cnt3_6[0] ), .CLK(clk_c), .Q(\cnt3[0]_net_1 ));
    AOI1B \led_RNO[6]  (.A(\un8_led_i_0[6] ), .B(N_201), .C(
        \led_12_iv_i_2[6] ), .Y(N_57_i_0));
    AOI1B \led_r_RNO[4]  (.A(\led_r_11_i_a6_0[4] ), .B(N_205), .C(
        N_123), .Y(N_20));
    DFN1 \cnt3[1]  (.D(\cnt3_6[1] ), .CLK(clk_c), .Q(\cnt3[1]_net_1 ));
    XOR2 un1_cnt3_2_I_8 (.A(\cnt3[0]_net_1 ), .B(led_r38), .Y(
        \DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1E0 \led_r[1]  (.D(N_14), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[1]_net_1 ));
    NOR2 dir_RNIBI23 (.A(dir_net_1), .B(N_66), .Y(N_131));
    MIN3 un8_led_ADD_7x7_medium_area_I12_Y_0 (.A(led_0_c[3]), .B(
        \led_r[4]_net_1 ), .C(N109), .Y(ADD_7x7_medium_area_I12_Y_0));
    AOI1B \led_r_RNO[6]  (.A(\led_r_11_i_a6_0[6] ), .B(N_204), .C(
        N_123), .Y(N_24));
    NOR2B un8_led_ADD_7x7_medium_area_I0_CO1 (.A(\led_r[1]_net_1 ), .B(
        led_0_c[0]), .Y(N105));
    MIN3 un8_led_ADD_7x7_medium_area_I19_Y_0 (.A(led_0_c[5]), .B(
        \led_r[6]_net_1 ), .C(N113), .Y(ADD_7x7_medium_area_I19_Y_0));
    AOI1B \led_RNO_0[4]  (.A(\un8_led_i_0[4] ), .B(N_201), .C(N_168), 
        .Y(\led_12_iv_i_0[4] ));
    NOR2A \cnt3_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        rst_c_0), .Y(\cnt3_6[0] ));
    OA1A \led_RNO_1[2]  (.A(N_203), .B(led_0_c[1]), .C(
        \led_12_iv_i_0[2] ), .Y(\led_12_iv_i_2[2] ));
    OR2A \led_r1_RNIGDO4[7]  (.A(N_66), .B(\led_r1[7]_net_1 ), .Y(N_83)
        );
    DFN1E1 \led_r1[0]  (.D(N_55), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[0]_net_1 ));
    NOR3 \cnt2_RNI7V[1]  (.A(\cnt2[2]_net_1 ), .B(\cnt2[1]_net_1 ), .C(
        \cnt2[0]_net_1 ), .Y(N_68));
    OR2A \cnt3_RNI9ON6_0[1]  (.A(sel_0_c[1]), .B(N_66), .Y(N_182));
    XOR2 un1_cnt3_2_I_10 (.A(\cnt3[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(\un1_cnt3_2[1] ));
    AOI1B \cnt2_RNITMFD[1]  (.A(sel_0_c[0]), .B(N_68), .C(N_182), .Y(
        N_71));
    NOR3B \led_RNO[2]  (.A(\led_RNO_0[2]_net_1 ), .B(
        \led_12_iv_i_2[2] ), .C(N_80), .Y(N_65_i_0));
    NOR3B \led_r_RNO[3]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_124), .Y(N_18));
    OAI1 \led_RNO_0[7]  (.A(N_83), .B(N_89), .C(\led_12_iv_0_a6_0[7] ), 
        .Y(N_143));
    MIN3 un8_led_ADD_7x7_medium_area_I21_Y (.A(led_0_c[2]), .B(
        \led_r[3]_net_1 ), .C(N122), .Y(N138_i));
    XAI1A \led_RNO_5[1]  (.A(led_0_c[0]), .B(\led_r[1]_net_1 ), .C(
        N_201), .Y(N_151));
    
endmodule


module paomadeng_paomadeng_1_1(
       sel_2_c,
       led_2_c,
       rst_c,
       rst_c_0,
       clk_c
    );
input  [1:0] sel_2_c;
output [7:0] led_2_c;
input  rst_c;
input  rst_c_0;
input  clk_c;

    wire dir_0_net_1, N_240, \led_12_iv_0_2[7] , \led_RNO_2_0[7] , 
        \led_12_iv_0_0[7] , N_143, \led_12_iv_0_a6_2_0[7] , N_145, 
        \led_12_iv_i_2[6] , \led_RNO_1[6]_net_1 , \led_12_iv_i_0[6] , 
        N_80, N_203, \led_RNO_4_0[6] , \led_12_iv_0_a6_0_0[7] , N_68, 
        \led_12_iv_i_2[5] , \led_12_iv_i_0[5] , N_79, 
        \led_RNO_5[5]_net_1 , \led_12_iv_i_2[4] , \led_12_iv_i_0[4] , 
        N_168, \led_12_iv_i_1[3] , \led_12_iv_i_a6_1_1[3] , N_205, 
        \led_RNO_4[3]_net_1 , \led_12_iv_i_0[3] , \un8_led_i_0[3] , 
        N_201, N_171, \led_12_iv_i_1[2] , \led_12_iv_i_a6_1_1[2] , 
        N_206, \led_RNO_4_0[2] , \led_12_iv_i_0[2] , N_179, 
        \led_12_iv_i_1[1] , \led_12_iv_i_a6_1_1[1] , \led_RNO_4_0[1] , 
        \led_12_iv_i_0[1] , N_151, \led_r_11_i_1[7] , N_69, N_89, 
        N_131, \led_r_11_i_0[7] , N_99, ADD_7x7_medium_area_I19_Y_0, 
        \led_r[6]_net_1 , N113, \led_12_0_iv_0_0[0] , 
        \led_12_0_iv_0_a6_0[0] , N_155, \led_r_11_i_a6_0[2] , 
        \led_r[2]_net_1 , \led_r_11_i_a6_0[4] , \led_r[4]_net_1 , 
        \led_r_11_i_a6_0[6] , \led_r[0]_net_1 , \led_r1[1]_net_1 , 
        \led_r1[2]_net_1 , \led_12_iv_i_a6_1_1[6] , \led_r1[6]_net_1 , 
        \led_r1[7]_net_1 , \led_12_iv_i_a6_1_1[5] , \led_r1[5]_net_1 , 
        \led_12_iv_i_a6_1_1[4] , \led_r1[4]_net_1 , \led_r1[3]_net_1 , 
        ADD_7x7_medium_area_I19_un1_Y_0, N112, \led_12_iv_0_a6_0[7] , 
        \led_r_11_0_o6_0[0] , ADD_7x7_medium_area_I12_Y_0, N109, 
        ADD_7x7_medium_area_I12_un1_Y_0, \led_r[3]_net_1 , N110, 
        \led_r1_8_i_a6_0[1] , \led_r1_8_i_a6_0[2] , 
        \led_r1_8_i_a6_0[3] , \led_r1_8_i_a6_0[4] , 
        \led_r1_8_i_a6_0[5] , un1_dir_2_sqmuxa_0_a2_0, \cnt2[2]_net_1 , 
        \led_r1[0]_net_1 , led_r38, N132, N122, N_48_i_0, N_65_i_0, 
        N_63_i_0, N_61_i_0, \led_RNO_0[4]_net_1 , N_169, N_59_i_0, 
        N_165, \led_RNO_1[5]_net_1 , N_57_i_0, \un8_led_i_0[6] , 
        \led_12[0] , N_154, N_123, N_26_i_0, N_130, N_204, N_198, 
        \cnt3[1]_net_1 , \cnt3[0]_net_1 , N_43, \cnt2[0]_net_1 , 
        \cnt2[1]_net_1 , \un8_led_i[7] , \led_r[7]_net_1 , N134, N_83, 
        \led_12[7] , \led_r1_8_i_0_tz[0] , N_55, N_66, \led_r1_8[7] , 
        dir_net_1, cnt1_net_1, N_81, N_182, N_184, un1_rst_2, 
        un1_rst_3, N_52, N_71, N_72, N_180, N_87, N_45, cnt2e, cnt2_n0, 
        \cnt3_6[1] , \un1_cnt3_2[1] , \cnt3_6[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , N_118, un1_dir_2_sqmuxa, 
        N_116, N_115, \led_r[5]_net_1 , N_114, N_113, N_112, N_111, 
        \led_r[1]_net_1 , N_106, N_38, N_36, N_34, N_32, N_30, N_28, 
        N_24, N_22, N_195, N_126, N_20, N_18, N_124, N_16, N_14, N_121, 
        \led_r_11[0] , N_211, N_186, N_185, N105, N106, N138_i, N136_i, 
        \DWACT_ADD_CI_0_TMP[0] , GND, VCC, GND_0, VCC_0;
    
    NOR2 \led_12_iv_0_o2_0[7]  (.A(sel_2_c[1]), .B(sel_2_c[0]), .Y(
        N_81));
    NOR2 \cnt2_RNO[0]  (.A(rst_c_0), .B(\cnt2[0]_net_1 ), .Y(cnt2_n0));
    DFN1E0 \led_r[4]  (.D(N_20), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[4]_net_1 ));
    OA1A \led_RNO_4[5]  (.A(N_203), .B(led_2_c[4]), .C(
        \led_RNO_5[5]_net_1 ), .Y(\led_12_iv_i_0[5] ));
    NOR2B \cnt2_RNITUK[1]  (.A(\cnt2[1]_net_1 ), .B(\cnt2[0]_net_1 ), 
        .Y(N_87));
    XA1B dir_RNITN111 (.A(dir_net_1), .B(un1_dir_2_sqmuxa), .C(rst_c), 
        .Y(N_240));
    NOR3B \led_RNO_0[6]  (.A(\led_RNO_1[6]_net_1 ), .B(
        \led_12_iv_i_0[6] ), .C(N_80), .Y(\led_12_iv_i_2[6] ));
    AO1A cnt2lde_0 (.A(sel_2_c[1]), .B(sel_2_c[0]), .C(rst_c_0), .Y(
        cnt2e));
    OR2A dir_RNI52PA_0 (.A(N_69), .B(dir_net_1), .Y(N_195));
    OR3C \led_RNO[0]  (.A(N_154), .B(\led_12_0_iv_0_0[0] ), .C(N_123), 
        .Y(\led_12[0] ));
    DFN1 cnt1 (.D(N_52), .CLK(clk_c), .Q(cnt1_net_1));
    DFN1E0 \led[5]  (.D(N_59_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[5]));
    OA1C \led_r_RNO_0[1]  (.A(N_186), .B(N_206), .C(\led_r[0]_net_1 ), 
        .Y(N_121));
    NOR2 \led_r_RNIR8OE[3]  (.A(\led_r[3]_net_1 ), .B(N_69), .Y(N_205));
    AOI1 \led_r_RNO_0[5]  (.A(N_204), .B(N_186), .C(\led_r[4]_net_1 ), 
        .Y(N_126));
    XA1 un8_led_ADD_7x7_medium_area_I19_un1_Y_0 (.A(led_2_c[5]), .B(
        \led_r[6]_net_1 ), .C(N112), .Y(
        ADD_7x7_medium_area_I19_un1_Y_0));
    NOR3B \led_RNO[3]  (.A(\led_12_iv_i_0[3] ), .B(\led_12_iv_i_1[3] ), 
        .C(N_79), .Y(N_63_i_0));
    OR2B \cnt3_RNI34M7[1]  (.A(sel_2_c[1]), .B(N_66), .Y(N_69));
    AO1 dir_RNISNR01_0 (.A(N_185), .B(N_184), .C(dir_net_1), .Y(N_123));
    DFN1 dir (.D(N_240), .CLK(clk_c), .Q(dir_net_1));
    XNOR3 un8_led_ADD_7x7_medium_area_I23_Y_0 (.A(led_2_c[2]), .B(
        \led_r[3]_net_1 ), .C(N122), .Y(\un8_led_i_0[3] ));
    NOR3C dir_RNIID3B (.A(N_68), .B(sel_2_c[0]), .C(dir_net_1), .Y(
        N_203));
    NOR2A un1_rst_i_a6 (.A(led_r38), .B(rst_c_0), .Y(N_118));
    OR2A dir_RNIFC24 (.A(dir_net_1), .B(N_68), .Y(N_99));
    NOR2A \led_RNO_6[7]  (.A(sel_2_c[1]), .B(dir_0_net_1), .Y(
        \led_12_iv_0_a6_0[7] ));
    DFN1E0 \led_r[7]  (.D(N_26_i_0), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[7]_net_1 ));
    OR2A \cnt3_RNI34M7_0[1]  (.A(sel_2_c[1]), .B(N_66), .Y(N_182));
    NOR2B un8_led_ADD_7x7_medium_area_I2_CO1 (.A(\led_r[3]_net_1 ), .B(
        led_2_c[2]), .Y(N109));
    OR2 \led_RNO_4[6]  (.A(\led_12_iv_i_a6_1_1[6] ), .B(N_204), .Y(
        \led_RNO_4_0[6] ));
    NOR3 \led_RNO_3[3]  (.A(\led_r1[4]_net_1 ), .B(\led_r1[3]_net_1 ), 
        .C(\led_r[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[3] ));
    AO1B un8_led_ADD_7x7_medium_area_I19_Y (.A(
        ADD_7x7_medium_area_I19_un1_Y_0), .B(N132), .C(
        ADD_7x7_medium_area_I19_Y_0), .Y(N134));
    OR2 \led_RNO_4[3]  (.A(N_186), .B(N_112), .Y(\led_RNO_4[3]_net_1 ));
    OR3 \cnt2_RNIDEV[1]  (.A(\cnt2[2]_net_1 ), .B(\cnt2[1]_net_1 ), .C(
        \cnt2[0]_net_1 ), .Y(N_68));
    NOR3B \led_RNO[1]  (.A(\led_12_iv_i_0[1] ), .B(\led_12_iv_i_1[1] ), 
        .C(N_79), .Y(N_48_i_0));
    AO1 \cnt2_RNIOL8M[1]  (.A(sel_2_c[0]), .B(N_68), .C(un1_rst_3), .Y(
        un1_rst_2));
    NOR3 \led_RNO_3[2]  (.A(\led_r1[3]_net_1 ), .B(\led_r1[2]_net_1 ), 
        .C(\led_r[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[2] ));
    DFN1 dir_0 (.D(N_240), .CLK(clk_c), .Q(dir_0_net_1));
    OA1A \led_RNO_2[6]  (.A(N_203), .B(led_2_c[5]), .C(
        \led_RNO_4_0[6] ), .Y(\led_12_iv_i_0[6] ));
    OA1C \led_r_RNO_0[3]  (.A(N_186), .B(N_205), .C(\led_r[2]_net_1 ), 
        .Y(N_124));
    NOR3C \led_RNO_1[7]  (.A(\led_RNO_2_0[7] ), .B(\led_12_iv_0_0[7] ), 
        .C(N_143), .Y(\led_12_iv_0_2[7] ));
    OA1C \led_r1_RNO[4]  (.A(N_66), .B(\led_r1_8_i_a6_0[4] ), .C(N_131)
        , .Y(N_34));
    XOR2 un8_led_ADD_7x7_medium_area_I4_S_0 (.A(\led_r[5]_net_1 ), .B(
        led_2_c[4]), .Y(N112));
    DFN1E1 \led_r1[7]  (.D(\led_r1_8[7] ), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[7]_net_1 ));
    DFN1E0 \led_r[3]  (.D(N_18), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[3]_net_1 ));
    OA1 dir_RNISNR01 (.A(N_71), .B(dir_net_1), .C(N_180), .Y(N_72));
    AO1A \led_r_RNO_0[6]  (.A(dir_0_net_1), .B(\led_r[6]_net_1 ), .C(
        sel_2_c[0]), .Y(\led_r_11_i_a6_0[6] ));
    GND GND_i (.Y(GND));
    OR2B dir_RNIQ56L1_0 (.A(N_155), .B(N_72), .Y(N_79));
    NOR2A dir_RNI5V3A (.A(sel_2_c[0]), .B(dir_net_1), .Y(N_201));
    XAI1A \led_RNO_0[5]  (.A(N112), .B(N132), .C(N_201), .Y(N_165));
    DFN1E0 \led[3]  (.D(N_63_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[3]));
    AO1A \led_r1_RNO_0[5]  (.A(dir_0_net_1), .B(\led_r1[5]_net_1 ), .C(
        \led_r1[6]_net_1 ), .Y(\led_r1_8_i_a6_0[5] ));
    VCC VCC_i_0 (.Y(VCC_0));
    OR3B \led_r_RNO[0]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(N_211)
        , .Y(\led_r_11[0] ));
    NOR3 \led_RNO_3[1]  (.A(\led_r[0]_net_1 ), .B(\led_r1[1]_net_1 ), 
        .C(\led_r1[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[1] ));
    OR2A \led_RNO_2[3]  (.A(N_203), .B(led_2_c[2]), .Y(N_171));
    OA1B \led_r_RNO_0[7]  (.A(N_69), .B(N_89), .C(N_131), .Y(
        \led_r_11_i_1[7] ));
    OA1C \led_r1_RNO[2]  (.A(N_66), .B(\led_r1_8_i_a6_0[2] ), .C(N_131)
        , .Y(N_30));
    NOR2A \led_RNO_2[4]  (.A(\led_12_iv_i_0[4] ), .B(N_80), .Y(
        \led_12_iv_i_2[4] ));
    NOR2B \led_RNO_5[3]  (.A(\led_r[2]_net_1 ), .B(\led_r1[4]_net_1 ), 
        .Y(N_112));
    NOR2B \led_RNO_3[4]  (.A(\led_r[3]_net_1 ), .B(\led_r1[5]_net_1 ), 
        .Y(N_113));
    NOR2 \led_r_RNIP0OE[1]  (.A(\led_r[1]_net_1 ), .B(N_69), .Y(N_206));
    NOR2B \led_RNO_5[7]  (.A(sel_2_c[0]), .B(led_2_c[6]), .Y(
        \led_12_iv_0_a6_2_0[7] ));
    NOR2B un8_led_ADD_7x7_medium_area_I4_CO1 (.A(\led_r[5]_net_1 ), .B(
        led_2_c[4]), .Y(N113));
    OR2B \led_RNO_5[4]  (.A(\led_12_iv_i_a6_1_1[4] ), .B(N_205), .Y(
        N_168));
    DFN1E1 \cnt2[0]  (.D(cnt2_n0), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[0]_net_1 ));
    OR2B un1_rst_2_0_a2 (.A(sel_2_c[1]), .B(sel_2_c[0]), .Y(N_180));
    AOI1B \led_r_RNO[2]  (.A(\led_r_11_i_a6_0[2] ), .B(N_206), .C(
        N_123), .Y(N_16));
    AOI1B \led_RNO_1[3]  (.A(\led_12_iv_i_a6_1_1[3] ), .B(N_205), .C(
        \led_RNO_4[3]_net_1 ), .Y(\led_12_iv_i_1[3] ));
    AOI1B \led_RNO_3[7]  (.A(\led_12_iv_0_a6_2_0[7] ), .B(dir_0_net_1), 
        .C(N_145), .Y(\led_12_iv_0_0[7] ));
    OR2A cnt1_RNIUDAK_0 (.A(N_81), .B(cnt1_net_1), .Y(N_155));
    OR2 \cnt3_RNIVUK[1]  (.A(\cnt3[1]_net_1 ), .B(\cnt3[0]_net_1 ), .Y(
        N_66));
    XA1B \cnt2_RNO[2]  (.A(N_87), .B(\cnt2[2]_net_1 ), .C(rst_c_0), .Y(
        N_45));
    XOR2 un8_led_ADD_7x7_medium_area_I3_S_0 (.A(\led_r[4]_net_1 ), .B(
        led_2_c[3]), .Y(N110));
    OR2 \led_RNO_1[5]  (.A(N_186), .B(N_114), .Y(\led_RNO_1[5]_net_1 ));
    AND2 un1_cnt3_2_I_1 (.A(\cnt3[0]_net_1 ), .B(led_r38), .Y(
        \DWACT_ADD_CI_0_TMP[0] ));
    VCC VCC_i (.Y(VCC));
    NOR2A \cnt3_RNO[1]  (.A(\un1_cnt3_2[1] ), .B(rst_c_0), .Y(
        \cnt3_6[1] ));
    OA1B \led_r1_RNO[6]  (.A(N_83), .B(N_106), .C(N_131), .Y(N_38));
    AO1A \led_r1_RNO_0[4]  (.A(dir_0_net_1), .B(\led_r1[4]_net_1 ), .C(
        \led_r1[5]_net_1 ), .Y(\led_r1_8_i_a6_0[4] ));
    OAI1 \led_RNO[7]  (.A(\un8_led_i[7] ), .B(\led_12_iv_0_a6_0_0[7] ), 
        .C(\led_12_iv_0_2[7] ), .Y(\led_12[7] ));
    AO1A \led_r1_RNO_0[2]  (.A(dir_0_net_1), .B(\led_r1[2]_net_1 ), .C(
        \led_r1[3]_net_1 ), .Y(\led_r1_8_i_a6_0[2] ));
    DFN1E1 \led_r1[2]  (.D(N_30), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[2]_net_1 ));
    DFN1E1 \led_r1[5]  (.D(N_36), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[5]_net_1 ));
    NOR2A led_r38_0_a2 (.A(sel_2_c[1]), .B(sel_2_c[0]), .Y(led_r38));
    NOR3B \led_r_RNO[5]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_126), .Y(N_22));
    OR3 \led_RNO_5[6]  (.A(\led_r1[6]_net_1 ), .B(\led_r1[7]_net_1 ), 
        .C(\led_r[6]_net_1 ), .Y(\led_12_iv_i_a6_1_1[6] ));
    OR2 \led_r_RNITGOE[5]  (.A(\led_r[5]_net_1 ), .B(N_69), .Y(N_204));
    DFN1E0 \led[0]  (.D(\led_12[0] ), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[0]));
    OA1C \led_r1_RNO[1]  (.A(N_66), .B(\led_r1_8_i_a6_0[1] ), .C(N_131)
        , .Y(N_28));
    DFN1E1 \led_r1[4]  (.D(N_34), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[4]_net_1 ));
    AXOI4 \cnt2_RNIKK1F_0[1]  (.A(N_68), .B(sel_2_c[0]), .C(sel_2_c[1])
        , .Y(\led_r_11_0_o6_0[0] ));
    OR2 \led_RNO_1[6]  (.A(N_186), .B(N_115), .Y(\led_RNO_1[6]_net_1 ));
    OR2 \led_RNO_4[2]  (.A(N_186), .B(N_111), .Y(\led_RNO_4_0[2] ));
    AXOI4 \led_r_RNO_1[7]  (.A(N_99), .B(sel_2_c[0]), .C(sel_2_c[1]), 
        .Y(\led_r_11_i_0[7] ));
    OA1C \led_r1_RNO[5]  (.A(N_66), .B(\led_r1_8_i_a6_0[5] ), .C(N_131)
        , .Y(N_36));
    OR2 \led_r_RNIN55E[7]  (.A(\led_r[7]_net_1 ), .B(\led_r[6]_net_1 ), 
        .Y(N_89));
    XAI1A \led_RNO_2[1]  (.A(led_2_c[0]), .B(\led_r[1]_net_1 ), .C(
        N_201), .Y(N_151));
    DFN1E0 \led[2]  (.D(N_65_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[2]));
    DFN1E0 \led_r[0]  (.D(\led_r_11[0] ), .CLK(clk_c), .E(un1_rst_2), 
        .Q(\led_r[0]_net_1 ));
    MIN3 un8_led_ADD_7x7_medium_area_I20_Y (.A(led_2_c[4]), .B(
        \led_r[5]_net_1 ), .C(N132), .Y(N136_i));
    OR2A un1_rst_2_0_o6 (.A(N_180), .B(rst_c_0), .Y(un1_rst_3));
    NOR3B \led_r_RNO[1]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_121), .Y(N_14));
    NOR3C \led_r_RNO[7]  (.A(\led_r_11_i_1[7] ), .B(\led_r_11_i_0[7] ), 
        .C(N_130), .Y(N_26_i_0));
    NOR3 \led_RNO_6[4]  (.A(\led_r1[5]_net_1 ), .B(\led_r1[4]_net_1 ), 
        .C(\led_r[4]_net_1 ), .Y(\led_12_iv_i_a6_1_1[4] ));
    NOR2B \led_RNO_3[5]  (.A(\led_r[4]_net_1 ), .B(\led_r1[6]_net_1 ), 
        .Y(N_114));
    OR2 \led_RNO_4[1]  (.A(N_186), .B(N_116), .Y(\led_RNO_4_0[1] ));
    OR2A \led_r1_RNIQEB6[7]  (.A(N_66), .B(\led_r1[7]_net_1 ), .Y(N_83)
        );
    AO1B un8_led_ADD_7x7_medium_area_I12_Y (.A(
        ADD_7x7_medium_area_I12_un1_Y_0), .B(N122), .C(
        ADD_7x7_medium_area_I12_Y_0), .Y(N132));
    OR2A \led_RNO_2[7]  (.A(sel_2_c[0]), .B(N_99), .Y(\led_RNO_2_0[7] )
        );
    OAI1 \led_RNO_4[7]  (.A(N_83), .B(N_89), .C(\led_12_iv_0_a6_0[7] ), 
        .Y(N_143));
    DFN1E0 \led[6]  (.D(N_57_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[6]));
    DFN1E1 \led_r1[1]  (.D(N_28), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[1]_net_1 ));
    OR3 \led_RNO_6[5]  (.A(\led_r1[6]_net_1 ), .B(\led_r1[5]_net_1 ), 
        .C(\led_r[4]_net_1 ), .Y(\led_12_iv_i_a6_1_1[5] ));
    XA1B \cnt2_RNO[1]  (.A(\cnt2[0]_net_1 ), .B(\cnt2[1]_net_1 ), .C(
        rst_c_0), .Y(N_43));
    OA1C \led_r1_RNO[3]  (.A(N_66), .B(\led_r1_8_i_a6_0[3] ), .C(N_131)
        , .Y(N_32));
    OR2 \led_RNO_5[5]  (.A(\led_12_iv_i_a6_1_1[5] ), .B(N_204), .Y(
        \led_RNO_5[5]_net_1 ));
    DFN1E1 \cnt2[2]  (.D(N_45), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[2]_net_1 ));
    XA1 un8_led_ADD_7x7_medium_area_I12_un1_Y_0 (.A(led_2_c[2]), .B(
        \led_r[3]_net_1 ), .C(N110), .Y(
        ADD_7x7_medium_area_I12_un1_Y_0));
    OAI1 \led_RNO_2[0]  (.A(\led_r1[0]_net_1 ), .B(\led_r1[1]_net_1 ), 
        .C(led_r38), .Y(\led_12_0_iv_0_a6_0[0] ));
    OA1 \led_RNO_1[0]  (.A(dir_0_net_1), .B(\led_12_0_iv_0_a6_0[0] ), 
        .C(N_155), .Y(\led_12_0_iv_0_0[0] ));
    XA1B cnt1_RNO (.A(N_81), .B(cnt1_net_1), .C(rst_c_0), .Y(N_52));
    NOR3C \led_RNO[5]  (.A(N_165), .B(\led_RNO_1[5]_net_1 ), .C(
        \led_12_iv_i_2[5] ), .Y(N_59_i_0));
    NOR2A \led_RNO_2[5]  (.A(\led_12_iv_i_0[5] ), .B(N_79), .Y(
        \led_12_iv_i_2[5] ));
    DFN1E0 \led[7]  (.D(\led_12[7] ), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[7]));
    XOR3 un8_led_ADD_7x7_medium_area_I26_Y_0 (.A(led_2_c[5]), .B(
        \led_r[6]_net_1 ), .C(N136_i), .Y(\un8_led_i_0[6] ));
    OA1A \led_RNO_4[4]  (.A(N_203), .B(led_2_c[3]), .C(N_168), .Y(
        \led_12_iv_i_0[4] ));
    MAJ3 un8_led_ADD_7x7_medium_area_I11_Y (.A(led_2_c[1]), .B(
        \led_r[2]_net_1 ), .C(N105), .Y(N122));
    GND GND_i_0 (.Y(GND_0));
    NOR2B \led_RNO_3[6]  (.A(\led_r[5]_net_1 ), .B(\led_r1[7]_net_1 ), 
        .Y(N_115));
    OA1C \led_r1_RNO_0[0]  (.A(\led_r1[0]_net_1 ), .B(dir_0_net_1), .C(
        \led_r1[1]_net_1 ), .Y(\led_r1_8_i_0_tz[0] ));
    XAI1 \led_RNO_0[0]  (.A(sel_2_c[0]), .B(sel_2_c[1]), .C(N_211), .Y(
        N_154));
    DFN1E0 \led_r[2]  (.D(N_16), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[2]_net_1 ));
    OR2A dir_RNI52PA (.A(dir_net_1), .B(N_69), .Y(N_186));
    OR3C \cnt3_RNI65NE[1]  (.A(\cnt3[1]_net_1 ), .B(led_r38), .C(
        \cnt3[0]_net_1 ), .Y(N_198));
    DFN1E1 \cnt2[1]  (.D(N_43), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[1]_net_1 ));
    XAI1A \led_RNO_2[2]  (.A(N105), .B(N106), .C(N_201), .Y(N_179));
    AO1B \cnt2_RNIQPOT[2]  (.A(un1_dir_2_sqmuxa_0_a2_0), .B(N_87), .C(
        N_198), .Y(un1_dir_2_sqmuxa));
    OR3A \cnt2_RNIKK1F[1]  (.A(sel_2_c[0]), .B(sel_2_c[1]), .C(N_68), 
        .Y(N_184));
    NOR2A \led_r1_RNO_0[6]  (.A(\led_r1[6]_net_1 ), .B(dir_net_1), .Y(
        N_106));
    XOR2 un8_led_ADD_7x7_medium_area_I1_S_0 (.A(\led_r[2]_net_1 ), .B(
        led_2_c[1]), .Y(N106));
    DFN1E0 \led_r[5]  (.D(N_22), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[5]_net_1 ));
    AO1A \led_r1_RNO_0[1]  (.A(dir_0_net_1), .B(\led_r1[1]_net_1 ), .C(
        \led_r1[2]_net_1 ), .Y(\led_r1_8_i_a6_0[1] ));
    DFN1E0 \led[4]  (.D(N_61_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[4]));
    OA1C \led_r_RNO_0[4]  (.A(\led_r[4]_net_1 ), .B(dir_0_net_1), .C(
        sel_2_c[0]), .Y(\led_r_11_i_a6_0[4] ));
    NOR2A \led_r1_RNO[7]  (.A(N_83), .B(dir_net_1), .Y(\led_r1_8[7] ));
    AOI1 \led_r1_RNO[0]  (.A(\led_r1_8_i_0_tz[0] ), .B(N_66), .C(N_131)
        , .Y(N_55));
    DFN1E0 \led[1]  (.D(N_48_i_0), .CLK(clk_c), .E(un1_rst_3), .Q(
        led_2_c[1]));
    OA1C \led_r_RNO_0[2]  (.A(\led_r[2]_net_1 ), .B(dir_0_net_1), .C(
        sel_2_c[0]), .Y(\led_r_11_i_a6_0[2] ));
    XAI1 \led_RNO_1[4]  (.A(N110), .B(N138_i), .C(N_201), .Y(N_169));
    AOI1B \led_RNO_1[1]  (.A(\led_12_iv_i_a6_1_1[1] ), .B(N_206), .C(
        \led_RNO_4_0[1] ), .Y(\led_12_iv_i_1[1] ));
    OA1A \led_RNO_0[1]  (.A(N_203), .B(led_2_c[0]), .C(N_151), .Y(
        \led_12_iv_i_0[1] ));
    OR2 \led_r_RNO_2[7]  (.A(\led_r[6]_net_1 ), .B(N_186), .Y(N_130));
    DFN1E1 \led_r1[3]  (.D(N_32), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[3]_net_1 ));
    AOI1B \led_RNO_0[3]  (.A(\un8_led_i_0[3] ), .B(N_201), .C(N_171), 
        .Y(\led_12_iv_i_0[3] ));
    DFN1E0 \led_r[6]  (.D(N_24), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[6]_net_1 ));
    NOR3C \led_RNO[4]  (.A(\led_RNO_0[4]_net_1 ), .B(N_169), .C(
        \led_12_iv_i_2[4] ), .Y(N_61_i_0));
    DFN1E1 \led_r1[6]  (.D(N_38), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[6]_net_1 ));
    NOR2B \led_RNO_5[2]  (.A(\led_r[1]_net_1 ), .B(\led_r1[3]_net_1 ), 
        .Y(N_111));
    OA1A \led_RNO_0[2]  (.A(N_203), .B(led_2_c[1]), .C(N_179), .Y(
        \led_12_iv_i_0[2] ));
    AO1A \led_r1_RNO_0[3]  (.A(dir_0_net_1), .B(\led_r1[3]_net_1 ), .C(
        \led_r1[4]_net_1 ), .Y(\led_r1_8_i_a6_0[3] ));
    DFN1 \cnt3[0]  (.D(\cnt3_6[0] ), .CLK(clk_c), .Q(\cnt3[0]_net_1 ));
    AOI1B \led_RNO[6]  (.A(\un8_led_i_0[6] ), .B(N_201), .C(
        \led_12_iv_i_2[6] ), .Y(N_57_i_0));
    AOI1B \led_r_RNO[4]  (.A(\led_r_11_i_a6_0[4] ), .B(N_205), .C(
        N_123), .Y(N_20));
    DFN1 \cnt3[1]  (.D(\cnt3_6[1] ), .CLK(clk_c), .Q(\cnt3[1]_net_1 ));
    NOR2 dir_RNI1TN3 (.A(dir_net_1), .B(N_66), .Y(N_131));
    XOR2 un1_cnt3_2_I_8 (.A(\cnt3[0]_net_1 ), .B(led_r38), .Y(
        \DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1E0 \led_r[1]  (.D(N_14), .CLK(clk_c), .E(un1_rst_2), .Q(
        \led_r[1]_net_1 ));
    MIN3 un8_led_ADD_7x7_medium_area_I12_Y_0 (.A(led_2_c[3]), .B(
        \led_r[4]_net_1 ), .C(N109), .Y(ADD_7x7_medium_area_I12_Y_0));
    OA1 \led_r_RNO[6]  (.A(N_204), .B(\led_r_11_i_a6_0[6] ), .C(N_123), 
        .Y(N_24));
    XNOR3 un8_led_ADD_7x7_medium_area_I27_Y_0 (.A(led_2_c[6]), .B(
        \led_r[7]_net_1 ), .C(N134), .Y(\un8_led_i[7] ));
    NOR2B un8_led_ADD_7x7_medium_area_I0_CO1 (.A(\led_r[1]_net_1 ), .B(
        led_2_c[0]), .Y(N105));
    MIN3 un8_led_ADD_7x7_medium_area_I19_Y_0 (.A(led_2_c[5]), .B(
        \led_r[6]_net_1 ), .C(N113), .Y(ADD_7x7_medium_area_I19_Y_0));
    OR2A \cnt3_RNI65NE_0[1]  (.A(led_r38), .B(N_66), .Y(N_185));
    OA1A \cnt2_RNIJJMF[1]  (.A(sel_2_c[0]), .B(N_68), .C(N_182), .Y(
        N_71));
    OR2 \led_RNO_0[4]  (.A(N_186), .B(N_113), .Y(\led_RNO_0[4]_net_1 ));
    NOR2A \cnt3_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        rst_c_0), .Y(\cnt3_6[0] ));
    AOI1B \led_RNO_1[2]  (.A(\led_12_iv_i_a6_1_1[2] ), .B(N_206), .C(
        \led_RNO_4_0[2] ), .Y(\led_12_iv_i_1[2] ));
    DFN1E1 \led_r1[0]  (.D(N_55), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[0]_net_1 ));
    NOR2A \led_r_RNINM4A[0]  (.A(\led_r[0]_net_1 ), .B(dir_net_1), .Y(
        N_211));
    OR2B dir_RNIQ56L1 (.A(N_145), .B(N_72), .Y(N_80));
    XOR2 un1_cnt3_2_I_10 (.A(\cnt3[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(\un1_cnt3_2[1] ));
    NOR3B \led_RNO[2]  (.A(\led_12_iv_i_0[2] ), .B(\led_12_iv_i_1[2] ), 
        .C(N_80), .Y(N_65_i_0));
    NOR3B \cnt2_RNINLCE[2]  (.A(sel_2_c[0]), .B(\cnt2[2]_net_1 ), .C(
        sel_2_c[1]), .Y(un1_dir_2_sqmuxa_0_a2_0));
    NOR3B \led_r_RNO[3]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_124), .Y(N_18));
    OR3B \led_RNO_0[7]  (.A(N_68), .B(sel_2_c[0]), .C(dir_0_net_1), .Y(
        \led_12_iv_0_a6_0_0[7] ));
    MIN3 un8_led_ADD_7x7_medium_area_I21_Y (.A(led_2_c[2]), .B(
        \led_r[3]_net_1 ), .C(N122), .Y(N138_i));
    NOR2B \led_RNO_5[1]  (.A(\led_r[0]_net_1 ), .B(\led_r1[2]_net_1 ), 
        .Y(N_116));
    OR2B cnt1_RNIUDAK (.A(cnt1_net_1), .B(N_81), .Y(N_145));
    
endmodule


module paomadeng_paomadeng_1(
       sel_1_c,
       led_1_c,
       rst_c,
       rst_c_0,
       clk_c
    );
input  [1:0] sel_1_c;
output [7:0] led_1_c;
input  rst_c;
input  rst_c_0;
input  clk_c;

    wire dir_0_net_1, dir_RNIJNJV_net_1, \led_12_iv_0_2[7] , 
        \led_RNO_2[7]_net_1 , \led_12_iv_0_0[7] , N_143, 
        \led_12_iv_0_a6_2_0[7] , N_145, \led_12_iv_i_2[6] , 
        \led_RNO_1_0[6] , \led_12_iv_i_0[6] , N_80, N_203, 
        \led_RNO_4_1[6] , \led_12_iv_0_a6_0_0[7] , N_68, 
        \led_12_iv_i_2[5] , \led_12_iv_i_0[5] , N_79, \led_RNO_5_0[5] , 
        \led_12_iv_i_2[4] , \led_12_iv_i_0[4] , N_168, 
        \led_12_iv_i_1[3] , \led_12_iv_i_a6_1_1[3] , N_205, 
        \led_RNO_4_0[3] , \led_12_iv_i_0[3] , \un8_led_i_0[3] , N_201, 
        N_171, \led_12_iv_i_1[2] , \led_12_iv_i_a6_1_1[2] , N_206, 
        \led_RNO_4_1[2] , \led_12_iv_i_0[2] , N_179, 
        \led_12_iv_i_1[1] , \led_12_iv_i_a6_1_1[1] , 
        \led_RNO_4[1]_net_1 , \led_12_iv_i_0[1] , N_151, 
        \led_r_11_i_1[7] , N_69, N_89, N_131, \led_r_11_i_0[7] , N_99, 
        ADD_7x7_medium_area_I19_Y_0, \led_r[6]_net_1 , N113, 
        \led_12_0_iv_0_0[0] , \led_12_0_iv_0_a6_0[0] , N_155, 
        \led_r_11_i_a6_0[2] , \led_r[2]_net_1 , \led_r_11_i_a6_0[4] , 
        \led_r[4]_net_1 , \led_r_11_i_a6_0[6] , \led_r[0]_net_1 , 
        \led_r1[1]_net_1 , \led_r1[2]_net_1 , \led_12_iv_i_a6_1_1[6] , 
        \led_r1[6]_net_1 , \led_r1[7]_net_1 , \led_12_iv_i_a6_1_1[5] , 
        \led_r1[5]_net_1 , \led_12_iv_i_a6_1_1[4] , \led_r1[4]_net_1 , 
        \led_r1[3]_net_1 , ADD_7x7_medium_area_I19_un1_Y_0, N112, 
        \led_12_iv_0_a6_0[7] , \led_r_11_0_o6_0[0] , 
        ADD_7x7_medium_area_I12_Y_0, N109, 
        ADD_7x7_medium_area_I12_un1_Y_0, \led_r[3]_net_1 , N110, 
        \led_r1_8_i_a6_0[1] , \led_r1_8_i_a6_0[2] , 
        \led_r1_8_i_a6_0[3] , \led_r1_8_i_a6_0[4] , 
        \led_r1_8_i_a6_0[5] , un1_dir_2_sqmuxa_0_a2_0, \cnt2[2]_net_1 , 
        \led_r1[0]_net_1 , led_r38, N132, N122, N_48_i_0, N_65_i_0, 
        N_63_i_0, N_61_i_0, \led_RNO_0_0[4] , N_169, N_59_i_0, N_165, 
        \led_RNO_1_0[5] , N_57_i_0, \un8_led_i_0[6] , \led_12[0] , 
        N_154, N_123, N_26_i_0, N_130, N_204, N_198, \cnt3[1]_net_1 , 
        \cnt3[0]_net_1 , N_43, \cnt2[0]_net_1 , \cnt2[1]_net_1 , 
        \un8_led_i[7] , \led_r[7]_net_1 , N134, N_83, \led_12[7] , 
        \led_r1_8_i_0_tz[0] , N_55, N_66, \cnt3_6[1] , I_10, 
        \cnt3_6[0] , \DWACT_ADD_CI_0_partial_sum[0] , N_118, N_121, 
        N_186, \led_r1_8[7] , dir_net_1, cnt1_net_1, N_81, N_182, 
        N_184, N_195, \led_r[5]_net_1 , \led_r[1]_net_1 , N_211, 
        \cnt2_RNIKBAL[1]_net_1 , un1_rst_2_0_o6_net_1, N_14, N_52, 
        N_71, N_72, N_180, N_87, N_45, cnt2e, cnt2_n0, 
        un1_dir_2_sqmuxa, N_116, N_115, N_114, N_113, N_112, N_111, 
        N_106, N_38, N_36, N_34, N_32, N_30, N_28, N_24, N_22, N_126, 
        N_20, N_18, N_124, N_16, \led_r_11[0] , N_185, N105, N106, 
        N138_i, N136_i, \DWACT_ADD_CI_0_TMP[0] , GND, VCC, GND_0, 
        VCC_0;
    
    OR2 \led_12_iv_0_o2_0[7]  (.A(sel_1_c[1]), .B(sel_1_c[0]), .Y(N_81)
        );
    NOR2 \cnt2_RNO[0]  (.A(rst_c), .B(\cnt2[0]_net_1 ), .Y(cnt2_n0));
    DFN1E0 \led_r[4]  (.D(N_20), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[4]_net_1 ));
    OA1A \led_RNO_4[5]  (.A(N_203), .B(led_1_c[4]), .C(
        \led_RNO_5_0[5] ), .Y(\led_12_iv_i_0[5] ));
    OR2 cnt1_RNIVNUJ_0 (.A(cnt1_net_1), .B(N_81), .Y(N_155));
    OR2A cnt1_RNIVNUJ (.A(cnt1_net_1), .B(N_81), .Y(N_145));
    NOR3B \led_RNO_0[6]  (.A(\led_RNO_1_0[6] ), .B(\led_12_iv_i_0[6] ), 
        .C(N_80), .Y(\led_12_iv_i_2[6] ));
    AO1A cnt2lde_0 (.A(sel_1_c[1]), .B(sel_1_c[0]), .C(rst_c), .Y(
        cnt2e));
    OR3C \led_RNO[0]  (.A(N_154), .B(\led_12_0_iv_0_0[0] ), .C(N_123), 
        .Y(\led_12[0] ));
    DFN1 cnt1 (.D(N_52), .CLK(clk_c), .Q(cnt1_net_1));
    DFN1E0 \led[5]  (.D(N_59_i_0), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[5]));
    OA1C \led_r_RNO_0[1]  (.A(N_186), .B(N_206), .C(\led_r[0]_net_1 ), 
        .Y(N_121));
    AOI1 \led_r_RNO_0[5]  (.A(N_204), .B(N_186), .C(\led_r[4]_net_1 ), 
        .Y(N_126));
    XA1 un8_led_ADD_7x7_medium_area_I19_un1_Y_0 (.A(led_1_c[5]), .B(
        \led_r[6]_net_1 ), .C(N112), .Y(
        ADD_7x7_medium_area_I19_un1_Y_0));
    OR2B dir_RNIHFCJ1 (.A(N_145), .B(N_72), .Y(N_80));
    NOR3B \led_RNO[3]  (.A(\led_12_iv_i_0[3] ), .B(\led_12_iv_i_1[3] ), 
        .C(N_79), .Y(N_63_i_0));
    DFN1 dir (.D(dir_RNIJNJV_net_1), .CLK(clk_c), .Q(dir_net_1));
    NOR2A dir_RNI1EU9 (.A(sel_1_c[0]), .B(dir_net_1), .Y(N_201));
    XNOR3 un8_led_ADD_7x7_medium_area_I23_Y_0 (.A(led_1_c[2]), .B(
        \led_r[3]_net_1 ), .C(N122), .Y(\un8_led_i_0[3] ));
    NOR3C dir_RNIRKEA (.A(N_68), .B(sel_1_c[0]), .C(dir_net_1), .Y(
        N_203));
    NOR2A un1_rst_i_a6 (.A(led_r38), .B(rst_c), .Y(N_118));
    NOR2A \led_RNO_6[7]  (.A(sel_1_c[1]), .B(dir_0_net_1), .Y(
        \led_12_iv_0_a6_0[7] ));
    DFN1E0 \led_r[7]  (.D(N_26_i_0), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[7]_net_1 ));
    AO1 \cnt2_RNIKBAL[1]  (.A(sel_1_c[0]), .B(N_68), .C(
        un1_rst_2_0_o6_net_1), .Y(\cnt2_RNIKBAL[1]_net_1 ));
    NOR2B un8_led_ADD_7x7_medium_area_I2_CO1 (.A(\led_r[3]_net_1 ), .B(
        led_1_c[2]), .Y(N109));
    OR2 \led_RNO_4[6]  (.A(\led_12_iv_i_a6_1_1[6] ), .B(N_204), .Y(
        \led_RNO_4_1[6] ));
    NOR2 \led_r_RNIBKPD[1]  (.A(\led_r[1]_net_1 ), .B(N_69), .Y(N_206));
    NOR3 \led_RNO_3[3]  (.A(\led_r1[4]_net_1 ), .B(\led_r1[3]_net_1 ), 
        .C(\led_r[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[3] ));
    AO1B un8_led_ADD_7x7_medium_area_I19_Y (.A(
        ADD_7x7_medium_area_I19_un1_Y_0), .B(N132), .C(
        ADD_7x7_medium_area_I19_Y_0), .Y(N134));
    OR2 \led_RNO_4[3]  (.A(N_186), .B(N_112), .Y(\led_RNO_4_0[3] ));
    NOR3B \led_RNO[1]  (.A(\led_12_iv_i_0[1] ), .B(\led_12_iv_i_1[1] ), 
        .C(N_79), .Y(N_48_i_0));
    NOR3 \led_RNO_3[2]  (.A(\led_r1[3]_net_1 ), .B(\led_r1[2]_net_1 ), 
        .C(\led_r[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[2] ));
    DFN1 dir_0 (.D(dir_RNIJNJV_net_1), .CLK(clk_c), .Q(dir_0_net_1));
    OA1A \led_RNO_2[6]  (.A(N_203), .B(led_1_c[5]), .C(
        \led_RNO_4_1[6] ), .Y(\led_12_iv_i_0[6] ));
    OA1C \led_r_RNO_0[3]  (.A(N_186), .B(N_205), .C(\led_r[2]_net_1 ), 
        .Y(N_124));
    NOR3C \led_RNO_1[7]  (.A(\led_RNO_2[7]_net_1 ), .B(
        \led_12_iv_0_0[7] ), .C(N_143), .Y(\led_12_iv_0_2[7] ));
    OA1C \led_r1_RNO[4]  (.A(N_66), .B(\led_r1_8_i_a6_0[4] ), .C(N_131)
        , .Y(N_34));
    XOR2 un8_led_ADD_7x7_medium_area_I4_S_0 (.A(\led_r[5]_net_1 ), .B(
        led_1_c[4]), .Y(N112));
    DFN1E1 \led_r1[7]  (.D(\led_r1_8[7] ), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[7]_net_1 ));
    DFN1E0 \led_r[3]  (.D(N_18), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[3]_net_1 ));
    AO1A \led_r_RNO_0[6]  (.A(dir_0_net_1), .B(\led_r[6]_net_1 ), .C(
        sel_1_c[0]), .Y(\led_r_11_i_a6_0[6] ));
    GND GND_i (.Y(GND));
    XAI1A \led_RNO_0[5]  (.A(N112), .B(N132), .C(N_201), .Y(N_165));
    OR2A \led_r1_RNI5UH5[7]  (.A(N_66), .B(\led_r1[7]_net_1 ), .Y(N_83)
        );
    DFN1E0 \led[3]  (.D(N_63_i_0), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[3]));
    AO1A \led_r1_RNO_0[5]  (.A(dir_0_net_1), .B(\led_r1[5]_net_1 ), .C(
        \led_r1[6]_net_1 ), .Y(\led_r1_8_i_a6_0[5] ));
    VCC VCC_i_0 (.Y(VCC_0));
    OR3B \led_r_RNO[0]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(N_211)
        , .Y(\led_r_11[0] ));
    NOR3 \led_RNO_3[1]  (.A(\led_r[0]_net_1 ), .B(\led_r1[1]_net_1 ), 
        .C(\led_r1[2]_net_1 ), .Y(\led_12_iv_i_a6_1_1[1] ));
    OR2A \led_RNO_2[3]  (.A(N_203), .B(led_1_c[2]), .Y(N_171));
    OA1B \led_r_RNO_0[7]  (.A(N_69), .B(N_89), .C(N_131), .Y(
        \led_r_11_i_1[7] ));
    OA1C \led_r1_RNO[2]  (.A(N_66), .B(\led_r1_8_i_a6_0[2] ), .C(N_131)
        , .Y(N_30));
    NOR2A \led_RNO_2[4]  (.A(\led_12_iv_i_0[4] ), .B(N_80), .Y(
        \led_12_iv_i_2[4] ));
    NOR2B \led_RNO_5[3]  (.A(\led_r[2]_net_1 ), .B(\led_r1[4]_net_1 ), 
        .Y(N_112));
    NOR2B \led_RNO_3[4]  (.A(\led_r[3]_net_1 ), .B(\led_r1[5]_net_1 ), 
        .Y(N_113));
    NOR2B \led_RNO_5[7]  (.A(sel_1_c[0]), .B(led_1_c[6]), .Y(
        \led_12_iv_0_a6_2_0[7] ));
    NOR2B un8_led_ADD_7x7_medium_area_I4_CO1 (.A(\led_r[5]_net_1 ), .B(
        led_1_c[4]), .Y(N113));
    OR2B \led_RNO_5[4]  (.A(\led_12_iv_i_a6_1_1[4] ), .B(N_205), .Y(
        N_168));
    DFN1E1 \cnt2[0]  (.D(cnt2_n0), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[0]_net_1 ));
    OR2B un1_rst_2_0_a2 (.A(sel_1_c[1]), .B(sel_1_c[0]), .Y(N_180));
    AOI1B \led_r_RNO[2]  (.A(\led_r_11_i_a6_0[2] ), .B(N_206), .C(
        N_123), .Y(N_16));
    AOI1B \led_RNO_1[3]  (.A(\led_12_iv_i_a6_1_1[3] ), .B(N_205), .C(
        \led_RNO_4_0[3] ), .Y(\led_12_iv_i_1[3] ));
    AOI1B \led_RNO_3[7]  (.A(\led_12_iv_0_a6_2_0[7] ), .B(dir_0_net_1), 
        .C(N_145), .Y(\led_12_iv_0_0[7] ));
    XA1B \cnt2_RNO[2]  (.A(N_87), .B(\cnt2[2]_net_1 ), .C(rst_c), .Y(
        N_45));
    XOR2 un8_led_ADD_7x7_medium_area_I3_S_0 (.A(\led_r[4]_net_1 ), .B(
        led_1_c[3]), .Y(N110));
    AXOI4 \cnt2_RNIBB8E_0[1]  (.A(N_68), .B(sel_1_c[0]), .C(sel_1_c[1])
        , .Y(\led_r_11_0_o6_0[0] ));
    OR2 \led_RNO_1[5]  (.A(N_186), .B(N_114), .Y(\led_RNO_1_0[5] ));
    AND2 un1_cnt3_2_I_1 (.A(\cnt3[0]_net_1 ), .B(led_r38), .Y(
        \DWACT_ADD_CI_0_TMP[0] ));
    VCC VCC_i (.Y(VCC));
    NOR2A \cnt3_RNO[1]  (.A(I_10), .B(rst_c_0), .Y(\cnt3_6[1] ));
    OA1B \led_r1_RNO[6]  (.A(N_83), .B(N_106), .C(N_131), .Y(N_38));
    AO1A \led_r1_RNO_0[4]  (.A(dir_0_net_1), .B(\led_r1[4]_net_1 ), .C(
        \led_r1[5]_net_1 ), .Y(\led_r1_8_i_a6_0[4] ));
    OAI1 \led_RNO[7]  (.A(\un8_led_i[7] ), .B(\led_12_iv_0_a6_0_0[7] ), 
        .C(\led_12_iv_0_2[7] ), .Y(\led_12[7] ));
    AO1A \led_r1_RNO_0[2]  (.A(dir_0_net_1), .B(\led_r1[2]_net_1 ), .C(
        \led_r1[3]_net_1 ), .Y(\led_r1_8_i_a6_0[2] ));
    DFN1E1 \led_r1[2]  (.D(N_30), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[2]_net_1 ));
    DFN1E1 \led_r1[5]  (.D(N_36), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[5]_net_1 ));
    NOR2A led_r38_0_a2 (.A(sel_1_c[1]), .B(sel_1_c[0]), .Y(led_r38));
    NOR3B \led_r_RNO[5]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_126), .Y(N_22));
    OR3 \led_RNO_5[6]  (.A(\led_r1[6]_net_1 ), .B(\led_r1[7]_net_1 ), 
        .C(\led_r[6]_net_1 ), .Y(\led_12_iv_i_a6_1_1[6] ));
    OA1 dir_RNIINDV (.A(N_71), .B(dir_net_1), .C(N_180), .Y(N_72));
    DFN1E0 \led[0]  (.D(\led_12[0] ), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[0]));
    OA1C \led_r1_RNO[1]  (.A(N_66), .B(\led_r1_8_i_a6_0[1] ), .C(N_131)
        , .Y(N_28));
    OR2A dir_RNIVB9A (.A(dir_net_1), .B(N_69), .Y(N_186));
    DFN1E1 \led_r1[4]  (.D(N_34), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[4]_net_1 ));
    OR2 \led_RNO_1[6]  (.A(N_186), .B(N_115), .Y(\led_RNO_1_0[6] ));
    OR2 \led_RNO_4[2]  (.A(N_186), .B(N_111), .Y(\led_RNO_4_1[2] ));
    AXOI4 \led_r_RNO_1[7]  (.A(N_99), .B(sel_1_c[0]), .C(sel_1_c[1]), 
        .Y(\led_r_11_i_0[7] ));
    OA1C \led_r1_RNO[5]  (.A(N_66), .B(\led_r1_8_i_a6_0[5] ), .C(N_131)
        , .Y(N_36));
    XAI1A \led_RNO_2[1]  (.A(led_1_c[0]), .B(\led_r[1]_net_1 ), .C(
        N_201), .Y(N_151));
    NOR2 dir_RNIM7D3 (.A(dir_net_1), .B(N_66), .Y(N_131));
    DFN1E0 \led[2]  (.D(N_65_i_0), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[2]));
    DFN1E0 \led_r[0]  (.D(\led_r_11[0] ), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[0]_net_1 ));
    MIN3 un8_led_ADD_7x7_medium_area_I20_Y (.A(led_1_c[4]), .B(
        \led_r[5]_net_1 ), .C(N132), .Y(N136_i));
    OR2A un1_rst_2_0_o6 (.A(N_180), .B(rst_c), .Y(un1_rst_2_0_o6_net_1)
        );
    NOR3B \led_r_RNO[1]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_121), .Y(N_14));
    OR3C \cnt3_RNIEU2E[1]  (.A(\cnt3[1]_net_1 ), .B(led_r38), .C(
        \cnt3[0]_net_1 ), .Y(N_198));
    NOR3C \led_r_RNO[7]  (.A(\led_r_11_i_1[7] ), .B(\led_r_11_i_0[7] ), 
        .C(N_130), .Y(N_26_i_0));
    NOR3 \led_RNO_6[4]  (.A(\led_r1[5]_net_1 ), .B(\led_r1[4]_net_1 ), 
        .C(\led_r[4]_net_1 ), .Y(\led_12_iv_i_a6_1_1[4] ));
    NOR2B \led_RNO_3[5]  (.A(\led_r[4]_net_1 ), .B(\led_r1[6]_net_1 ), 
        .Y(N_114));
    OR2 \led_RNO_4[1]  (.A(N_186), .B(N_116), .Y(\led_RNO_4[1]_net_1 ));
    AO1B un8_led_ADD_7x7_medium_area_I12_Y (.A(
        ADD_7x7_medium_area_I12_un1_Y_0), .B(N122), .C(
        ADD_7x7_medium_area_I12_Y_0), .Y(N132));
    OR2A \led_RNO_2[7]  (.A(sel_1_c[0]), .B(N_99), .Y(
        \led_RNO_2[7]_net_1 ));
    OAI1 \led_RNO_4[7]  (.A(N_83), .B(N_89), .C(\led_12_iv_0_a6_0[7] ), 
        .Y(N_143));
    DFN1E0 \led[6]  (.D(N_57_i_0), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[6]));
    DFN1E1 \led_r1[1]  (.D(N_28), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[1]_net_1 ));
    OR3 \led_RNO_6[5]  (.A(\led_r1[6]_net_1 ), .B(\led_r1[5]_net_1 ), 
        .C(\led_r[4]_net_1 ), .Y(\led_12_iv_i_a6_1_1[5] ));
    XA1B \cnt2_RNO[1]  (.A(\cnt2[0]_net_1 ), .B(\cnt2[1]_net_1 ), .C(
        rst_c_0), .Y(N_43));
    OA1C \led_r1_RNO[3]  (.A(N_66), .B(\led_r1_8_i_a6_0[3] ), .C(N_131)
        , .Y(N_32));
    NOR2A \led_r_RNITVK9[0]  (.A(\led_r[0]_net_1 ), .B(dir_net_1), .Y(
        N_211));
    OR3A \cnt2_RNIBB8E[1]  (.A(sel_1_c[0]), .B(sel_1_c[1]), .C(N_68), 
        .Y(N_184));
    OR2 \led_RNO_5[5]  (.A(\led_12_iv_i_a6_1_1[5] ), .B(N_204), .Y(
        \led_RNO_5_0[5] ));
    OR2B \cnt3_RNI6U67[1]  (.A(sel_1_c[1]), .B(N_66), .Y(N_69));
    DFN1E1 \cnt2[2]  (.D(N_45), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[2]_net_1 ));
    XA1 un8_led_ADD_7x7_medium_area_I12_un1_Y_0 (.A(led_1_c[2]), .B(
        \led_r[3]_net_1 ), .C(N110), .Y(
        ADD_7x7_medium_area_I12_un1_Y_0));
    OAI1 \led_RNO_2[0]  (.A(\led_r1[0]_net_1 ), .B(\led_r1[1]_net_1 ), 
        .C(led_r38), .Y(\led_12_0_iv_0_a6_0[0] ));
    OA1 \led_RNO_1[0]  (.A(dir_0_net_1), .B(\led_12_0_iv_0_a6_0[0] ), 
        .C(N_155), .Y(\led_12_0_iv_0_0[0] ));
    OR2 \cnt3_RNITPA[1]  (.A(\cnt3[1]_net_1 ), .B(\cnt3[0]_net_1 ), .Y(
        N_66));
    XA1C cnt1_RNO (.A(N_81), .B(cnt1_net_1), .C(rst_c), .Y(N_52));
    NOR3C \led_RNO[5]  (.A(N_165), .B(\led_RNO_1_0[5] ), .C(
        \led_12_iv_i_2[5] ), .Y(N_59_i_0));
    NOR2A \led_RNO_2[5]  (.A(\led_12_iv_i_0[5] ), .B(N_79), .Y(
        \led_12_iv_i_2[5] ));
    DFN1E0 \led[7]  (.D(\led_12[7] ), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[7]));
    AO1 dir_RNIINDV_0 (.A(N_185), .B(N_184), .C(dir_net_1), .Y(N_123));
    XOR3 un8_led_ADD_7x7_medium_area_I26_Y_0 (.A(led_1_c[5]), .B(
        \led_r[6]_net_1 ), .C(N136_i), .Y(\un8_led_i_0[6] ));
    OA1A \led_RNO_4[4]  (.A(N_203), .B(led_1_c[3]), .C(N_168), .Y(
        \led_12_iv_i_0[4] ));
    MAJ3 un8_led_ADD_7x7_medium_area_I11_Y (.A(led_1_c[1]), .B(
        \led_r[2]_net_1 ), .C(N105), .Y(N122));
    OR2A \cnt3_RNI6U67_0[1]  (.A(sel_1_c[1]), .B(N_66), .Y(N_182));
    OR2 \led_r_RNILO6D[7]  (.A(\led_r[7]_net_1 ), .B(\led_r[6]_net_1 ), 
        .Y(N_89));
    GND GND_i_0 (.Y(GND_0));
    NOR2B \led_RNO_3[6]  (.A(\led_r[5]_net_1 ), .B(\led_r1[7]_net_1 ), 
        .Y(N_115));
    OA1C \led_r1_RNO_0[0]  (.A(\led_r1[0]_net_1 ), .B(dir_0_net_1), .C(
        \led_r1[1]_net_1 ), .Y(\led_r1_8_i_0_tz[0] ));
    XAI1 \led_RNO_0[0]  (.A(sel_1_c[0]), .B(sel_1_c[1]), .C(N_211), .Y(
        N_154));
    OR2A dir_RNIVB9A_0 (.A(N_69), .B(dir_net_1), .Y(N_195));
    DFN1E0 \led_r[2]  (.D(N_16), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[2]_net_1 ));
    NOR3B \cnt2_RNIGHTD[2]  (.A(sel_1_c[0]), .B(\cnt2[2]_net_1 ), .C(
        sel_1_c[1]), .Y(un1_dir_2_sqmuxa_0_a2_0));
    OR2A dir_RNIJKI3 (.A(dir_net_1), .B(N_68), .Y(N_99));
    AO1B \cnt2_RNIP9BS[2]  (.A(un1_dir_2_sqmuxa_0_a2_0), .B(N_87), .C(
        N_198), .Y(un1_dir_2_sqmuxa));
    DFN1E1 \cnt2[1]  (.D(N_43), .CLK(clk_c), .E(cnt2e), .Q(
        \cnt2[1]_net_1 ));
    OR3 \cnt2_RNIQ6G[1]  (.A(\cnt2[2]_net_1 ), .B(\cnt2[1]_net_1 ), .C(
        \cnt2[0]_net_1 ), .Y(N_68));
    XAI1A \led_RNO_2[2]  (.A(N105), .B(N106), .C(N_201), .Y(N_179));
    NOR2A \led_r1_RNO_0[6]  (.A(\led_r1[6]_net_1 ), .B(dir_net_1), .Y(
        N_106));
    XOR2 un8_led_ADD_7x7_medium_area_I1_S_0 (.A(\led_r[2]_net_1 ), .B(
        led_1_c[1]), .Y(N106));
    DFN1E0 \led_r[5]  (.D(N_22), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[5]_net_1 ));
    AO1A \led_r1_RNO_0[1]  (.A(dir_0_net_1), .B(\led_r1[1]_net_1 ), .C(
        \led_r1[2]_net_1 ), .Y(\led_r1_8_i_a6_0[1] ));
    DFN1E0 \led[4]  (.D(N_61_i_0), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[4]));
    OA1C \led_r_RNO_0[4]  (.A(\led_r[4]_net_1 ), .B(dir_0_net_1), .C(
        sel_1_c[0]), .Y(\led_r_11_i_a6_0[4] ));
    NOR2A \led_r1_RNO[7]  (.A(N_83), .B(dir_net_1), .Y(\led_r1_8[7] ));
    OA1A \cnt2_RNI85JE[1]  (.A(sel_1_c[0]), .B(N_68), .C(N_182), .Y(
        N_71));
    AOI1 \led_r1_RNO[0]  (.A(\led_r1_8_i_0_tz[0] ), .B(N_66), .C(N_131)
        , .Y(N_55));
    DFN1E0 \led[1]  (.D(N_48_i_0), .CLK(clk_c), .E(
        un1_rst_2_0_o6_net_1), .Q(led_1_c[1]));
    OA1C \led_r_RNO_0[2]  (.A(\led_r[2]_net_1 ), .B(dir_0_net_1), .C(
        sel_1_c[0]), .Y(\led_r_11_i_a6_0[2] ));
    XAI1 \led_RNO_1[4]  (.A(N110), .B(N138_i), .C(N_201), .Y(N_169));
    AOI1B \led_RNO_1[1]  (.A(\led_12_iv_i_a6_1_1[1] ), .B(N_206), .C(
        \led_RNO_4[1]_net_1 ), .Y(\led_12_iv_i_1[1] ));
    OA1A \led_RNO_0[1]  (.A(N_203), .B(led_1_c[0]), .C(N_151), .Y(
        \led_12_iv_i_0[1] ));
    OR2 \led_r_RNO_2[7]  (.A(\led_r[6]_net_1 ), .B(N_186), .Y(N_130));
    DFN1E1 \led_r1[3]  (.D(N_32), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[3]_net_1 ));
    AOI1B \led_RNO_0[3]  (.A(\un8_led_i_0[3] ), .B(N_201), .C(N_171), 
        .Y(\led_12_iv_i_0[3] ));
    DFN1E0 \led_r[6]  (.D(N_24), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[6]_net_1 ));
    NOR3C \led_RNO[4]  (.A(\led_RNO_0_0[4] ), .B(N_169), .C(
        \led_12_iv_i_2[4] ), .Y(N_61_i_0));
    DFN1E1 \led_r1[6]  (.D(N_38), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[6]_net_1 ));
    NOR2B \led_RNO_5[2]  (.A(\led_r[1]_net_1 ), .B(\led_r1[3]_net_1 ), 
        .Y(N_111));
    OA1A \led_RNO_0[2]  (.A(N_203), .B(led_1_c[1]), .C(N_179), .Y(
        \led_12_iv_i_0[2] ));
    AO1A \led_r1_RNO_0[3]  (.A(dir_0_net_1), .B(\led_r1[3]_net_1 ), .C(
        \led_r1[4]_net_1 ), .Y(\led_r1_8_i_a6_0[3] ));
    DFN1 \cnt3[0]  (.D(\cnt3_6[0] ), .CLK(clk_c), .Q(\cnt3[0]_net_1 ));
    AOI1B \led_RNO[6]  (.A(\un8_led_i_0[6] ), .B(N_201), .C(
        \led_12_iv_i_2[6] ), .Y(N_57_i_0));
    AOI1B \led_r_RNO[4]  (.A(\led_r_11_i_a6_0[4] ), .B(N_205), .C(
        N_123), .Y(N_20));
    DFN1 \cnt3[1]  (.D(\cnt3_6[1] ), .CLK(clk_c), .Q(\cnt3[1]_net_1 ));
    XOR2 un1_cnt3_2_I_8 (.A(\cnt3[0]_net_1 ), .B(led_r38), .Y(
        \DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1E0 \led_r[1]  (.D(N_14), .CLK(clk_c), .E(
        \cnt2_RNIKBAL[1]_net_1 ), .Q(\led_r[1]_net_1 ));
    MIN3 un8_led_ADD_7x7_medium_area_I12_Y_0 (.A(led_1_c[3]), .B(
        \led_r[4]_net_1 ), .C(N109), .Y(ADD_7x7_medium_area_I12_Y_0));
    OA1 \led_r_RNO[6]  (.A(N_204), .B(\led_r_11_i_a6_0[6] ), .C(N_123), 
        .Y(N_24));
    XNOR3 un8_led_ADD_7x7_medium_area_I27_Y_0 (.A(led_1_c[6]), .B(
        \led_r[7]_net_1 ), .C(N134), .Y(\un8_led_i[7] ));
    NOR2B un8_led_ADD_7x7_medium_area_I0_CO1 (.A(\led_r[1]_net_1 ), .B(
        led_1_c[0]), .Y(N105));
    MIN3 un8_led_ADD_7x7_medium_area_I19_Y_0 (.A(led_1_c[5]), .B(
        \led_r[6]_net_1 ), .C(N113), .Y(ADD_7x7_medium_area_I19_Y_0));
    OR2A \cnt3_RNIEU2E_0[1]  (.A(led_r38), .B(N_66), .Y(N_185));
    OR2 \led_RNO_0[4]  (.A(N_186), .B(N_113), .Y(\led_RNO_0_0[4] ));
    NOR2A \cnt3_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        rst_c_0), .Y(\cnt3_6[0] ));
    XA1B dir_RNIJNJV (.A(dir_net_1), .B(un1_dir_2_sqmuxa), .C(rst_c), 
        .Y(dir_RNIJNJV_net_1));
    OR2B dir_RNIHFCJ1_0 (.A(N_155), .B(N_72), .Y(N_79));
    AOI1B \led_RNO_1[2]  (.A(\led_12_iv_i_a6_1_1[2] ), .B(N_206), .C(
        \led_RNO_4_1[2] ), .Y(\led_12_iv_i_1[2] ));
    NOR2 \led_r_RNIDSPD[3]  (.A(\led_r[3]_net_1 ), .B(N_69), .Y(N_205));
    DFN1E1 \led_r1[0]  (.D(N_55), .CLK(clk_c), .E(N_118), .Q(
        \led_r1[0]_net_1 ));
    XOR2 un1_cnt3_2_I_10 (.A(\cnt3[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_10));
    NOR3B \led_RNO[2]  (.A(\led_12_iv_i_0[2] ), .B(\led_12_iv_i_1[2] ), 
        .C(N_80), .Y(N_65_i_0));
    NOR3B \led_r_RNO[3]  (.A(N_195), .B(\led_r_11_0_o6_0[0] ), .C(
        N_124), .Y(N_18));
    OR3B \led_RNO_0[7]  (.A(N_68), .B(sel_1_c[0]), .C(dir_0_net_1), .Y(
        \led_12_iv_0_a6_0_0[7] ));
    NOR2B \cnt2_RNIRPA[1]  (.A(\cnt2[1]_net_1 ), .B(\cnt2[0]_net_1 ), 
        .Y(N_87));
    OR2 \led_r_RNIF4QD[5]  (.A(\led_r[5]_net_1 ), .B(N_69), .Y(N_204));
    MIN3 un8_led_ADD_7x7_medium_area_I21_Y (.A(led_1_c[2]), .B(
        \led_r[3]_net_1 ), .C(N122), .Y(N138_i));
    NOR2B \led_RNO_5[1]  (.A(\led_r[0]_net_1 ), .B(\led_r1[2]_net_1 ), 
        .Y(N_116));
    
endmodule


module XYF(
       sel_0,
       led_0,
       sel_1,
       led_1,
       sel_2,
       led_2,
       rst,
       clk
    );
input  [1:0] sel_0;
output [7:0] led_0;
input  [1:0] sel_1;
output [7:0] led_1;
input  [1:0] sel_2;
output [7:0] led_2;
input  rst;
input  clk;

    wire GND, VCC, \sel_0_c[0] , \sel_0_c[1] , \led_0_c[0] , 
        \led_0_c[1] , \led_0_c[2] , \led_0_c[3] , \led_0_c[4] , 
        \led_0_c[5] , \led_0_c[6] , \led_0_c[7] , \sel_1_c[0] , 
        \sel_1_c[1] , \led_1_c[0] , \led_1_c[1] , \led_1_c[2] , 
        \led_1_c[3] , \led_1_c[4] , \led_1_c[5] , \led_1_c[6] , 
        \led_1_c[7] , \sel_2_c[0] , \sel_2_c[1] , \led_2_c[0] , 
        \led_2_c[1] , \led_2_c[2] , \led_2_c[3] , \led_2_c[4] , 
        \led_2_c[5] , \led_2_c[6] , \led_2_c[7] , rst_c, clk_c, 
        rst_c_0, GND_0, VCC_0;
    
    OUTBUF \led_2_pad[5]  (.D(\led_2_c[5] ), .PAD(led_2[5]));
    INBUF rst_pad (.PAD(rst), .Y(rst_c));
    OUTBUF \led_1_pad[3]  (.D(\led_1_c[3] ), .PAD(led_1[3]));
    OUTBUF \led_1_pad[6]  (.D(\led_1_c[6] ), .PAD(led_1[6]));
    paomadeng_paomadeng_1_2 paomadeng_0 (.sel_0_c({\sel_0_c[1] , 
        \sel_0_c[0] }), .led_0_c({\led_0_c[7] , \led_0_c[6] , 
        \led_0_c[5] , \led_0_c[4] , \led_0_c[3] , \led_0_c[2] , 
        \led_0_c[1] , \led_0_c[0] }), .rst_c(rst_c), .rst_c_0(rst_c_0), 
        .clk_c(clk_c));
    INBUF \sel_0_pad[0]  (.PAD(sel_0[0]), .Y(\sel_0_c[0] ));
    VCC VCC_i (.Y(VCC));
    OUTBUF \led_2_pad[3]  (.D(\led_2_c[3] ), .PAD(led_2[3]));
    OUTBUF \led_2_pad[2]  (.D(\led_2_c[2] ), .PAD(led_2[2]));
    OUTBUF \led_1_pad[5]  (.D(\led_1_c[5] ), .PAD(led_1[5]));
    OUTBUF \led_0_pad[4]  (.D(\led_0_c[4] ), .PAD(led_0[4]));
    OUTBUF \led_1_pad[4]  (.D(\led_1_c[4] ), .PAD(led_1[4]));
    INBUF \sel_1_pad[0]  (.PAD(sel_1[0]), .Y(\sel_1_c[0] ));
    INBUF \sel_2_pad[1]  (.PAD(sel_2[1]), .Y(\sel_2_c[1] ));
    OUTBUF \led_0_pad[1]  (.D(\led_0_c[1] ), .PAD(led_0[1]));
    GND GND_i (.Y(GND));
    INBUF \sel_2_pad[0]  (.PAD(sel_2[0]), .Y(\sel_2_c[0] ));
    paomadeng_paomadeng_1_1 paomadeng_2 (.sel_2_c({\sel_2_c[1] , 
        \sel_2_c[0] }), .led_2_c({\led_2_c[7] , \led_2_c[6] , 
        \led_2_c[5] , \led_2_c[4] , \led_2_c[3] , \led_2_c[2] , 
        \led_2_c[1] , \led_2_c[0] }), .rst_c(rst_c), .rst_c_0(rst_c_0), 
        .clk_c(clk_c));
    BUFF rst_pad_RNI106 (.A(rst_c), .Y(rst_c_0));
    OUTBUF \led_1_pad[7]  (.D(\led_1_c[7] ), .PAD(led_1[7]));
    OUTBUF \led_2_pad[7]  (.D(\led_2_c[7] ), .PAD(led_2[7]));
    INBUF \sel_1_pad[1]  (.PAD(sel_1[1]), .Y(\sel_1_c[1] ));
    OUTBUF \led_2_pad[6]  (.D(\led_2_c[6] ), .PAD(led_2[6]));
    OUTBUF \led_1_pad[1]  (.D(\led_1_c[1] ), .PAD(led_1[1]));
    OUTBUF \led_1_pad[0]  (.D(\led_1_c[0] ), .PAD(led_1[0]));
    OUTBUF \led_0_pad[0]  (.D(\led_0_c[0] ), .PAD(led_0[0]));
    OUTBUF \led_0_pad[3]  (.D(\led_0_c[3] ), .PAD(led_0[3]));
    OUTBUF \led_0_pad[2]  (.D(\led_0_c[2] ), .PAD(led_0[2]));
    OUTBUF \led_0_pad[7]  (.D(\led_0_c[7] ), .PAD(led_0[7]));
    OUTBUF \led_2_pad[4]  (.D(\led_2_c[4] ), .PAD(led_2[4]));
    OUTBUF \led_1_pad[2]  (.D(\led_1_c[2] ), .PAD(led_1[2]));
    OUTBUF \led_2_pad[0]  (.D(\led_2_c[0] ), .PAD(led_2[0]));
    OUTBUF \led_2_pad[1]  (.D(\led_2_c[1] ), .PAD(led_2[1]));
    OUTBUF \led_0_pad[6]  (.D(\led_0_c[6] ), .PAD(led_0[6]));
    paomadeng_paomadeng_1 paomadeng_1 (.sel_1_c({\sel_1_c[1] , 
        \sel_1_c[0] }), .led_1_c({\led_1_c[7] , \led_1_c[6] , 
        \led_1_c[5] , \led_1_c[4] , \led_1_c[3] , \led_1_c[2] , 
        \led_1_c[1] , \led_1_c[0] }), .rst_c(rst_c), .rst_c_0(rst_c_0), 
        .clk_c(clk_c));
    VCC VCC_i_0 (.Y(VCC_0));
    INBUF \sel_0_pad[1]  (.PAD(sel_0[1]), .Y(\sel_0_c[1] ));
    OUTBUF \led_0_pad[5]  (.D(\led_0_c[5] ), .PAD(led_0[5]));
    GND GND_i_0 (.Y(GND_0));
    CLKBUF clk_pad (.PAD(clk), .Y(clk_c));
    
endmodule
