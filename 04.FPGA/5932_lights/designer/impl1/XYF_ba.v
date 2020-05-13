`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire \sel_0_c[0] , \sel_0_c[1] , \led_0_c[0] , \led_0_c[1] , 
        \led_0_c[2] , \led_0_c[3] , \led_0_c[4] , \led_0_c[5] , 
        \led_0_c[6] , \led_0_c[7] , \sel_1_c[0] , \sel_1_c[1] , 
        \led_1_c[0] , \led_1_c[1] , \led_1_c[2] , \led_1_c[3] , 
        \led_1_c[4] , \led_1_c[5] , \led_1_c[6] , \led_1_c[7] , 
        \sel_2_c[0] , \sel_2_c[1] , \led_2_c[0] , \led_2_c[1] , 
        \led_2_c[2] , \led_2_c[3] , \led_2_c[4] , \led_2_c[5] , 
        \led_2_c[6] , \led_2_c[7] , rst_c, clk_c, rst_c_0, 
        \paomadeng_0/dir_0_net_1 , \paomadeng_0/N_240 , 
        \paomadeng_0/led_12_iv_0_1[7] , \paomadeng_0/N_146 , 
        \paomadeng_0/N_145 , \paomadeng_0/N_147 , 
        \paomadeng_0/led_12_iv_i_2[6] , \paomadeng_0/N_160 , 
        \paomadeng_0/led_12_iv_i_1[6] , \paomadeng_0/N_80 , 
        \paomadeng_0/N_203 , \paomadeng_0/led_RNO_4[6]_net_1 , 
        \paomadeng_0/led_12_iv_0_a6_0_0[7] , \paomadeng_0/N_68 , 
        \paomadeng_0/N_128 , \paomadeng_0/led_12_iv_i_1[5] , 
        \paomadeng_0/N_114 , \paomadeng_0/N_186 , \paomadeng_0/N_165 , 
        \paomadeng_0/led_12_iv_i_0[5] , \paomadeng_0/N_79 , 
        \paomadeng_0/led_12_iv_i_1[4] , \paomadeng_0/led_12_iv_i_0[4] , 
        \paomadeng_0/un8_led_i_0[4] , \paomadeng_0/N_201 , 
        \paomadeng_0/N_168 , \paomadeng_0/led_12_iv_i_2[3] , 
        \paomadeng_0/N_172 , \paomadeng_0/N_173 , \paomadeng_0/N_171 , 
        \paomadeng_0/led_12_iv_i_2[2] , \paomadeng_0/led_12_iv_i_0[2] , 
        \paomadeng_0/un8_led_i_0[2] , \paomadeng_0/led_RNO_4[2]_net_1 , 
        \paomadeng_0/led_12_iv_i_2[1] , \paomadeng_0/led_12_iv_i_0[1] , 
        \paomadeng_0/N_206 , \paomadeng_0/led_12_iv_i_a6_1_1[1] , 
        \paomadeng_0/N_151 , \paomadeng_0/led_r_11_i_1[7] , 
        \paomadeng_0/N_70_i , \paomadeng_0/N_131 , 
        \paomadeng_0/ADD_7x7_medium_area_I27_Y_0_0 , 
        \paomadeng_0/led_r[7]_net_1 , 
        \paomadeng_0/ADD_7x7_medium_area_I19_Y_0 , 
        \paomadeng_0/led_r[6]_net_1 , \paomadeng_0/N113 , 
        \paomadeng_0/led_12_0_iv_0_0[0] , 
        \paomadeng_0/led_12_0_iv_0_a6_0[0] , \paomadeng_0/N_155 , 
        \paomadeng_0/led_12_iv_i_a6_1_1[3] , 
        \paomadeng_0/led_r1[4]_net_1 , \paomadeng_0/led_r1[3]_net_1 , 
        \paomadeng_0/led_r[2]_net_1 , \paomadeng_0/led_r_11_i_a6_0[6] , 
        \paomadeng_0/led_r_11_i_a6_0[4] , \paomadeng_0/led_r[4]_net_1 , 
        \paomadeng_0/led_r_11_i_a6_0[2] , \paomadeng_0/led_r[0]_net_1 , 
        \paomadeng_0/led_r1[1]_net_1 , \paomadeng_0/led_r1[2]_net_1 , 
        \paomadeng_0/led_12_iv_i_a6_1_1[6] , 
        \paomadeng_0/led_r1[6]_net_1 , \paomadeng_0/led_r1[7]_net_1 , 
        \paomadeng_0/led_12_iv_i_a6_1_1[5] , 
        \paomadeng_0/led_r1[5]_net_1 , 
        \paomadeng_0/led_12_iv_i_a6_1_1[4] , 
        \paomadeng_0/led_12_iv_i_a6_1_1[2] , 
        \paomadeng_0/ADD_7x7_medium_area_I19_un1_Y_0 , 
        \paomadeng_0/N112 , \paomadeng_0/led_r_11_0_o6_0[0] , 
        \paomadeng_0/ADD_7x7_medium_area_I12_Y_0 , \paomadeng_0/N109 , 
        \paomadeng_0/led_12_iv_0_a6_0[7] , 
        \paomadeng_0/ADD_7x7_medium_area_I12_un1_Y_0 , 
        \paomadeng_0/N108 , \paomadeng_0/led_r1_8_i_a6_0[5] , 
        \paomadeng_0/led_r1_8_i_a6_0[4] , 
        \paomadeng_0/led_r1_8_i_a6_0[3] , 
        \paomadeng_0/led_r1_8_i_a6_0[2] , 
        \paomadeng_0/led_r1_8_i_a6_0[1] , 
        \paomadeng_0/led_r1[0]_net_1 , \paomadeng_0/led_r38 , 
        \paomadeng_0/un1_dir_2_sqmuxa_0_a2_0 , 
        \paomadeng_0/cnt2[2]_net_1 , \paomadeng_0/N132 , 
        \paomadeng_0/N122 , \paomadeng_0/N_48_i_0 , 
        \paomadeng_0/led_RNO_0[1]_net_1 , \paomadeng_0/N_65_i_0 , 
        \paomadeng_0/led_RNO_0[2]_net_1 , \paomadeng_0/N_63_i_0 , 
        \paomadeng_0/led_RNO_0[3]_net_1 , \paomadeng_0/N_61_i_0 , 
        \paomadeng_0/N_167 , \paomadeng_0/N_59_i_0 , 
        \paomadeng_0/N_163 , \paomadeng_0/N_57_i_0 , 
        \paomadeng_0/un8_led_i_0[6] , \paomadeng_0/led_12[0] , 
        \paomadeng_0/N_154 , \paomadeng_0/N_123 , \paomadeng_0/N_205 , 
        \paomadeng_0/N_204 , \paomadeng_0/N_43 , 
        \paomadeng_0/cnt2[0]_net_1 , \paomadeng_0/cnt2[1]_net_1 , 
        \paomadeng_0/N_198 , \paomadeng_0/cnt3[1]_net_1 , 
        \paomadeng_0/cnt3[0]_net_1 , \paomadeng_0/N134 , 
        \paomadeng_0/N_144_i , \paomadeng_0/N_143 , \paomadeng_0/N_83 , 
        \paomadeng_0/N_89 , \paomadeng_0/led_12[7] , 
        \paomadeng_0/N_26_i_0 , \paomadeng_0/led_r_RNO_1[7]_net_1 , 
        \paomadeng_0/N_130 , \paomadeng_0/led_r1_8_i_0_tz[0] , 
        \paomadeng_0/dir_net_1 , \paomadeng_0/N_55 , 
        \paomadeng_0/N_66 , \paomadeng_0/N_121 , \paomadeng_0/N_185 , 
        \paomadeng_0/N_184 , \paomadeng_0/N_124 , \paomadeng_0/N_211 , 
        \paomadeng_0/led_r_11[0] , \paomadeng_0/N_195 , 
        \paomadeng_0/N_14 , \paomadeng_0/N_16 , \paomadeng_0/N_18 , 
        \paomadeng_0/N_20 , \paomadeng_0/N_22 , \paomadeng_0/N_126 , 
        \paomadeng_0/N_24 , \paomadeng_0/led_r[1]_net_1 , 
        \paomadeng_0/N_69 , \paomadeng_0/cnt3_6[1] , 
        \paomadeng_0/un1_cnt3_2[1] , \paomadeng_0/cnt3_6[0] , 
        \paomadeng_0/led_r1_8[7] , \paomadeng_0/N_30 , 
        \paomadeng_0/N_32 , \paomadeng_0/N_34 , \paomadeng_0/N_36 , 
        \paomadeng_0/N_38 , \paomadeng_0/N_106 , \paomadeng_0/N_71 , 
        \paomadeng_0/N_182 , \paomadeng_0/N_72 , \paomadeng_0/N_180 , 
        \paomadeng_0/N_81 , \paomadeng_0/N_52 , 
        \paomadeng_0/cnt1_net_1 , \paomadeng_0/N_28 , 
        \paomadeng_0/un1_rst_3 , \paomadeng_0/N_87 , 
        \paomadeng_0/un1_dir_2_sqmuxa , \paomadeng_0/N_45 , 
        \paomadeng_0/cnt2e , \paomadeng_0/cnt2_n0 , 
        \paomadeng_0/N_118 , \paomadeng_0/un1_rst_2 , 
        \paomadeng_0/led_r[5]_net_1 , \paomadeng_0/N_113 , 
        \paomadeng_0/led_r[3]_net_1 , \paomadeng_0/N136_i , 
        \paomadeng_0/N138_i , \paomadeng_0/N105 , 
        \paomadeng_2/dir_0_net_1 , \paomadeng_2/N_240 , 
        \paomadeng_2/led_12_iv_0_2[7] , \paomadeng_2/led_RNO_2_0[7] , 
        \paomadeng_2/led_12_iv_0_0[7] , \paomadeng_2/N_143 , 
        \paomadeng_2/led_12_iv_0_a6_2_0[7] , \paomadeng_2/N_145 , 
        \paomadeng_2/led_12_iv_i_2[6] , 
        \paomadeng_2/led_RNO_1[6]_net_1 , 
        \paomadeng_2/led_12_iv_i_0[6] , \paomadeng_2/N_80 , 
        \paomadeng_2/N_203 , \paomadeng_2/led_RNO_4_0[6] , 
        \paomadeng_2/led_12_iv_0_a6_0_0[7] , \paomadeng_2/N_68 , 
        \paomadeng_2/led_12_iv_i_2[5] , \paomadeng_2/led_12_iv_i_0[5] , 
        \paomadeng_2/N_79 , \paomadeng_2/led_RNO_5[5]_net_1 , 
        \paomadeng_2/led_12_iv_i_2[4] , \paomadeng_2/led_12_iv_i_0[4] , 
        \paomadeng_2/N_168 , \paomadeng_2/led_12_iv_i_1[3] , 
        \paomadeng_2/led_12_iv_i_a6_1_1[3] , \paomadeng_2/N_205 , 
        \paomadeng_2/led_RNO_4[3]_net_1 , 
        \paomadeng_2/led_12_iv_i_0[3] , \paomadeng_2/un8_led_i_0[3] , 
        \paomadeng_2/N_201 , \paomadeng_2/N_171 , 
        \paomadeng_2/led_12_iv_i_1[2] , 
        \paomadeng_2/led_12_iv_i_a6_1_1[2] , \paomadeng_2/N_206 , 
        \paomadeng_2/led_RNO_4_0[2] , \paomadeng_2/led_12_iv_i_0[2] , 
        \paomadeng_2/N_179 , \paomadeng_2/led_12_iv_i_1[1] , 
        \paomadeng_2/led_12_iv_i_a6_1_1[1] , 
        \paomadeng_2/led_RNO_4_0[1] , \paomadeng_2/led_12_iv_i_0[1] , 
        \paomadeng_2/N_151 , \paomadeng_2/led_r_11_i_1[7] , 
        \paomadeng_2/N_69 , \paomadeng_2/N_89 , \paomadeng_2/N_131 , 
        \paomadeng_2/led_r_11_i_0[7] , \paomadeng_2/N_99 , 
        \paomadeng_2/ADD_7x7_medium_area_I19_Y_0 , 
        \paomadeng_2/led_r[6]_net_1 , \paomadeng_2/N113 , 
        \paomadeng_2/led_12_0_iv_0_0[0] , 
        \paomadeng_2/led_12_0_iv_0_a6_0[0] , \paomadeng_2/N_155 , 
        \paomadeng_2/led_r_11_i_a6_0[2] , \paomadeng_2/led_r[2]_net_1 , 
        \paomadeng_2/led_r_11_i_a6_0[4] , \paomadeng_2/led_r[4]_net_1 , 
        \paomadeng_2/led_r_11_i_a6_0[6] , \paomadeng_2/led_r[0]_net_1 , 
        \paomadeng_2/led_r1[1]_net_1 , \paomadeng_2/led_r1[2]_net_1 , 
        \paomadeng_2/led_12_iv_i_a6_1_1[6] , 
        \paomadeng_2/led_r1[6]_net_1 , \paomadeng_2/led_r1[7]_net_1 , 
        \paomadeng_2/led_12_iv_i_a6_1_1[5] , 
        \paomadeng_2/led_r1[5]_net_1 , 
        \paomadeng_2/led_12_iv_i_a6_1_1[4] , 
        \paomadeng_2/led_r1[4]_net_1 , \paomadeng_2/led_r1[3]_net_1 , 
        \paomadeng_2/ADD_7x7_medium_area_I19_un1_Y_0 , 
        \paomadeng_2/N112 , \paomadeng_2/led_12_iv_0_a6_0[7] , 
        \paomadeng_2/led_r_11_0_o6_0[0] , 
        \paomadeng_2/ADD_7x7_medium_area_I12_Y_0 , \paomadeng_2/N109 , 
        \paomadeng_2/ADD_7x7_medium_area_I12_un1_Y_0 , 
        \paomadeng_2/led_r[3]_net_1 , \paomadeng_2/N110 , 
        \paomadeng_2/led_r1_8_i_a6_0[1] , 
        \paomadeng_2/led_r1_8_i_a6_0[2] , 
        \paomadeng_2/led_r1_8_i_a6_0[3] , 
        \paomadeng_2/led_r1_8_i_a6_0[4] , 
        \paomadeng_2/led_r1_8_i_a6_0[5] , 
        \paomadeng_2/un1_dir_2_sqmuxa_0_a2_0 , 
        \paomadeng_2/cnt2[2]_net_1 , \paomadeng_2/led_r1[0]_net_1 , 
        \paomadeng_2/led_r38 , \paomadeng_2/N132 , \paomadeng_2/N122 , 
        \paomadeng_2/N_48_i_0 , \paomadeng_2/N_65_i_0 , 
        \paomadeng_2/N_63_i_0 , \paomadeng_2/N_61_i_0 , 
        \paomadeng_2/led_RNO_0[4]_net_1 , \paomadeng_2/N_169 , 
        \paomadeng_2/N_59_i_0 , \paomadeng_2/N_165 , 
        \paomadeng_2/led_RNO_1[5]_net_1 , \paomadeng_2/N_57_i_0 , 
        \paomadeng_2/un8_led_i_0[6] , \paomadeng_2/led_12[0] , 
        \paomadeng_2/N_154 , \paomadeng_2/N_123 , 
        \paomadeng_2/N_26_i_0 , \paomadeng_2/N_130 , 
        \paomadeng_2/N_204 , \paomadeng_2/N_198 , 
        \paomadeng_2/cnt3[1]_net_1 , \paomadeng_2/cnt3[0]_net_1 , 
        \paomadeng_2/N_43 , \paomadeng_2/cnt2[0]_net_1 , 
        \paomadeng_2/cnt2[1]_net_1 , \paomadeng_2/un8_led_i[7] , 
        \paomadeng_2/led_r[7]_net_1 , \paomadeng_2/N134 , 
        \paomadeng_2/N_83 , \paomadeng_2/led_12[7] , 
        \paomadeng_2/led_r1_8_i_0_tz[0] , \paomadeng_2/N_55 , 
        \paomadeng_2/N_66 , \paomadeng_2/led_r1_8[7] , 
        \paomadeng_2/dir_net_1 , \paomadeng_2/cnt1_net_1 , 
        \paomadeng_2/N_81 , \paomadeng_2/N_182 , \paomadeng_2/N_184 , 
        \paomadeng_2/un1_rst_2 , \paomadeng_2/un1_rst_3 , 
        \paomadeng_2/N_52 , \paomadeng_2/N_71 , \paomadeng_2/N_72 , 
        \paomadeng_2/N_180 , \paomadeng_2/N_87 , \paomadeng_2/N_45 , 
        \paomadeng_2/cnt2e , \paomadeng_2/cnt2_n0 , 
        \paomadeng_2/cnt3_6[1] , \paomadeng_2/un1_cnt3_2[1] , 
        \paomadeng_2/cnt3_6[0] , \paomadeng_2/N_118 , 
        \paomadeng_2/un1_dir_2_sqmuxa , \paomadeng_2/led_r[5]_net_1 , 
        \paomadeng_2/led_r[1]_net_1 , \paomadeng_2/N_106 , 
        \paomadeng_2/N_38 , \paomadeng_2/N_36 , \paomadeng_2/N_34 , 
        \paomadeng_2/N_32 , \paomadeng_2/N_30 , \paomadeng_2/N_28 , 
        \paomadeng_2/N_24 , \paomadeng_2/N_22 , \paomadeng_2/N_195 , 
        \paomadeng_2/N_126 , \paomadeng_2/N_20 , \paomadeng_2/N_18 , 
        \paomadeng_2/N_124 , \paomadeng_2/N_16 , \paomadeng_2/N_14 , 
        \paomadeng_2/N_121 , \paomadeng_2/led_r_11[0] , 
        \paomadeng_2/N_211 , \paomadeng_2/N_186 , \paomadeng_2/N_185 , 
        \paomadeng_2/N105 , \paomadeng_2/N106 , \paomadeng_2/N138_i , 
        \paomadeng_2/N136_i , \paomadeng_1/dir_0_net_1 , 
        \paomadeng_1/dir_RNIJNJV_net_1 , 
        \paomadeng_1/led_12_iv_0_2[7] , 
        \paomadeng_1/led_RNO_2[7]_net_1 , 
        \paomadeng_1/led_12_iv_0_0[7] , \paomadeng_1/N_143 , 
        \paomadeng_1/led_12_iv_0_a6_2_0[7] , \paomadeng_1/N_145 , 
        \paomadeng_1/led_12_iv_i_2[6] , \paomadeng_1/led_RNO_1_0[6] , 
        \paomadeng_1/led_12_iv_i_0[6] , \paomadeng_1/N_80 , 
        \paomadeng_1/N_203 , \paomadeng_1/led_RNO_4_1[6] , 
        \paomadeng_1/led_12_iv_0_a6_0_0[7] , \paomadeng_1/N_68 , 
        \paomadeng_1/led_12_iv_i_2[5] , \paomadeng_1/led_12_iv_i_0[5] , 
        \paomadeng_1/N_79 , \paomadeng_1/led_RNO_5_0[5] , 
        \paomadeng_1/led_12_iv_i_2[4] , \paomadeng_1/led_12_iv_i_0[4] , 
        \paomadeng_1/N_168 , \paomadeng_1/led_12_iv_i_1[3] , 
        \paomadeng_1/led_12_iv_i_a6_1_1[3] , \paomadeng_1/N_205 , 
        \paomadeng_1/led_RNO_4_0[3] , \paomadeng_1/led_12_iv_i_0[3] , 
        \paomadeng_1/un8_led_i_0[3] , \paomadeng_1/N_201 , 
        \paomadeng_1/N_171 , \paomadeng_1/led_12_iv_i_1[2] , 
        \paomadeng_1/led_12_iv_i_a6_1_1[2] , \paomadeng_1/N_206 , 
        \paomadeng_1/led_RNO_4_1[2] , \paomadeng_1/led_12_iv_i_0[2] , 
        \paomadeng_1/N_179 , \paomadeng_1/led_12_iv_i_1[1] , 
        \paomadeng_1/led_12_iv_i_a6_1_1[1] , 
        \paomadeng_1/led_RNO_4[1]_net_1 , 
        \paomadeng_1/led_12_iv_i_0[1] , \paomadeng_1/N_151 , 
        \paomadeng_1/led_r_11_i_1[7] , \paomadeng_1/N_69 , 
        \paomadeng_1/N_89 , \paomadeng_1/N_131 , 
        \paomadeng_1/led_r_11_i_0[7] , \paomadeng_1/N_99 , 
        \paomadeng_1/ADD_7x7_medium_area_I19_Y_0 , 
        \paomadeng_1/led_r[6]_net_1 , \paomadeng_1/N113 , 
        \paomadeng_1/led_12_0_iv_0_0[0] , 
        \paomadeng_1/led_12_0_iv_0_a6_0[0] , \paomadeng_1/N_155 , 
        \paomadeng_1/led_r_11_i_a6_0[2] , \paomadeng_1/led_r[2]_net_1 , 
        \paomadeng_1/led_r_11_i_a6_0[4] , \paomadeng_1/led_r[4]_net_1 , 
        \paomadeng_1/led_r_11_i_a6_0[6] , \paomadeng_1/led_r[0]_net_1 , 
        \paomadeng_1/led_r1[1]_net_1 , \paomadeng_1/led_r1[2]_net_1 , 
        \paomadeng_1/led_12_iv_i_a6_1_1[6] , 
        \paomadeng_1/led_r1[6]_net_1 , \paomadeng_1/led_r1[7]_net_1 , 
        \paomadeng_1/led_12_iv_i_a6_1_1[5] , 
        \paomadeng_1/led_r1[5]_net_1 , 
        \paomadeng_1/led_12_iv_i_a6_1_1[4] , 
        \paomadeng_1/led_r1[4]_net_1 , \paomadeng_1/led_r1[3]_net_1 , 
        \paomadeng_1/ADD_7x7_medium_area_I19_un1_Y_0 , 
        \paomadeng_1/N112 , \paomadeng_1/led_12_iv_0_a6_0[7] , 
        \paomadeng_1/led_r_11_0_o6_0[0] , 
        \paomadeng_1/ADD_7x7_medium_area_I12_Y_0 , \paomadeng_1/N109 , 
        \paomadeng_1/ADD_7x7_medium_area_I12_un1_Y_0 , 
        \paomadeng_1/led_r[3]_net_1 , \paomadeng_1/N110 , 
        \paomadeng_1/led_r1_8_i_a6_0[1] , 
        \paomadeng_1/led_r1_8_i_a6_0[2] , 
        \paomadeng_1/led_r1_8_i_a6_0[3] , 
        \paomadeng_1/led_r1_8_i_a6_0[4] , 
        \paomadeng_1/led_r1_8_i_a6_0[5] , 
        \paomadeng_1/un1_dir_2_sqmuxa_0_a2_0 , 
        \paomadeng_1/cnt2[2]_net_1 , \paomadeng_1/led_r1[0]_net_1 , 
        \paomadeng_1/led_r38 , \paomadeng_1/N132 , \paomadeng_1/N122 , 
        \paomadeng_1/N_48_i_0 , \paomadeng_1/N_65_i_0 , 
        \paomadeng_1/N_63_i_0 , \paomadeng_1/N_61_i_0 , 
        \paomadeng_1/led_RNO_0_0[4] , \paomadeng_1/N_169 , 
        \paomadeng_1/N_59_i_0 , \paomadeng_1/N_165 , 
        \paomadeng_1/led_RNO_1_0[5] , \paomadeng_1/N_57_i_0 , 
        \paomadeng_1/un8_led_i_0[6] , \paomadeng_1/led_12[0] , 
        \paomadeng_1/N_154 , \paomadeng_1/N_123 , 
        \paomadeng_1/N_26_i_0 , \paomadeng_1/N_130 , 
        \paomadeng_1/N_204 , \paomadeng_1/N_198 , 
        \paomadeng_1/cnt3[1]_net_1 , \paomadeng_1/cnt3[0]_net_1 , 
        \paomadeng_1/N_43 , \paomadeng_1/cnt2[0]_net_1 , 
        \paomadeng_1/cnt2[1]_net_1 , \paomadeng_1/un8_led_i[7] , 
        \paomadeng_1/led_r[7]_net_1 , \paomadeng_1/N134 , 
        \paomadeng_1/N_83 , \paomadeng_1/led_12[7] , 
        \paomadeng_1/led_r1_8_i_0_tz[0] , \paomadeng_1/N_55 , 
        \paomadeng_1/N_66 , \paomadeng_1/cnt3_6[1] , 
        \paomadeng_1/cnt3_6[0] , \paomadeng_1/N_118 , 
        \paomadeng_1/N_121 , \paomadeng_1/N_186 , 
        \paomadeng_1/led_r1_8[7] , \paomadeng_1/dir_net_1 , 
        \paomadeng_1/cnt1_net_1 , \paomadeng_1/N_81 , 
        \paomadeng_1/N_182 , \paomadeng_1/N_184 , \paomadeng_1/N_195 , 
        \paomadeng_1/led_r[5]_net_1 , \paomadeng_1/led_r[1]_net_1 , 
        \paomadeng_1/N_211 , \paomadeng_1/cnt2_RNIKBAL[1]_net_1 , 
        \paomadeng_1/un1_rst_2_0_o6_net_1 , \paomadeng_1/N_14 , 
        \paomadeng_1/N_52 , \paomadeng_1/N_71 , \paomadeng_1/N_72 , 
        \paomadeng_1/N_180 , \paomadeng_1/N_87 , \paomadeng_1/N_45 , 
        \paomadeng_1/cnt2e , \paomadeng_1/cnt2_n0 , 
        \paomadeng_1/un1_dir_2_sqmuxa , \paomadeng_1/N_106 , 
        \paomadeng_1/N_38 , \paomadeng_1/N_36 , \paomadeng_1/N_34 , 
        \paomadeng_1/N_32 , \paomadeng_1/N_30 , \paomadeng_1/N_28 , 
        \paomadeng_1/N_24 , \paomadeng_1/N_22 , \paomadeng_1/N_126 , 
        \paomadeng_1/N_20 , \paomadeng_1/N_18 , \paomadeng_1/N_124 , 
        \paomadeng_1/N_16 , \paomadeng_1/led_r_11[0] , 
        \paomadeng_1/N_185 , \paomadeng_1/N105 , \paomadeng_1/N106 , 
        \paomadeng_1/N138_i , \paomadeng_1/N136_i , 
        \paomadeng_1/DWACT_ADD_CI_0_TMP[0] , \led_0_pad[0]/U0/NET1 , 
        \led_0_pad[0]/U0/NET2 , \led_2_pad[7]/U0/NET1 , 
        \led_2_pad[7]/U0/NET2 , \led_0_pad[4]/U0/NET1 , 
        \led_0_pad[4]/U0/NET2 , \led_1_pad[1]/U0/NET1 , 
        \led_1_pad[1]/U0/NET2 , \led_1_pad[7]/U0/NET1 , 
        \led_1_pad[7]/U0/NET2 , \led_1_pad[6]/U0/NET1 , 
        \led_1_pad[6]/U0/NET2 , \sel_0_pad[0]/U0/NET1 , 
        \sel_2_pad[0]/U0/NET1 , \led_2_pad[2]/U0/NET1 , 
        \led_2_pad[2]/U0/NET2 , \led_2_pad[5]/U0/NET1 , 
        \led_2_pad[5]/U0/NET2 , \clk_pad/U0/NET1 , 
        \sel_1_pad[1]/U0/NET1 , \led_1_pad[4]/U0/NET1 , 
        \led_1_pad[4]/U0/NET2 , \sel_1_pad[0]/U0/NET1 , 
        \led_2_pad[4]/U0/NET1 , \led_2_pad[4]/U0/NET2 , 
        \led_0_pad[3]/U0/NET1 , \led_0_pad[3]/U0/NET2 , 
        \sel_2_pad[1]/U0/NET1 , \led_1_pad[5]/U0/NET1 , 
        \led_1_pad[5]/U0/NET2 , \led_1_pad[0]/U0/NET1 , 
        \led_1_pad[0]/U0/NET2 , \rst_pad/U0/NET1 , 
        \led_0_pad[6]/U0/NET1 , \led_0_pad[6]/U0/NET2 , 
        \led_0_pad[1]/U0/NET1 , \led_0_pad[1]/U0/NET2 , 
        \led_2_pad[3]/U0/NET1 , \led_2_pad[3]/U0/NET2 , 
        \sel_0_pad[1]/U0/NET1 , \led_2_pad[1]/U0/NET1 , 
        \led_2_pad[1]/U0/NET2 , \led_1_pad[3]/U0/NET1 , 
        \led_1_pad[3]/U0/NET2 , \led_0_pad[7]/U0/NET1 , 
        \led_0_pad[7]/U0/NET2 , \led_0_pad[2]/U0/NET1 , 
        \led_0_pad[2]/U0/NET2 , \led_1_pad[2]/U0/NET1 , 
        \led_1_pad[2]/U0/NET2 , \led_2_pad[0]/U0/NET1 , 
        \led_2_pad[0]/U0/NET2 , \led_0_pad[5]/U0/NET1 , 
        \led_0_pad[5]/U0/NET2 , \led_2_pad[6]/U0/NET1 , 
        \led_2_pad[6]/U0/NET2 , VCC, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    OAI1 \paomadeng_1/led_RNO_2[0]  (.A(\paomadeng_1/led_r1[0]_net_1 ), 
        .B(\paomadeng_1/led_r1[1]_net_1 ), .C(\paomadeng_1/led_r38 ), 
        .Y(\paomadeng_1/led_12_0_iv_0_a6_0[0] ));
    NOR3B \paomadeng_1/led_RNO_0[6]  (.A(\paomadeng_1/led_RNO_1_0[6] ), 
        .B(\paomadeng_1/led_12_iv_i_0[6] ), .C(\paomadeng_1/N_80 ), .Y(
        \paomadeng_1/led_12_iv_i_2[6] ));
    IOTRI_OB_EB \led_1_pad[4]/U0/U1  (.D(\led_1_c[4] ), .E(VCC), .DOUT(
        \led_1_pad[4]/U0/NET1 ), .EOUT(\led_1_pad[4]/U0/NET2 ));
    DFN1E0 \paomadeng_0/led[3]  (.D(\paomadeng_0/N_63_i_0 ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[3] ));
    OR3A \paomadeng_2/cnt2_RNIKK1F[1]  (.A(\sel_2_c[0] ), .B(
        \sel_2_c[1] ), .C(\paomadeng_2/N_68 ), .Y(\paomadeng_2/N_184 ));
    OR2A \paomadeng_1/cnt3_RNI6U67_0[1]  (.A(\sel_1_c[1] ), .B(
        \paomadeng_1/N_66 ), .Y(\paomadeng_1/N_182 ));
    BUFF rst_pad_RNI106 (.A(rst_c), .Y(rst_c_0));
    OR2B \paomadeng_1/dir_RNIHFCJ1_0  (.A(\paomadeng_1/N_155 ), .B(
        \paomadeng_1/N_72 ), .Y(\paomadeng_1/N_79 ));
    NOR3B \paomadeng_0/led_RNO[2]  (.A(
        \paomadeng_0/led_RNO_0[2]_net_1 ), .B(
        \paomadeng_0/led_12_iv_i_2[2] ), .C(\paomadeng_0/N_80 ), .Y(
        \paomadeng_0/N_65_i_0 ));
    OA1C \paomadeng_0/led_r1_RNO[3]  (.A(\paomadeng_0/N_66 ), .B(
        \paomadeng_0/led_r1_8_i_a6_0[3] ), .C(\paomadeng_0/N_131 ), .Y(
        \paomadeng_0/N_32 ));
    DFN1E0 \paomadeng_2/led_r[5]  (.D(\paomadeng_2/N_22 ), .CLK(clk_c), 
        .E(\paomadeng_2/un1_rst_2 ), .Q(\paomadeng_2/led_r[5]_net_1 ));
    OR2B \paomadeng_2/led_RNO_5[4]  (.A(
        \paomadeng_2/led_12_iv_i_a6_1_1[4] ), .B(\paomadeng_2/N_205 ), 
        .Y(\paomadeng_2/N_168 ));
    IOPAD_IN \sel_0_pad[1]/U0/U0  (.PAD(sel_0[1]), .Y(
        \sel_0_pad[1]/U0/NET1 ));
    NOR3B \paomadeng_1/led_r_RNO[3]  (.A(\paomadeng_1/N_195 ), .B(
        \paomadeng_1/led_r_11_0_o6_0[0] ), .C(\paomadeng_1/N_124 ), .Y(
        \paomadeng_1/N_18 ));
    NOR2A \paomadeng_2/led_r_RNINM4A[0]  (.A(
        \paomadeng_2/led_r[0]_net_1 ), .B(\paomadeng_2/dir_net_1 ), .Y(
        \paomadeng_2/N_211 ));
    DFN1E1 \paomadeng_0/led_r1[1]  (.D(\paomadeng_0/N_28 ), .CLK(clk_c)
        , .E(\paomadeng_0/N_118 ), .Q(\paomadeng_0/led_r1[1]_net_1 ));
    OAI1 \paomadeng_1/led_RNO[7]  (.A(\paomadeng_1/un8_led_i[7] ), .B(
        \paomadeng_1/led_12_iv_0_a6_0_0[7] ), .C(
        \paomadeng_1/led_12_iv_0_2[7] ), .Y(\paomadeng_1/led_12[7] ));
    XAI1 \paomadeng_2/led_RNO_0[0]  (.A(\sel_2_c[0] ), .B(\sel_2_c[1] )
        , .C(\paomadeng_2/N_211 ), .Y(\paomadeng_2/N_154 ));
    NOR2 \paomadeng_1/led_r_RNIDSPD[3]  (.A(
        \paomadeng_1/led_r[3]_net_1 ), .B(\paomadeng_1/N_69 ), .Y(
        \paomadeng_1/N_205 ));
    NOR3B \paomadeng_1/led_r_RNO[5]  (.A(\paomadeng_1/N_195 ), .B(
        \paomadeng_1/led_r_11_0_o6_0[0] ), .C(\paomadeng_1/N_126 ), .Y(
        \paomadeng_1/N_22 ));
    IOPAD_TRI \led_2_pad[7]/U0/U0  (.D(\led_2_pad[7]/U0/NET1 ), .E(
        \led_2_pad[7]/U0/NET2 ), .PAD(led_2[7]));
    DFN1E0 \paomadeng_1/led_r[4]  (.D(\paomadeng_1/N_20 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[4]_net_1 ));
    NOR3B \paomadeng_2/led_r_RNO[5]  (.A(\paomadeng_2/N_195 ), .B(
        \paomadeng_2/led_r_11_0_o6_0[0] ), .C(\paomadeng_2/N_126 ), .Y(
        \paomadeng_2/N_22 ));
    XA1 \paomadeng_0/un8_led_ADD_7x7_medium_area_I12_un1_Y_0  (.A(
        \led_0_c[3] ), .B(\paomadeng_0/led_r[4]_net_1 ), .C(
        \paomadeng_0/N108 ), .Y(
        \paomadeng_0/ADD_7x7_medium_area_I12_un1_Y_0 ));
    IOPAD_TRI \led_2_pad[5]/U0/U0  (.D(\led_2_pad[5]/U0/NET1 ), .E(
        \led_2_pad[5]/U0/NET2 ), .PAD(led_2[5]));
    AO1B \paomadeng_1/un8_led_ADD_7x7_medium_area_I19_Y  (.A(
        \paomadeng_1/ADD_7x7_medium_area_I19_un1_Y_0 ), .B(
        \paomadeng_1/N132 ), .C(
        \paomadeng_1/ADD_7x7_medium_area_I19_Y_0 ), .Y(
        \paomadeng_1/N134 ));
    OR3 \paomadeng_0/led_RNO_4[1]  (.A(\paomadeng_0/led_r[0]_net_1 ), 
        .B(\paomadeng_0/led_r1[1]_net_1 ), .C(
        \paomadeng_0/led_r1[2]_net_1 ), .Y(
        \paomadeng_0/led_12_iv_i_a6_1_1[1] ));
    DFN1E0 \paomadeng_0/led[0]  (.D(\paomadeng_0/led_12[0] ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[0] ));
    NOR3B \paomadeng_2/led_RNO[2]  (.A(\paomadeng_2/led_12_iv_i_0[2] ), 
        .B(\paomadeng_2/led_12_iv_i_1[2] ), .C(\paomadeng_2/N_80 ), .Y(
        \paomadeng_2/N_65_i_0 ));
    OA1A \paomadeng_2/cnt2_RNIJJMF[1]  (.A(\sel_2_c[0] ), .B(
        \paomadeng_2/N_68 ), .C(\paomadeng_2/N_182 ), .Y(
        \paomadeng_2/N_71 ));
    NOR3C \paomadeng_1/led_RNO[5]  (.A(\paomadeng_1/N_165 ), .B(
        \paomadeng_1/led_RNO_1_0[5] ), .C(
        \paomadeng_1/led_12_iv_i_2[5] ), .Y(\paomadeng_1/N_59_i_0 ));
    OR3C \paomadeng_0/led_RNO[7]  (.A(\paomadeng_0/N_143 ), .B(
        \paomadeng_0/led_12_iv_0_1[7] ), .C(\paomadeng_0/N_144_i ), .Y(
        \paomadeng_0/led_12[7] ));
    XAI1 \paomadeng_2/led_RNO_1[4]  (.A(\paomadeng_2/N110 ), .B(
        \paomadeng_2/N138_i ), .C(\paomadeng_2/N_201 ), .Y(
        \paomadeng_2/N_169 ));
    DFN1E0 \paomadeng_2/led[0]  (.D(\paomadeng_2/led_12[0] ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[0] ));
    AO1A \paomadeng_1/led_r1_RNO_0[4]  (.A(\paomadeng_1/dir_0_net_1 ), 
        .B(\paomadeng_1/led_r1[4]_net_1 ), .C(
        \paomadeng_1/led_r1[5]_net_1 ), .Y(
        \paomadeng_1/led_r1_8_i_a6_0[4] ));
    OA1A \paomadeng_1/led_RNO_4[4]  (.A(\paomadeng_1/N_203 ), .B(
        \led_1_c[3] ), .C(\paomadeng_1/N_168 ), .Y(
        \paomadeng_1/led_12_iv_i_0[4] ));
    OA1A \paomadeng_1/led_RNO_0[1]  (.A(\paomadeng_1/N_203 ), .B(
        \led_1_c[0] ), .C(\paomadeng_1/N_151 ), .Y(
        \paomadeng_1/led_12_iv_i_0[1] ));
    MIN3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I12_Y_0  (.A(
        \led_0_c[3] ), .B(\paomadeng_0/led_r[4]_net_1 ), .C(
        \paomadeng_0/N109 ), .Y(
        \paomadeng_0/ADD_7x7_medium_area_I12_Y_0 ));
    AO1 \paomadeng_1/led_RNO_4[3]  (.A(\paomadeng_1/led_r[2]_net_1 ), 
        .B(\paomadeng_1/led_r1[4]_net_1 ), .C(\paomadeng_1/N_186 ), .Y(
        \paomadeng_1/led_RNO_4_0[3] ));
    AO1A \paomadeng_0/led_r1_RNO_0[1]  (.A(\paomadeng_0/dir_0_net_1 ), 
        .B(\paomadeng_0/led_r1[1]_net_1 ), .C(
        \paomadeng_0/led_r1[2]_net_1 ), .Y(
        \paomadeng_0/led_r1_8_i_a6_0[1] ));
    DFN1E0 \paomadeng_0/led_r[4]  (.D(\paomadeng_0/N_20 ), .CLK(clk_c), 
        .E(\paomadeng_0/un1_rst_2 ), .Q(\paomadeng_0/led_r[4]_net_1 ));
    NOR3B \paomadeng_0/led_RNO_0[6]  (.A(\paomadeng_0/N_160 ), .B(
        \paomadeng_0/led_12_iv_i_1[6] ), .C(\paomadeng_0/N_80 ), .Y(
        \paomadeng_0/led_12_iv_i_2[6] ));
    NOR2A \paomadeng_2/cnt3_RNO[1]  (.A(\paomadeng_2/un1_cnt3_2[1] ), 
        .B(rst_c_0), .Y(\paomadeng_2/cnt3_6[1] ));
    OA1C \paomadeng_1/led_r1_RNO[2]  (.A(\paomadeng_1/N_66 ), .B(
        \paomadeng_1/led_r1_8_i_a6_0[2] ), .C(\paomadeng_1/N_131 ), .Y(
        \paomadeng_1/N_30 ));
    DFN1E0 \paomadeng_0/led_r[1]  (.D(\paomadeng_0/N_14 ), .CLK(clk_c), 
        .E(\paomadeng_0/un1_rst_2 ), .Q(\paomadeng_0/led_r[1]_net_1 ));
    OA1 \paomadeng_0/led_RNO_3[1]  (.A(\paomadeng_0/N_206 ), .B(
        \paomadeng_0/led_12_iv_i_a6_1_1[1] ), .C(\paomadeng_0/N_151 ), 
        .Y(\paomadeng_0/led_12_iv_i_0[1] ));
    OA1 \paomadeng_1/led_r_RNO[6]  (.A(\paomadeng_1/N_204 ), .B(
        \paomadeng_1/led_r_11_i_a6_0[6] ), .C(\paomadeng_1/N_123 ), .Y(
        \paomadeng_1/N_24 ));
    NOR2B \paomadeng_0/cnt2_RNIPK[1]  (.A(\paomadeng_0/cnt2[1]_net_1 ), 
        .B(\paomadeng_0/cnt2[0]_net_1 ), .Y(\paomadeng_0/N_87 ));
    NOR2 \paomadeng_2/cnt2_RNO[0]  (.A(rst_c_0), .B(
        \paomadeng_2/cnt2[0]_net_1 ), .Y(\paomadeng_2/cnt2_n0 ));
    CLKIO \clk_pad/U0/U1  (.A(\clk_pad/U0/NET1 ), .Y(clk_c));
    XOR2 \paomadeng_0/un8_led_ADD_7x7_medium_area_I4_S_0  (.A(
        \paomadeng_0/led_r[5]_net_1 ), .B(\led_0_c[4] ), .Y(
        \paomadeng_0/N112 ));
    IOPAD_TRI \led_0_pad[4]/U0/U0  (.D(\led_0_pad[4]/U0/NET1 ), .E(
        \led_0_pad[4]/U0/NET2 ), .PAD(led_0[4]));
    NOR2A \paomadeng_2/un1_rst_i_a6  (.A(\paomadeng_2/led_r38 ), .B(
        rst_c_0), .Y(\paomadeng_2/N_118 ));
    OR2 \paomadeng_0/dir_0_RNI1VTA  (.A(\sel_0_c[1] ), .B(
        \paomadeng_0/dir_0_net_1 ), .Y(\paomadeng_0/N_128 ));
    AND2 \paomadeng_1/un1_cnt3_2_I_1  (.A(\paomadeng_1/cnt3[0]_net_1 ), 
        .B(\paomadeng_1/led_r38 ), .Y(
        \paomadeng_1/DWACT_ADD_CI_0_TMP[0] ));
    IOTRI_OB_EB \led_2_pad[2]/U0/U1  (.D(\led_2_c[2] ), .E(VCC), .DOUT(
        \led_2_pad[2]/U0/NET1 ), .EOUT(\led_2_pad[2]/U0/NET2 ));
    NOR3B \paomadeng_0/dir_RNI4SP9  (.A(\sel_0_c[0] ), .B(
        \paomadeng_0/dir_net_1 ), .C(\paomadeng_0/N_68 ), .Y(
        \paomadeng_0/N_203 ));
    AOI1 \paomadeng_2/led_r1_RNO[0]  (.A(
        \paomadeng_2/led_r1_8_i_0_tz[0] ), .B(\paomadeng_2/N_66 ), .C(
        \paomadeng_2/N_131 ), .Y(\paomadeng_2/N_55 ));
    OR2 \paomadeng_1/led_r_RNIF4QD[5]  (.A(
        \paomadeng_1/led_r[5]_net_1 ), .B(\paomadeng_1/N_69 ), .Y(
        \paomadeng_1/N_204 ));
    OR2A \paomadeng_2/cnt3_RNI34M7_0[1]  (.A(\sel_2_c[1] ), .B(
        \paomadeng_2/N_66 ), .Y(\paomadeng_2/N_182 ));
    AOI1B \paomadeng_1/led_r_RNO[2]  (.A(
        \paomadeng_1/led_r_11_i_a6_0[2] ), .B(\paomadeng_1/N_206 ), .C(
        \paomadeng_1/N_123 ), .Y(\paomadeng_1/N_16 ));
    NOR2A \paomadeng_1/dir_RNI1EU9  (.A(\sel_1_c[0] ), .B(
        \paomadeng_1/dir_net_1 ), .Y(\paomadeng_1/N_201 ));
    AO1B \paomadeng_2/un8_led_ADD_7x7_medium_area_I19_Y  (.A(
        \paomadeng_2/ADD_7x7_medium_area_I19_un1_Y_0 ), .B(
        \paomadeng_2/N132 ), .C(
        \paomadeng_2/ADD_7x7_medium_area_I19_Y_0 ), .Y(
        \paomadeng_2/N134 ));
    DFN1E1 \paomadeng_1/led_r1[5]  (.D(\paomadeng_1/N_36 ), .CLK(clk_c)
        , .E(\paomadeng_1/N_118 ), .Q(\paomadeng_1/led_r1[5]_net_1 ));
    DFN1 \paomadeng_1/cnt3[0]  (.D(\paomadeng_1/cnt3_6[0] ), .CLK(
        clk_c), .Q(\paomadeng_1/cnt3[0]_net_1 ));
    OA1 \paomadeng_1/dir_RNIINDV  (.A(\paomadeng_1/N_71 ), .B(
        \paomadeng_1/dir_net_1 ), .C(\paomadeng_1/N_180 ), .Y(
        \paomadeng_1/N_72 ));
    OA1A \paomadeng_0/led_RNO_2[6]  (.A(\paomadeng_0/N_203 ), .B(
        \led_0_c[5] ), .C(\paomadeng_0/led_RNO_4[6]_net_1 ), .Y(
        \paomadeng_0/led_12_iv_i_1[6] ));
    NOR3C \paomadeng_0/led_RNO[4]  (.A(\paomadeng_0/led_12_iv_i_0[4] ), 
        .B(\paomadeng_0/N_167 ), .C(\paomadeng_0/led_12_iv_i_1[4] ), 
        .Y(\paomadeng_0/N_61_i_0 ));
    NOR2A \paomadeng_1/led_RNO_6[7]  (.A(\sel_1_c[1] ), .B(
        \paomadeng_1/dir_0_net_1 ), .Y(
        \paomadeng_1/led_12_iv_0_a6_0[7] ));
    OA1C \paomadeng_2/led_r1_RNO[5]  (.A(\paomadeng_2/N_66 ), .B(
        \paomadeng_2/led_r1_8_i_a6_0[5] ), .C(\paomadeng_2/N_131 ), .Y(
        \paomadeng_2/N_36 ));
    DFN1E1 \paomadeng_2/led_r1[3]  (.D(\paomadeng_2/N_32 ), .CLK(clk_c)
        , .E(\paomadeng_2/N_118 ), .Q(\paomadeng_2/led_r1[3]_net_1 ));
    XNOR3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I22_Y_0  (.A(
        \led_0_c[1] ), .B(\paomadeng_0/led_r[2]_net_1 ), .C(
        \paomadeng_0/N105 ), .Y(\paomadeng_0/un8_led_i_0[2] ));
    NOR3B \paomadeng_2/led_RNO[3]  (.A(\paomadeng_2/led_12_iv_i_0[3] ), 
        .B(\paomadeng_2/led_12_iv_i_1[3] ), .C(\paomadeng_2/N_79 ), .Y(
        \paomadeng_2/N_63_i_0 ));
    IOTRI_OB_EB \led_1_pad[0]/U0/U1  (.D(\led_1_c[0] ), .E(VCC), .DOUT(
        \led_1_pad[0]/U0/NET1 ), .EOUT(\led_1_pad[0]/U0/NET2 ));
    NOR3B \paomadeng_1/led_r_RNO[1]  (.A(\paomadeng_1/N_195 ), .B(
        \paomadeng_1/led_r_11_0_o6_0[0] ), .C(\paomadeng_1/N_121 ), .Y(
        \paomadeng_1/N_14 ));
    AOI1B \paomadeng_2/led_r_RNO[4]  (.A(
        \paomadeng_2/led_r_11_i_a6_0[4] ), .B(\paomadeng_2/N_205 ), .C(
        \paomadeng_2/N_123 ), .Y(\paomadeng_2/N_20 ));
    OR3A \paomadeng_0/led_RNO_6[7]  (.A(\sel_0_c[0] ), .B(
        \paomadeng_0/N_68 ), .C(\paomadeng_0/N_128 ), .Y(
        \paomadeng_0/led_12_iv_0_a6_0_0[7] ));
    IOIN_IB \sel_1_pad[1]/U0/U1  (.YIN(\sel_1_pad[1]/U0/NET1 ), .Y(
        \sel_1_c[1] ));
    XA1B \paomadeng_1/dir_RNIJNJV  (.A(\paomadeng_1/dir_net_1 ), .B(
        \paomadeng_1/un1_dir_2_sqmuxa ), .C(rst_c), .Y(
        \paomadeng_1/dir_RNIJNJV_net_1 ));
    OR2A \paomadeng_1/dir_RNIVB9A  (.A(\paomadeng_1/dir_net_1 ), .B(
        \paomadeng_1/N_69 ), .Y(\paomadeng_1/N_186 ));
    NOR2B \paomadeng_2/un8_led_ADD_7x7_medium_area_I0_CO1  (.A(
        \paomadeng_2/led_r[1]_net_1 ), .B(\led_2_c[0] ), .Y(
        \paomadeng_2/N105 ));
    OA1B \paomadeng_1/led_r1_RNO[6]  (.A(\paomadeng_1/N_83 ), .B(
        \paomadeng_1/N_106 ), .C(\paomadeng_1/N_131 ), .Y(
        \paomadeng_1/N_38 ));
    NOR3 \paomadeng_2/led_RNO_3[2]  (.A(\paomadeng_2/led_r1[3]_net_1 ), 
        .B(\paomadeng_2/led_r1[2]_net_1 ), .C(
        \paomadeng_2/led_r[2]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_a6_1_1[2] ));
    OR2B \paomadeng_2/cnt1_RNIUDAK  (.A(\paomadeng_2/cnt1_net_1 ), .B(
        \paomadeng_2/N_81 ), .Y(\paomadeng_2/N_145 ));
    AX1C \paomadeng_2/un1_cnt3_2_I_10  (.A(\paomadeng_2/cnt3[0]_net_1 )
        , .B(\paomadeng_2/led_r38 ), .C(\paomadeng_2/cnt3[1]_net_1 ), 
        .Y(\paomadeng_2/un1_cnt3_2[1] ));
    OA1C \paomadeng_1/led_r1_RNO[1]  (.A(\paomadeng_1/N_66 ), .B(
        \paomadeng_1/led_r1_8_i_a6_0[1] ), .C(\paomadeng_1/N_131 ), .Y(
        \paomadeng_1/N_28 ));
    OA1C \paomadeng_0/led_r_RNO_0[3]  (.A(\paomadeng_0/N_186 ), .B(
        \paomadeng_0/N_205 ), .C(\paomadeng_0/led_r[2]_net_1 ), .Y(
        \paomadeng_0/N_124 ));
    NOR2A \paomadeng_2/led_r1_RNO_0[6]  (.A(
        \paomadeng_2/led_r1[6]_net_1 ), .B(\paomadeng_2/dir_net_1 ), 
        .Y(\paomadeng_2/N_106 ));
    XOR2 \paomadeng_2/un8_led_ADD_7x7_medium_area_I1_S_0  (.A(
        \paomadeng_2/led_r[2]_net_1 ), .B(\led_2_c[1] ), .Y(
        \paomadeng_2/N106 ));
    AOI1B \paomadeng_1/led_RNO_0[3]  (.A(\paomadeng_1/un8_led_i_0[3] ), 
        .B(\paomadeng_1/N_201 ), .C(\paomadeng_1/N_171 ), .Y(
        \paomadeng_1/led_12_iv_i_0[3] ));
    NOR3C \paomadeng_0/led_r_RNO[7]  (.A(\paomadeng_0/led_r_11_i_1[7] )
        , .B(\paomadeng_0/led_r_RNO_1[7]_net_1 ), .C(
        \paomadeng_0/N_130 ), .Y(\paomadeng_0/N_26_i_0 ));
    OA1C \paomadeng_2/led_r1_RNO[3]  (.A(\paomadeng_2/N_66 ), .B(
        \paomadeng_2/led_r1_8_i_a6_0[3] ), .C(\paomadeng_2/N_131 ), .Y(
        \paomadeng_2/N_32 ));
    AO1 \paomadeng_0/led_RNO_0[1]  (.A(\paomadeng_0/led_r[0]_net_1 ), 
        .B(\paomadeng_0/led_r1[2]_net_1 ), .C(\paomadeng_0/N_186 ), .Y(
        \paomadeng_0/led_RNO_0[1]_net_1 ));
    OAI1 \paomadeng_2/led_RNO_2[0]  (.A(\paomadeng_2/led_r1[0]_net_1 ), 
        .B(\paomadeng_2/led_r1[1]_net_1 ), .C(\paomadeng_2/led_r38 ), 
        .Y(\paomadeng_2/led_12_0_iv_0_a6_0[0] ));
    DFN1E1 \paomadeng_0/led_r1[5]  (.D(\paomadeng_0/N_36 ), .CLK(clk_c)
        , .E(\paomadeng_0/N_118 ), .Q(\paomadeng_0/led_r1[5]_net_1 ));
    AO1 \paomadeng_2/led_RNO_1[5]  (.A(\paomadeng_2/led_r[4]_net_1 ), 
        .B(\paomadeng_2/led_r1[6]_net_1 ), .C(\paomadeng_2/N_186 ), .Y(
        \paomadeng_2/led_RNO_1[5]_net_1 ));
    MIN3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I12_Y_0  (.A(
        \led_2_c[3] ), .B(\paomadeng_2/led_r[4]_net_1 ), .C(
        \paomadeng_2/N109 ), .Y(
        \paomadeng_2/ADD_7x7_medium_area_I12_Y_0 ));
    IOIN_IB \sel_0_pad[1]/U0/U1  (.YIN(\sel_0_pad[1]/U0/NET1 ), .Y(
        \sel_0_c[1] ));
    DFN1 \paomadeng_1/dir  (.D(\paomadeng_1/dir_RNIJNJV_net_1 ), .CLK(
        clk_c), .Q(\paomadeng_1/dir_net_1 ));
    OR2 \paomadeng_0/led_r_RNIJB8C[7]  (.A(
        \paomadeng_0/led_r[7]_net_1 ), .B(\paomadeng_0/led_r[6]_net_1 )
        , .Y(\paomadeng_0/N_89 ));
    DFN1E1 \paomadeng_1/led_r1[4]  (.D(\paomadeng_1/N_34 ), .CLK(clk_c)
        , .E(\paomadeng_1/N_118 ), .Q(\paomadeng_1/led_r1[4]_net_1 ));
    XNOR3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I23_Y_0  (.A(
        \led_1_c[2] ), .B(\paomadeng_1/led_r[3]_net_1 ), .C(
        \paomadeng_1/N122 ), .Y(\paomadeng_1/un8_led_i_0[3] ));
    NOR3 \paomadeng_2/led_RNO_3[1]  (.A(\paomadeng_2/led_r[0]_net_1 ), 
        .B(\paomadeng_2/led_r1[1]_net_1 ), .C(
        \paomadeng_2/led_r1[2]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_a6_1_1[1] ));
    NOR3 \paomadeng_1/led_RNO_3[1]  (.A(\paomadeng_1/led_r[0]_net_1 ), 
        .B(\paomadeng_1/led_r1[1]_net_1 ), .C(
        \paomadeng_1/led_r1[2]_net_1 ), .Y(
        \paomadeng_1/led_12_iv_i_a6_1_1[1] ));
    XA1B \paomadeng_1/cnt3_RNO[0]  (.A(\paomadeng_1/cnt3[0]_net_1 ), 
        .B(\paomadeng_1/led_r38 ), .C(rst_c_0), .Y(
        \paomadeng_1/cnt3_6[0] ));
    NOR3B \paomadeng_0/led_r_RNO[5]  (.A(\paomadeng_0/N_195 ), .B(
        \paomadeng_0/led_r_11_0_o6_0[0] ), .C(\paomadeng_0/N_126 ), .Y(
        \paomadeng_0/N_22 ));
    AO1A \paomadeng_2/led_r1_RNO_0[2]  (.A(\paomadeng_2/dir_0_net_1 ), 
        .B(\paomadeng_2/led_r1[2]_net_1 ), .C(
        \paomadeng_2/led_r1[3]_net_1 ), .Y(
        \paomadeng_2/led_r1_8_i_a6_0[2] ));
    XA1B \paomadeng_2/dir_RNITN111  (.A(\paomadeng_2/dir_net_1 ), .B(
        \paomadeng_2/un1_dir_2_sqmuxa ), .C(rst_c), .Y(
        \paomadeng_2/N_240 ));
    OR3 \paomadeng_2/led_RNO_5[6]  (.A(\paomadeng_2/led_r1[6]_net_1 ), 
        .B(\paomadeng_2/led_r1[7]_net_1 ), .C(
        \paomadeng_2/led_r[6]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_a6_1_1[6] ));
    XA1 \paomadeng_2/un8_led_ADD_7x7_medium_area_I19_un1_Y_0  (.A(
        \led_2_c[5] ), .B(\paomadeng_2/led_r[6]_net_1 ), .C(
        \paomadeng_2/N112 ), .Y(
        \paomadeng_2/ADD_7x7_medium_area_I19_un1_Y_0 ));
    IOTRI_OB_EB \led_2_pad[7]/U0/U1  (.D(\led_2_c[7] ), .E(VCC), .DOUT(
        \led_2_pad[7]/U0/NET1 ), .EOUT(\led_2_pad[7]/U0/NET2 ));
    OR3C \paomadeng_1/cnt3_RNIEU2E[1]  (.A(\paomadeng_1/cnt3[1]_net_1 )
        , .B(\paomadeng_1/led_r38 ), .C(\paomadeng_1/cnt3[0]_net_1 ), 
        .Y(\paomadeng_1/N_198 ));
    OR2A \paomadeng_0/dir_RNIPLP9  (.A(\paomadeng_0/dir_net_1 ), .B(
        \paomadeng_0/N_69 ), .Y(\paomadeng_0/N_186 ));
    OA1C \paomadeng_2/led_r_RNO_0[2]  (.A(\paomadeng_2/led_r[2]_net_1 )
        , .B(\paomadeng_2/dir_0_net_1 ), .C(\sel_2_c[0] ), .Y(
        \paomadeng_2/led_r_11_i_a6_0[2] ));
    IOTRI_OB_EB \led_2_pad[5]/U0/U1  (.D(\led_2_c[5] ), .E(VCC), .DOUT(
        \led_2_pad[5]/U0/NET1 ), .EOUT(\led_2_pad[5]/U0/NET2 ));
    OA1C \paomadeng_0/led_r1_RNO[4]  (.A(\paomadeng_0/N_66 ), .B(
        \paomadeng_0/led_r1_8_i_a6_0[4] ), .C(\paomadeng_0/N_131 ), .Y(
        \paomadeng_0/N_34 ));
    MIN3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I19_Y_0  (.A(
        \led_1_c[5] ), .B(\paomadeng_1/led_r[6]_net_1 ), .C(
        \paomadeng_1/N113 ), .Y(
        \paomadeng_1/ADD_7x7_medium_area_I19_Y_0 ));
    OA1C \paomadeng_1/led_r1_RNO_0[0]  (.A(
        \paomadeng_1/led_r1[0]_net_1 ), .B(\paomadeng_1/dir_0_net_1 ), 
        .C(\paomadeng_1/led_r1[1]_net_1 ), .Y(
        \paomadeng_1/led_r1_8_i_0_tz[0] ));
    NOR3C \paomadeng_1/dir_RNIRKEA  (.A(\paomadeng_1/N_68 ), .B(
        \sel_1_c[0] ), .C(\paomadeng_1/dir_net_1 ), .Y(
        \paomadeng_1/N_203 ));
    AOI1B \paomadeng_2/led_RNO_1[2]  (.A(
        \paomadeng_2/led_12_iv_i_a6_1_1[2] ), .B(\paomadeng_2/N_206 ), 
        .C(\paomadeng_2/led_RNO_4_0[2] ), .Y(
        \paomadeng_2/led_12_iv_i_1[2] ));
    MIN3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I21_Y  (.A(
        \led_1_c[2] ), .B(\paomadeng_1/led_r[3]_net_1 ), .C(
        \paomadeng_1/N122 ), .Y(\paomadeng_1/N138_i ));
    DFN1E0 \paomadeng_0/led[1]  (.D(\paomadeng_0/N_48_i_0 ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[1] ));
    AO1A \paomadeng_1/led_r1_RNO_0[5]  (.A(\paomadeng_1/dir_0_net_1 ), 
        .B(\paomadeng_1/led_r1[5]_net_1 ), .C(
        \paomadeng_1/led_r1[6]_net_1 ), .Y(
        \paomadeng_1/led_r1_8_i_a6_0[5] ));
    OA1A \paomadeng_1/led_RNO_2[6]  (.A(\paomadeng_1/N_203 ), .B(
        \led_1_c[5] ), .C(\paomadeng_1/led_RNO_4_1[6] ), .Y(
        \paomadeng_1/led_12_iv_i_0[6] ));
    DFN1 \paomadeng_1/cnt3[1]  (.D(\paomadeng_1/cnt3_6[1] ), .CLK(
        clk_c), .Q(\paomadeng_1/cnt3[1]_net_1 ));
    XAI1 \paomadeng_1/led_RNO_1[4]  (.A(\paomadeng_1/N110 ), .B(
        \paomadeng_1/N138_i ), .C(\paomadeng_1/N_201 ), .Y(
        \paomadeng_1/N_169 ));
    OR2A \paomadeng_1/dir_RNIJKI3  (.A(\paomadeng_1/dir_net_1 ), .B(
        \paomadeng_1/N_68 ), .Y(\paomadeng_1/N_99 ));
    DFN1E1 \paomadeng_2/led_r1[7]  (.D(\paomadeng_2/led_r1_8[7] ), 
        .CLK(clk_c), .E(\paomadeng_2/N_118 ), .Q(
        \paomadeng_2/led_r1[7]_net_1 ));
    OR2 \paomadeng_1/cnt3_RNITPA[1]  (.A(\paomadeng_1/cnt3[1]_net_1 ), 
        .B(\paomadeng_1/cnt3[0]_net_1 ), .Y(\paomadeng_1/N_66 ));
    DFN1E0 \paomadeng_1/led_r[1]  (.D(\paomadeng_1/N_14 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[1]_net_1 ));
    OR2 \paomadeng_1/led_RNO_5[5]  (.A(
        \paomadeng_1/led_12_iv_i_a6_1_1[5] ), .B(\paomadeng_1/N_204 ), 
        .Y(\paomadeng_1/led_RNO_5_0[5] ));
    DFN1E1 \paomadeng_1/cnt2[1]  (.D(\paomadeng_1/N_43 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2e ), .Q(\paomadeng_1/cnt2[1]_net_1 ));
    OR2 \paomadeng_1/led_r_RNO_2[7]  (.A(\paomadeng_1/led_r[6]_net_1 ), 
        .B(\paomadeng_1/N_186 ), .Y(\paomadeng_1/N_130 ));
    MIN3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I21_Y  (.A(
        \led_0_c[2] ), .B(\paomadeng_0/led_r[3]_net_1 ), .C(
        \paomadeng_0/N122 ), .Y(\paomadeng_0/N138_i ));
    NOR2A \paomadeng_1/led_r_RNITVK9[0]  (.A(
        \paomadeng_1/led_r[0]_net_1 ), .B(\paomadeng_1/dir_net_1 ), .Y(
        \paomadeng_1/N_211 ));
    OA1A \paomadeng_2/led_RNO_2[6]  (.A(\paomadeng_2/N_203 ), .B(
        \led_2_c[5] ), .C(\paomadeng_2/led_RNO_4_0[6] ), .Y(
        \paomadeng_2/led_12_iv_i_0[6] ));
    OR2 \paomadeng_1/led_r_RNILO6D[7]  (.A(
        \paomadeng_1/led_r[7]_net_1 ), .B(\paomadeng_1/led_r[6]_net_1 )
        , .Y(\paomadeng_1/N_89 ));
    IOPAD_TRI \led_1_pad[2]/U0/U0  (.D(\led_1_pad[2]/U0/NET1 ), .E(
        \led_1_pad[2]/U0/NET2 ), .PAD(led_1[2]));
    DFN1 \paomadeng_0/dir_0  (.D(\paomadeng_0/N_240 ), .CLK(clk_c), .Q(
        \paomadeng_0/dir_0_net_1 ));
    DFN1E1 \paomadeng_1/cnt2[2]  (.D(\paomadeng_1/N_45 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2e ), .Q(\paomadeng_1/cnt2[2]_net_1 ));
    DFN1E1 \paomadeng_0/led_r1[4]  (.D(\paomadeng_0/N_34 ), .CLK(clk_c)
        , .E(\paomadeng_0/N_118 ), .Q(\paomadeng_0/led_r1[4]_net_1 ));
    DFN1E0 \paomadeng_1/led[7]  (.D(\paomadeng_1/led_12[7] ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[7] ));
    IOTRI_OB_EB \led_0_pad[4]/U0/U1  (.D(\led_0_c[4] ), .E(VCC), .DOUT(
        \led_0_pad[4]/U0/NET1 ), .EOUT(\led_0_pad[4]/U0/NET2 ));
    OR3C \paomadeng_2/led_RNO[0]  (.A(\paomadeng_2/N_154 ), .B(
        \paomadeng_2/led_12_0_iv_0_0[0] ), .C(\paomadeng_2/N_123 ), .Y(
        \paomadeng_2/led_12[0] ));
    XAI1A \paomadeng_1/led_RNO_2[1]  (.A(\led_1_c[0] ), .B(
        \paomadeng_1/led_r[1]_net_1 ), .C(\paomadeng_1/N_201 ), .Y(
        \paomadeng_1/N_151 ));
    NOR2A \paomadeng_0/led_RNO_3[7]  (.A(\sel_0_c[1] ), .B(
        \paomadeng_0/dir_0_net_1 ), .Y(
        \paomadeng_0/led_12_iv_0_a6_0[7] ));
    AOI1B \paomadeng_1/led_RNO_1[3]  (.A(
        \paomadeng_1/led_12_iv_i_a6_1_1[3] ), .B(\paomadeng_1/N_205 ), 
        .C(\paomadeng_1/led_RNO_4_0[3] ), .Y(
        \paomadeng_1/led_12_iv_i_1[3] ));
    XOR2 \paomadeng_2/un8_led_ADD_7x7_medium_area_I4_S_0  (.A(
        \paomadeng_2/led_r[5]_net_1 ), .B(\led_2_c[4] ), .Y(
        \paomadeng_2/N112 ));
    AOI1 \paomadeng_0/led_RNO_0[5]  (.A(
        \paomadeng_0/led_12_iv_i_a6_1_1[5] ), .B(\paomadeng_0/N_204 ), 
        .C(\paomadeng_0/N_79 ), .Y(\paomadeng_0/led_12_iv_i_0[5] ));
    NOR2A \paomadeng_1/un1_rst_i_a6  (.A(\paomadeng_1/led_r38 ), .B(
        rst_c), .Y(\paomadeng_1/N_118 ));
    OA1A \paomadeng_1/led_RNO_4[5]  (.A(\paomadeng_1/N_203 ), .B(
        \led_1_c[4] ), .C(\paomadeng_1/led_RNO_5_0[5] ), .Y(
        \paomadeng_1/led_12_iv_i_0[5] ));
    OR2B \paomadeng_2/dir_RNIQ56L1  (.A(\paomadeng_2/N_145 ), .B(
        \paomadeng_2/N_72 ), .Y(\paomadeng_2/N_80 ));
    OR2 \paomadeng_2/led_r_RNITGOE[5]  (.A(
        \paomadeng_2/led_r[5]_net_1 ), .B(\paomadeng_2/N_69 ), .Y(
        \paomadeng_2/N_204 ));
    AOI1 \paomadeng_2/led_r_RNO_0[5]  (.A(\paomadeng_2/N_204 ), .B(
        \paomadeng_2/N_186 ), .C(\paomadeng_2/led_r[4]_net_1 ), .Y(
        \paomadeng_2/N_126 ));
    AO1A \paomadeng_0/led_r1_RNO_0[4]  (.A(\paomadeng_0/dir_0_net_1 ), 
        .B(\paomadeng_0/led_r1[4]_net_1 ), .C(
        \paomadeng_0/led_r1[5]_net_1 ), .Y(
        \paomadeng_0/led_r1_8_i_a6_0[4] ));
    MIN3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I21_Y  (.A(
        \led_2_c[2] ), .B(\paomadeng_2/led_r[3]_net_1 ), .C(
        \paomadeng_2/N122 ), .Y(\paomadeng_2/N138_i ));
    NOR3B \paomadeng_1/led_RNO[2]  (.A(\paomadeng_1/led_12_iv_i_0[2] ), 
        .B(\paomadeng_1/led_12_iv_i_1[2] ), .C(\paomadeng_1/N_80 ), .Y(
        \paomadeng_1/N_65_i_0 ));
    AOI1B \paomadeng_2/led_r_RNO[2]  (.A(
        \paomadeng_2/led_r_11_i_a6_0[2] ), .B(\paomadeng_2/N_206 ), .C(
        \paomadeng_2/N_123 ), .Y(\paomadeng_2/N_16 ));
    OR3 \paomadeng_1/led_RNO_5[6]  (.A(\paomadeng_1/led_r1[6]_net_1 ), 
        .B(\paomadeng_1/led_r1[7]_net_1 ), .C(
        \paomadeng_1/led_r[6]_net_1 ), .Y(
        \paomadeng_1/led_12_iv_i_a6_1_1[6] ));
    NOR3B \paomadeng_0/led_RNO[3]  (.A(
        \paomadeng_0/led_RNO_0[3]_net_1 ), .B(
        \paomadeng_0/led_12_iv_i_2[3] ), .C(\paomadeng_0/N_79 ), .Y(
        \paomadeng_0/N_63_i_0 ));
    OA1 \paomadeng_2/dir_RNISNR01  (.A(\paomadeng_2/N_71 ), .B(
        \paomadeng_2/dir_net_1 ), .C(\paomadeng_2/N_180 ), .Y(
        \paomadeng_2/N_72 ));
    NOR3B \paomadeng_0/led_r_RNO[1]  (.A(\paomadeng_0/N_195 ), .B(
        \paomadeng_0/led_r_11_0_o6_0[0] ), .C(\paomadeng_0/N_121 ), .Y(
        \paomadeng_0/N_14 ));
    OR2A \paomadeng_0/led_RNO_1[4]  (.A(\paomadeng_0/N_203 ), .B(
        \led_0_c[3] ), .Y(\paomadeng_0/N_167 ));
    DFN1E0 \paomadeng_0/led_r[6]  (.D(\paomadeng_0/N_24 ), .CLK(clk_c), 
        .E(\paomadeng_0/un1_rst_2 ), .Q(\paomadeng_0/led_r[6]_net_1 ));
    AOI1B \paomadeng_2/led_RNO_1[3]  (.A(
        \paomadeng_2/led_12_iv_i_a6_1_1[3] ), .B(\paomadeng_2/N_205 ), 
        .C(\paomadeng_2/led_RNO_4[3]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_1[3] ));
    NOR3B \paomadeng_1/cnt2_RNIGHTD[2]  (.A(\sel_1_c[0] ), .B(
        \paomadeng_1/cnt2[2]_net_1 ), .C(\sel_1_c[1] ), .Y(
        \paomadeng_1/un1_dir_2_sqmuxa_0_a2_0 ));
    AOI1B \paomadeng_1/led_RNO[6]  (.A(\paomadeng_1/un8_led_i_0[6] ), 
        .B(\paomadeng_1/N_201 ), .C(\paomadeng_1/led_12_iv_i_2[6] ), 
        .Y(\paomadeng_1/N_57_i_0 ));
    OR2A \paomadeng_2/dir_RNI52PA_0  (.A(\paomadeng_2/N_69 ), .B(
        \paomadeng_2/dir_net_1 ), .Y(\paomadeng_2/N_195 ));
    OA1C \paomadeng_0/led_r_RNO_0[6]  (.A(\paomadeng_0/led_r[6]_net_1 )
        , .B(\paomadeng_0/dir_0_net_1 ), .C(\sel_0_c[0] ), .Y(
        \paomadeng_0/led_r_11_i_a6_0[6] ));
    AO1A \paomadeng_1/cnt2lde_0  (.A(\sel_1_c[1] ), .B(\sel_1_c[0] ), 
        .C(rst_c), .Y(\paomadeng_1/cnt2e ));
    OR3 \paomadeng_2/cnt2_RNIDEV[1]  (.A(\paomadeng_2/cnt2[2]_net_1 ), 
        .B(\paomadeng_2/cnt2[1]_net_1 ), .C(
        \paomadeng_2/cnt2[0]_net_1 ), .Y(\paomadeng_2/N_68 ));
    NOR3C \paomadeng_2/led_r_RNO[7]  (.A(\paomadeng_2/led_r_11_i_1[7] )
        , .B(\paomadeng_2/led_r_11_i_0[7] ), .C(\paomadeng_2/N_130 ), 
        .Y(\paomadeng_2/N_26_i_0 ));
    DFN1 \paomadeng_1/dir_0  (.D(\paomadeng_1/dir_RNIJNJV_net_1 ), 
        .CLK(clk_c), .Q(\paomadeng_1/dir_0_net_1 ));
    OA1 \paomadeng_0/led_RNO_2[5]  (.A(\paomadeng_0/N_114 ), .B(
        \paomadeng_0/N_186 ), .C(\paomadeng_0/N_165 ), .Y(
        \paomadeng_0/led_12_iv_i_1[5] ));
    NOR3B \paomadeng_2/led_RNO_0[6]  (.A(
        \paomadeng_2/led_RNO_1[6]_net_1 ), .B(
        \paomadeng_2/led_12_iv_i_0[6] ), .C(\paomadeng_2/N_80 ), .Y(
        \paomadeng_2/led_12_iv_i_2[6] ));
    AOI1 \paomadeng_0/led_r_RNO_0[1]  (.A(\paomadeng_0/N_206 ), .B(
        \paomadeng_0/N_186 ), .C(\paomadeng_0/led_r[0]_net_1 ), .Y(
        \paomadeng_0/N_121 ));
    NOR2B \paomadeng_2/cnt2_RNITUK[1]  (.A(\paomadeng_2/cnt2[1]_net_1 )
        , .B(\paomadeng_2/cnt2[0]_net_1 ), .Y(\paomadeng_2/N_87 ));
    OR2 \paomadeng_0/led_RNO_4[2]  (.A(
        \paomadeng_0/led_12_iv_i_a6_1_1[2] ), .B(\paomadeng_0/N_206 ), 
        .Y(\paomadeng_0/led_RNO_4[2]_net_1 ));
    DFN1E0 \paomadeng_1/led_r[3]  (.D(\paomadeng_1/N_18 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[3]_net_1 ));
    OR3B \paomadeng_1/led_RNO_0[7]  (.A(\paomadeng_1/N_68 ), .B(
        \sel_1_c[0] ), .C(\paomadeng_1/dir_0_net_1 ), .Y(
        \paomadeng_1/led_12_iv_0_a6_0_0[7] ));
    AX1C \paomadeng_0/un1_cnt3_2_I_10  (.A(\paomadeng_0/cnt3[0]_net_1 )
        , .B(\paomadeng_0/led_r38 ), .C(\paomadeng_0/cnt3[1]_net_1 ), 
        .Y(\paomadeng_0/un1_cnt3_2[1] ));
    DFN1E0 \paomadeng_0/led_r[5]  (.D(\paomadeng_0/N_22 ), .CLK(clk_c), 
        .E(\paomadeng_0/un1_rst_2 ), .Q(\paomadeng_0/led_r[5]_net_1 ));
    XOR2 \paomadeng_0/un8_led_ADD_7x7_medium_area_I2_S_0  (.A(
        \paomadeng_0/led_r[3]_net_1 ), .B(\led_0_c[2] ), .Y(
        \paomadeng_0/N108 ));
    NOR2 \paomadeng_2/led_r_RNIP0OE[1]  (.A(
        \paomadeng_2/led_r[1]_net_1 ), .B(\paomadeng_2/N_69 ), .Y(
        \paomadeng_2/N_206 ));
    NOR2 \paomadeng_1/led_r_RNIBKPD[1]  (.A(
        \paomadeng_1/led_r[1]_net_1 ), .B(\paomadeng_1/N_69 ), .Y(
        \paomadeng_1/N_206 ));
    OR3C \paomadeng_2/cnt3_RNI65NE[1]  (.A(\paomadeng_2/cnt3[1]_net_1 )
        , .B(\paomadeng_2/led_r38 ), .C(\paomadeng_2/cnt3[0]_net_1 ), 
        .Y(\paomadeng_2/N_198 ));
    DFN1E0 \paomadeng_1/led_r[0]  (.D(\paomadeng_1/led_r_11[0] ), .CLK(
        clk_c), .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[0]_net_1 ));
    NOR3C \paomadeng_0/led_RNO_1[3]  (.A(\paomadeng_0/N_172 ), .B(
        \paomadeng_0/N_173 ), .C(\paomadeng_0/N_171 ), .Y(
        \paomadeng_0/led_12_iv_i_2[3] ));
    NOR3C \paomadeng_2/led_RNO[4]  (.A(
        \paomadeng_2/led_RNO_0[4]_net_1 ), .B(\paomadeng_2/N_169 ), .C(
        \paomadeng_2/led_12_iv_i_2[4] ), .Y(\paomadeng_2/N_61_i_0 ));
    AO1B \paomadeng_0/un8_led_ADD_7x7_medium_area_I12_Y  (.A(
        \paomadeng_0/ADD_7x7_medium_area_I12_un1_Y_0 ), .B(
        \paomadeng_0/N122 ), .C(
        \paomadeng_0/ADD_7x7_medium_area_I12_Y_0 ), .Y(
        \paomadeng_0/N132 ));
    NOR2A \paomadeng_0/cnt3_RNO[1]  (.A(\paomadeng_0/un1_cnt3_2[1] ), 
        .B(rst_c_0), .Y(\paomadeng_0/cnt3_6[1] ));
    OR2 \paomadeng_2/led_r_RNO_2[7]  (.A(\paomadeng_2/led_r[6]_net_1 ), 
        .B(\paomadeng_2/N_186 ), .Y(\paomadeng_2/N_130 ));
    NOR2B \paomadeng_0/led_RNO_4[5]  (.A(\paomadeng_0/led_r[4]_net_1 ), 
        .B(\paomadeng_0/led_r1[6]_net_1 ), .Y(\paomadeng_0/N_114 ));
    OAI1 \paomadeng_2/led_RNO[7]  (.A(\paomadeng_2/un8_led_i[7] ), .B(
        \paomadeng_2/led_12_iv_0_a6_0_0[7] ), .C(
        \paomadeng_2/led_12_iv_0_2[7] ), .Y(\paomadeng_2/led_12[7] ));
    NOR2 \paomadeng_0/cnt2_RNO[0]  (.A(rst_c), .B(
        \paomadeng_0/cnt2[0]_net_1 ), .Y(\paomadeng_0/cnt2_n0 ));
    DFN1E1 \paomadeng_2/led_r1[2]  (.D(\paomadeng_2/N_30 ), .CLK(clk_c)
        , .E(\paomadeng_2/N_118 ), .Q(\paomadeng_2/led_r1[2]_net_1 ));
    AO1 \paomadeng_1/led_RNO_4[2]  (.A(\paomadeng_1/led_r[1]_net_1 ), 
        .B(\paomadeng_1/led_r1[3]_net_1 ), .C(\paomadeng_1/N_186 ), .Y(
        \paomadeng_1/led_RNO_4_1[2] ));
    IOPAD_TRI \led_1_pad[1]/U0/U0  (.D(\led_1_pad[1]/U0/NET1 ), .E(
        \led_1_pad[1]/U0/NET2 ), .PAD(led_1[1]));
    OA1 \paomadeng_2/led_r_RNO[6]  (.A(\paomadeng_2/N_204 ), .B(
        \paomadeng_2/led_r_11_i_a6_0[6] ), .C(\paomadeng_2/N_123 ), .Y(
        \paomadeng_2/N_24 ));
    AO1A \paomadeng_0/led_r_RNO_0[2]  (.A(\paomadeng_0/dir_0_net_1 ), 
        .B(\paomadeng_0/led_r[2]_net_1 ), .C(\sel_0_c[0] ), .Y(
        \paomadeng_0/led_r_11_i_a6_0[2] ));
    AO1 \paomadeng_1/led_RNO_1[6]  (.A(\paomadeng_1/led_r[5]_net_1 ), 
        .B(\paomadeng_1/led_r1[7]_net_1 ), .C(\paomadeng_1/N_186 ), .Y(
        \paomadeng_1/led_RNO_1_0[6] ));
    NOR3 \paomadeng_0/led_RNO_5[4]  (.A(\paomadeng_0/led_r1[5]_net_1 ), 
        .B(\paomadeng_0/led_r1[4]_net_1 ), .C(
        \paomadeng_0/led_r[4]_net_1 ), .Y(
        \paomadeng_0/led_12_iv_i_a6_1_1[4] ));
    OR2A \paomadeng_1/cnt1_RNIVNUJ  (.A(\paomadeng_1/cnt1_net_1 ), .B(
        \paomadeng_1/N_81 ), .Y(\paomadeng_1/N_145 ));
    DFN1 \paomadeng_2/dir  (.D(\paomadeng_2/N_240 ), .CLK(clk_c), .Q(
        \paomadeng_2/dir_net_1 ));
    DFN1E0 \paomadeng_2/led_r[1]  (.D(\paomadeng_2/N_14 ), .CLK(clk_c), 
        .E(\paomadeng_2/un1_rst_2 ), .Q(\paomadeng_2/led_r[1]_net_1 ));
    NOR3C \paomadeng_2/led_RNO[5]  (.A(\paomadeng_2/N_165 ), .B(
        \paomadeng_2/led_RNO_1[5]_net_1 ), .C(
        \paomadeng_2/led_12_iv_i_2[5] ), .Y(\paomadeng_2/N_59_i_0 ));
    OA1A \paomadeng_2/led_RNO_0[2]  (.A(\paomadeng_2/N_203 ), .B(
        \led_2_c[1] ), .C(\paomadeng_2/N_179 ), .Y(
        \paomadeng_2/led_12_iv_i_0[2] ));
    DFN1E1 \paomadeng_2/led_r1[0]  (.D(\paomadeng_2/N_55 ), .CLK(clk_c)
        , .E(\paomadeng_2/N_118 ), .Q(\paomadeng_2/led_r1[0]_net_1 ));
    DFN1E0 \paomadeng_1/led_r[6]  (.D(\paomadeng_1/N_24 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[6]_net_1 ));
    OA1C \paomadeng_2/led_r_RNO_0[4]  (.A(\paomadeng_2/led_r[4]_net_1 )
        , .B(\paomadeng_2/dir_0_net_1 ), .C(\sel_2_c[0] ), .Y(
        \paomadeng_2/led_r_11_i_a6_0[4] ));
    AO1B \paomadeng_2/cnt2_RNIQPOT[2]  (.A(
        \paomadeng_2/un1_dir_2_sqmuxa_0_a2_0 ), .B(\paomadeng_2/N_87 ), 
        .C(\paomadeng_2/N_198 ), .Y(\paomadeng_2/un1_dir_2_sqmuxa ));
    OR2B \paomadeng_0/led_RNO_1[0]  (.A(\paomadeng_0/N_211 ), .B(
        \paomadeng_0/N_70_i ), .Y(\paomadeng_0/N_154 ));
    XA1 \paomadeng_2/un8_led_ADD_7x7_medium_area_I12_un1_Y_0  (.A(
        \led_2_c[2] ), .B(\paomadeng_2/led_r[3]_net_1 ), .C(
        \paomadeng_2/N110 ), .Y(
        \paomadeng_2/ADD_7x7_medium_area_I12_un1_Y_0 ));
    DFN1E0 \paomadeng_2/led_r[4]  (.D(\paomadeng_2/N_20 ), .CLK(clk_c), 
        .E(\paomadeng_2/un1_rst_2 ), .Q(\paomadeng_2/led_r[4]_net_1 ));
    OA1C \paomadeng_2/led_r1_RNO[4]  (.A(\paomadeng_2/N_66 ), .B(
        \paomadeng_2/led_r1_8_i_a6_0[4] ), .C(\paomadeng_2/N_131 ), .Y(
        \paomadeng_2/N_34 ));
    OR2A \paomadeng_2/un1_rst_2_0_o6  (.A(\paomadeng_2/N_180 ), .B(
        rst_c_0), .Y(\paomadeng_2/un1_rst_3 ));
    IOPAD_IN \sel_1_pad[0]/U0/U0  (.PAD(sel_1[0]), .Y(
        \sel_1_pad[0]/U0/NET1 ));
    OA1C \paomadeng_0/led_r_RNO_0[4]  (.A(\paomadeng_0/led_r[4]_net_1 )
        , .B(\paomadeng_0/dir_0_net_1 ), .C(\sel_0_c[0] ), .Y(
        \paomadeng_0/led_r_11_i_a6_0[4] ));
    DFN1E0 \paomadeng_2/led[4]  (.D(\paomadeng_2/N_61_i_0 ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[4] ));
    OA1C \paomadeng_1/led_r_RNO_0[1]  (.A(\paomadeng_1/N_186 ), .B(
        \paomadeng_1/N_206 ), .C(\paomadeng_1/led_r[0]_net_1 ), .Y(
        \paomadeng_1/N_121 ));
    OR2A \paomadeng_0/led_RNO_1[5]  (.A(\paomadeng_0/N_203 ), .B(
        \led_0_c[4] ), .Y(\paomadeng_0/N_163 ));
    NOR3C \paomadeng_2/led_RNO_1[7]  (.A(\paomadeng_2/led_RNO_2_0[7] ), 
        .B(\paomadeng_2/led_12_iv_0_0[7] ), .C(\paomadeng_2/N_143 ), 
        .Y(\paomadeng_2/led_12_iv_0_2[7] ));
    OA1 \paomadeng_2/led_RNO_1[0]  (.A(\paomadeng_2/dir_0_net_1 ), .B(
        \paomadeng_2/led_12_0_iv_0_a6_0[0] ), .C(\paomadeng_2/N_155 ), 
        .Y(\paomadeng_2/led_12_0_iv_0_0[0] ));
    NOR2A \paomadeng_1/led_r1_RNO[7]  (.A(\paomadeng_1/N_83 ), .B(
        \paomadeng_1/dir_net_1 ), .Y(\paomadeng_1/led_r1_8[7] ));
    AO1 \paomadeng_1/led_RNO_4[1]  (.A(\paomadeng_1/led_r[0]_net_1 ), 
        .B(\paomadeng_1/led_r1[2]_net_1 ), .C(\paomadeng_1/N_186 ), .Y(
        \paomadeng_1/led_RNO_4[1]_net_1 ));
    NOR3C \paomadeng_2/dir_RNIID3B  (.A(\paomadeng_2/N_68 ), .B(
        \sel_2_c[0] ), .C(\paomadeng_2/dir_net_1 ), .Y(
        \paomadeng_2/N_203 ));
    NOR3C \paomadeng_1/led_RNO[4]  (.A(\paomadeng_1/led_RNO_0_0[4] ), 
        .B(\paomadeng_1/N_169 ), .C(\paomadeng_1/led_12_iv_i_2[4] ), 
        .Y(\paomadeng_1/N_61_i_0 ));
    MIN3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I20_Y  (.A(
        \led_1_c[4] ), .B(\paomadeng_1/led_r[5]_net_1 ), .C(
        \paomadeng_1/N132 ), .Y(\paomadeng_1/N136_i ));
    DFN1E0 \paomadeng_2/led[6]  (.D(\paomadeng_2/N_57_i_0 ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[6] ));
    IOPAD_TRI \led_1_pad[7]/U0/U0  (.D(\led_1_pad[7]/U0/NET1 ), .E(
        \led_1_pad[7]/U0/NET2 ), .PAD(led_1[7]));
    AOI1B \paomadeng_0/led_RNO[6]  (.A(\paomadeng_0/un8_led_i_0[6] ), 
        .B(\paomadeng_0/N_201 ), .C(\paomadeng_0/led_12_iv_i_2[6] ), 
        .Y(\paomadeng_0/N_57_i_0 ));
    NOR3B \paomadeng_0/cnt2_RNI9DED[2]  (.A(\sel_0_c[0] ), .B(
        \paomadeng_0/cnt2[2]_net_1 ), .C(\sel_0_c[1] ), .Y(
        \paomadeng_0/un1_dir_2_sqmuxa_0_a2_0 ));
    OAI1 \paomadeng_1/led_RNO_4[7]  (.A(\paomadeng_1/N_83 ), .B(
        \paomadeng_1/N_89 ), .C(\paomadeng_1/led_12_iv_0_a6_0[7] ), .Y(
        \paomadeng_1/N_143 ));
    IOTRI_OB_EB \led_1_pad[2]/U0/U1  (.D(\led_1_c[2] ), .E(VCC), .DOUT(
        \led_1_pad[2]/U0/NET1 ), .EOUT(\led_1_pad[2]/U0/NET2 ));
    OR3C \paomadeng_0/led_RNO_4[7]  (.A(\led_0_c[6] ), .B(\sel_0_c[0] )
        , .C(\paomadeng_0/dir_0_net_1 ), .Y(\paomadeng_0/N_146 ));
    OR2B \paomadeng_2/dir_RNIQ56L1_0  (.A(\paomadeng_2/N_155 ), .B(
        \paomadeng_2/N_72 ), .Y(\paomadeng_2/N_79 ));
    DFN1E0 \paomadeng_2/led_r[3]  (.D(\paomadeng_2/N_18 ), .CLK(clk_c), 
        .E(\paomadeng_2/un1_rst_2 ), .Q(\paomadeng_2/led_r[3]_net_1 ));
    DFN1 \paomadeng_0/cnt3[0]  (.D(\paomadeng_0/cnt3_6[0] ), .CLK(
        clk_c), .Q(\paomadeng_0/cnt3[0]_net_1 ));
    AOI1B \paomadeng_0/led_RNO_0[4]  (.A(\paomadeng_0/un8_led_i_0[4] ), 
        .B(\paomadeng_0/N_201 ), .C(\paomadeng_0/N_168 ), .Y(
        \paomadeng_0/led_12_iv_i_0[4] ));
    DFN1E0 \paomadeng_2/led[1]  (.D(\paomadeng_2/N_48_i_0 ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[1] ));
    NOR2B \paomadeng_1/cnt2_RNIRPA[1]  (.A(\paomadeng_1/cnt2[1]_net_1 )
        , .B(\paomadeng_1/cnt2[0]_net_1 ), .Y(\paomadeng_1/N_87 ));
    AOI1B \paomadeng_1/led_RNO_1[2]  (.A(
        \paomadeng_1/led_12_iv_i_a6_1_1[2] ), .B(\paomadeng_1/N_206 ), 
        .C(\paomadeng_1/led_RNO_4_1[2] ), .Y(
        \paomadeng_1/led_12_iv_i_1[2] ));
    OA1B \paomadeng_2/led_r_RNO_0[7]  (.A(\paomadeng_2/N_69 ), .B(
        \paomadeng_2/N_89 ), .C(\paomadeng_2/N_131 ), .Y(
        \paomadeng_2/led_r_11_i_1[7] ));
    OR2B \paomadeng_0/led_RNO_3[4]  (.A(
        \paomadeng_0/led_12_iv_i_a6_1_1[4] ), .B(\paomadeng_0/N_205 ), 
        .Y(\paomadeng_0/N_168 ));
    OA1A \paomadeng_0/led_RNO_1[1]  (.A(\paomadeng_0/N_203 ), .B(
        \led_0_c[0] ), .C(\paomadeng_0/led_12_iv_i_0[1] ), .Y(
        \paomadeng_0/led_12_iv_i_2[1] ));
    OA1C \paomadeng_0/led_r1_RNO_0[0]  (.A(
        \paomadeng_0/led_r1[0]_net_1 ), .B(\paomadeng_0/dir_net_1 ), 
        .C(\paomadeng_0/led_r1[1]_net_1 ), .Y(
        \paomadeng_0/led_r1_8_i_0_tz[0] ));
    OA1B \paomadeng_1/led_r_RNO_0[7]  (.A(\paomadeng_1/N_69 ), .B(
        \paomadeng_1/N_89 ), .C(\paomadeng_1/N_131 ), .Y(
        \paomadeng_1/led_r_11_i_1[7] ));
    IOPAD_TRI \led_0_pad[5]/U0/U0  (.D(\led_0_pad[5]/U0/NET1 ), .E(
        \led_0_pad[5]/U0/NET2 ), .PAD(led_0[5]));
    AO1A \paomadeng_0/led_r1_RNO_0[5]  (.A(\paomadeng_0/dir_0_net_1 ), 
        .B(\paomadeng_0/led_r1[5]_net_1 ), .C(
        \paomadeng_0/led_r1[6]_net_1 ), .Y(
        \paomadeng_0/led_r1_8_i_a6_0[5] ));
    OR2A \paomadeng_0/led_r1_RNIGDO4[7]  (.A(\paomadeng_0/N_66 ), .B(
        \paomadeng_0/led_r1[7]_net_1 ), .Y(\paomadeng_0/N_83 ));
    NOR2B \paomadeng_0/un8_led_ADD_7x7_medium_area_I2_CO1  (.A(
        \paomadeng_0/led_r[3]_net_1 ), .B(\led_0_c[2] ), .Y(
        \paomadeng_0/N109 ));
    OR3C \paomadeng_0/led_RNO_5[7]  (.A(\paomadeng_0/dir_0_net_1 ), .B(
        \sel_0_c[0] ), .C(\paomadeng_0/N_68 ), .Y(\paomadeng_0/N_147 ));
    XOR2 \paomadeng_1/un8_led_ADD_7x7_medium_area_I1_S_0  (.A(
        \paomadeng_1/led_r[2]_net_1 ), .B(\led_1_c[1] ), .Y(
        \paomadeng_1/N106 ));
    NOR3B \paomadeng_2/led_r_RNO[3]  (.A(\paomadeng_2/N_195 ), .B(
        \paomadeng_2/led_r_11_0_o6_0[0] ), .C(\paomadeng_2/N_124 ), .Y(
        \paomadeng_2/N_18 ));
    OA1C \paomadeng_1/led_r_RNO_0[2]  (.A(\paomadeng_1/led_r[2]_net_1 )
        , .B(\paomadeng_1/dir_0_net_1 ), .C(\sel_1_c[0] ), .Y(
        \paomadeng_1/led_r_11_i_a6_0[2] ));
    IOPAD_TRI \led_2_pad[3]/U0/U0  (.D(\led_2_pad[3]/U0/NET1 ), .E(
        \led_2_pad[3]/U0/NET2 ), .PAD(led_2[3]));
    DFN1E0 \paomadeng_1/led[4]  (.D(\paomadeng_1/N_61_i_0 ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[4] ));
    DFN1E0 \paomadeng_1/led[5]  (.D(\paomadeng_1/N_59_i_0 ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[5] ));
    OR2A \paomadeng_2/cnt1_RNIUDAK_0  (.A(\paomadeng_2/N_81 ), .B(
        \paomadeng_2/cnt1_net_1 ), .Y(\paomadeng_2/N_155 ));
    NOR3B \paomadeng_0/led_r_RNO[3]  (.A(\paomadeng_0/N_195 ), .B(
        \paomadeng_0/led_r_11_0_o6_0[0] ), .C(\paomadeng_0/N_124 ), .Y(
        \paomadeng_0/N_18 ));
    NOR2B \paomadeng_0/un8_led_ADD_7x7_medium_area_I4_CO1  (.A(
        \paomadeng_0/led_r[5]_net_1 ), .B(\led_0_c[4] ), .Y(
        \paomadeng_0/N113 ));
    AO1B \paomadeng_1/cnt2_RNIP9BS[2]  (.A(
        \paomadeng_1/un1_dir_2_sqmuxa_0_a2_0 ), .B(\paomadeng_1/N_87 ), 
        .C(\paomadeng_1/N_198 ), .Y(\paomadeng_1/un1_dir_2_sqmuxa ));
    AO1 \paomadeng_2/led_RNO_4[3]  (.A(\paomadeng_2/led_r[2]_net_1 ), 
        .B(\paomadeng_2/led_r1[4]_net_1 ), .C(\paomadeng_2/N_186 ), .Y(
        \paomadeng_2/led_RNO_4[3]_net_1 ));
    DFN1E0 \paomadeng_2/led[3]  (.D(\paomadeng_2/N_63_i_0 ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[3] ));
    DFN1E0 \paomadeng_0/led[5]  (.D(\paomadeng_0/N_59_i_0 ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[5] ));
    XA1B \paomadeng_1/cnt2_RNO[1]  (.A(\paomadeng_1/cnt2[0]_net_1 ), 
        .B(\paomadeng_1/cnt2[1]_net_1 ), .C(rst_c_0), .Y(
        \paomadeng_1/N_43 ));
    AO1A \paomadeng_2/led_r1_RNO_0[1]  (.A(\paomadeng_2/dir_0_net_1 ), 
        .B(\paomadeng_2/led_r1[1]_net_1 ), .C(
        \paomadeng_2/led_r1[2]_net_1 ), .Y(
        \paomadeng_2/led_r1_8_i_a6_0[1] ));
    NOR2B \paomadeng_1/un8_led_ADD_7x7_medium_area_I2_CO1  (.A(
        \paomadeng_1/led_r[3]_net_1 ), .B(\led_1_c[2] ), .Y(
        \paomadeng_1/N109 ));
    AO1A \paomadeng_2/cnt2lde_0  (.A(\sel_2_c[1] ), .B(\sel_2_c[0] ), 
        .C(rst_c_0), .Y(\paomadeng_2/cnt2e ));
    OR2B \paomadeng_0/dir_RNI8PIH1  (.A(\paomadeng_0/N_145 ), .B(
        \paomadeng_0/N_72 ), .Y(\paomadeng_0/N_80 ));
    OR3 \paomadeng_1/led_RNO_6[5]  (.A(\paomadeng_1/led_r1[6]_net_1 ), 
        .B(\paomadeng_1/led_r1[5]_net_1 ), .C(
        \paomadeng_1/led_r[4]_net_1 ), .Y(
        \paomadeng_1/led_12_iv_i_a6_1_1[5] ));
    AOI1B \paomadeng_0/led_RNO_3[2]  (.A(\paomadeng_0/un8_led_i_0[2] ), 
        .B(\paomadeng_0/N_201 ), .C(\paomadeng_0/led_RNO_4[2]_net_1 ), 
        .Y(\paomadeng_0/led_12_iv_i_0[2] ));
    NOR3 \paomadeng_0/led_RNO_6[3]  (.A(\paomadeng_0/led_r1[4]_net_1 ), 
        .B(\paomadeng_0/led_r1[3]_net_1 ), .C(
        \paomadeng_0/led_r[2]_net_1 ), .Y(
        \paomadeng_0/led_12_iv_i_a6_1_1[3] ));
    OR2 \paomadeng_0/led_12_iv_0_o2_0[7]  (.A(\sel_0_c[1] ), .B(
        \sel_0_c[0] ), .Y(\paomadeng_0/N_81 ));
    MIN3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I19_Y_0  (.A(
        \led_0_c[5] ), .B(\paomadeng_0/led_r[6]_net_1 ), .C(
        \paomadeng_0/N113 ), .Y(
        \paomadeng_0/ADD_7x7_medium_area_I19_Y_0 ));
    XAI1 \paomadeng_1/led_RNO_0[0]  (.A(\sel_1_c[0] ), .B(\sel_1_c[1] )
        , .C(\paomadeng_1/N_211 ), .Y(\paomadeng_1/N_154 ));
    AO1A \paomadeng_1/led_r_RNO_0[6]  (.A(\paomadeng_1/dir_0_net_1 ), 
        .B(\paomadeng_1/led_r[6]_net_1 ), .C(\sel_1_c[0] ), .Y(
        \paomadeng_1/led_r_11_i_a6_0[6] ));
    OR2B \paomadeng_0/cnt3_RNI9ON6[1]  (.A(\sel_0_c[1] ), .B(
        \paomadeng_0/N_66 ), .Y(\paomadeng_0/N_69 ));
    IOPAD_TRI \led_1_pad[5]/U0/U0  (.D(\led_1_pad[5]/U0/NET1 ), .E(
        \led_1_pad[5]/U0/NET2 ), .PAD(led_1[5]));
    NOR3 \paomadeng_1/led_RNO_6[4]  (.A(\paomadeng_1/led_r1[5]_net_1 ), 
        .B(\paomadeng_1/led_r1[4]_net_1 ), .C(
        \paomadeng_1/led_r[4]_net_1 ), .Y(
        \paomadeng_1/led_12_iv_i_a6_1_1[4] ));
    AOI1B \paomadeng_0/led_r_RNO[4]  (.A(
        \paomadeng_0/led_r_11_i_a6_0[4] ), .B(\paomadeng_0/N_205 ), .C(
        \paomadeng_0/N_123 ), .Y(\paomadeng_0/N_20 ));
    NOR2B \paomadeng_1/un8_led_ADD_7x7_medium_area_I4_CO1  (.A(
        \paomadeng_1/led_r[5]_net_1 ), .B(\led_1_c[4] ), .Y(
        \paomadeng_1/N113 ));
    OR3 \paomadeng_2/led_RNO_6[5]  (.A(\paomadeng_2/led_r1[6]_net_1 ), 
        .B(\paomadeng_2/led_r1[5]_net_1 ), .C(
        \paomadeng_2/led_r[4]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_a6_1_1[5] ));
    IOPAD_IN \sel_2_pad[0]/U0/U0  (.PAD(sel_2[0]), .Y(
        \sel_2_pad[0]/U0/NET1 ));
    IOTRI_OB_EB \led_1_pad[1]/U0/U1  (.D(\led_1_c[1] ), .E(VCC), .DOUT(
        \led_1_pad[1]/U0/NET1 ), .EOUT(\led_1_pad[1]/U0/NET2 ));
    NOR2A \paomadeng_0/un1_rst_i_a6  (.A(\paomadeng_0/led_r38 ), .B(
        rst_c), .Y(\paomadeng_0/N_118 ));
    DFN1E1 \paomadeng_2/led_r1[6]  (.D(\paomadeng_2/N_38 ), .CLK(clk_c)
        , .E(\paomadeng_2/N_118 ), .Q(\paomadeng_2/led_r1[6]_net_1 ));
    XAI1A \paomadeng_1/led_RNO_0[5]  (.A(\paomadeng_1/N112 ), .B(
        \paomadeng_1/N132 ), .C(\paomadeng_1/N_201 ), .Y(
        \paomadeng_1/N_165 ));
    IOPAD_TRI \led_2_pad[4]/U0/U0  (.D(\led_2_pad[4]/U0/NET1 ), .E(
        \led_2_pad[4]/U0/NET2 ), .PAD(led_2[4]));
    OR3 \paomadeng_0/led_RNO_5[2]  (.A(\paomadeng_0/led_r1[2]_net_1 ), 
        .B(\paomadeng_0/led_r1[3]_net_1 ), .C(
        \paomadeng_0/led_r[2]_net_1 ), .Y(
        \paomadeng_0/led_12_iv_i_a6_1_1[2] ));
    XA1 \paomadeng_1/un8_led_ADD_7x7_medium_area_I19_un1_Y_0  (.A(
        \led_1_c[5] ), .B(\paomadeng_1/led_r[6]_net_1 ), .C(
        \paomadeng_1/N112 ), .Y(
        \paomadeng_1/ADD_7x7_medium_area_I19_un1_Y_0 ));
    DFN1 \paomadeng_0/cnt3[1]  (.D(\paomadeng_0/cnt3_6[1] ), .CLK(
        clk_c), .Q(\paomadeng_0/cnt3[1]_net_1 ));
    XA1B \paomadeng_0/dir_RNI9N5U  (.A(\paomadeng_0/dir_net_1 ), .B(
        \paomadeng_0/un1_dir_2_sqmuxa ), .C(rst_c), .Y(
        \paomadeng_0/N_240 ));
    DFN1E0 \paomadeng_2/led_r[7]  (.D(\paomadeng_2/N_26_i_0 ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_2 ), .Q(
        \paomadeng_2/led_r[7]_net_1 ));
    OR3A \paomadeng_1/cnt2_RNIBB8E[1]  (.A(\sel_1_c[0] ), .B(
        \sel_1_c[1] ), .C(\paomadeng_1/N_68 ), .Y(\paomadeng_1/N_184 ));
    NOR3 \paomadeng_0/led_RNO_3[6]  (.A(\paomadeng_0/led_r1[6]_net_1 ), 
        .B(\paomadeng_0/led_r1[7]_net_1 ), .C(
        \paomadeng_0/led_r[6]_net_1 ), .Y(
        \paomadeng_0/led_12_iv_i_a6_1_1[6] ));
    DFN1E0 \paomadeng_0/led[2]  (.D(\paomadeng_0/N_65_i_0 ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[2] ));
    AO1A \paomadeng_1/led_r1_RNO_0[3]  (.A(\paomadeng_1/dir_0_net_1 ), 
        .B(\paomadeng_1/led_r1[3]_net_1 ), .C(
        \paomadeng_1/led_r1[4]_net_1 ), .Y(
        \paomadeng_1/led_r1_8_i_a6_0[3] ));
    DFN1E1 \paomadeng_0/cnt2[1]  (.D(\paomadeng_0/N_43 ), .CLK(clk_c), 
        .E(\paomadeng_0/cnt2e ), .Q(\paomadeng_0/cnt2[1]_net_1 ));
    XA1B \paomadeng_1/cnt2_RNO[2]  (.A(\paomadeng_1/N_87 ), .B(
        \paomadeng_1/cnt2[2]_net_1 ), .C(rst_c), .Y(\paomadeng_1/N_45 )
        );
    AOI1 \paomadeng_1/led_r1_RNO[0]  (.A(
        \paomadeng_1/led_r1_8_i_0_tz[0] ), .B(\paomadeng_1/N_66 ), .C(
        \paomadeng_1/N_131 ), .Y(\paomadeng_1/N_55 ));
    OR3B \paomadeng_2/led_r_RNO[0]  (.A(\paomadeng_2/N_195 ), .B(
        \paomadeng_2/led_r_11_0_o6_0[0] ), .C(\paomadeng_2/N_211 ), .Y(
        \paomadeng_2/led_r_11[0] ));
    IOIN_IB \sel_1_pad[0]/U0/U1  (.YIN(\sel_1_pad[0]/U0/NET1 ), .Y(
        \sel_1_c[0] ));
    XA1B \paomadeng_2/cnt3_RNO[0]  (.A(\paomadeng_2/cnt3[0]_net_1 ), 
        .B(\paomadeng_2/led_r38 ), .C(rst_c_0), .Y(
        \paomadeng_2/cnt3_6[0] ));
    NOR2 \paomadeng_1/dir_RNIM7D3  (.A(\paomadeng_1/dir_net_1 ), .B(
        \paomadeng_1/N_66 ), .Y(\paomadeng_1/N_131 ));
    OA1 \paomadeng_0/led_RNO_2[0]  (.A(\paomadeng_0/led_r1[0]_net_1 ), 
        .B(\paomadeng_0/led_r1[1]_net_1 ), .C(\paomadeng_0/led_r38 ), 
        .Y(\paomadeng_0/led_12_0_iv_0_a6_0[0] ));
    IOPAD_IN \sel_0_pad[0]/U0/U0  (.PAD(sel_0[0]), .Y(
        \sel_0_pad[0]/U0/NET1 ));
    NOR2 \paomadeng_2/dir_RNI1TN3  (.A(\paomadeng_2/dir_net_1 ), .B(
        \paomadeng_2/N_66 ), .Y(\paomadeng_2/N_131 ));
    AO1A \paomadeng_0/cnt2lde_0  (.A(\sel_0_c[1] ), .B(\sel_0_c[0] ), 
        .C(rst_c), .Y(\paomadeng_0/cnt2e ));
    OR2A \paomadeng_0/un1_rst_2_0_o6  (.A(\paomadeng_0/N_180 ), .B(
        rst_c), .Y(\paomadeng_0/un1_rst_3 ));
    DFN1E1 \paomadeng_0/cnt2[2]  (.D(\paomadeng_0/N_45 ), .CLK(clk_c), 
        .E(\paomadeng_0/cnt2e ), .Q(\paomadeng_0/cnt2[2]_net_1 ));
    NOR2B \paomadeng_0/led_RNO_6[4]  (.A(\paomadeng_0/led_r[3]_net_1 ), 
        .B(\paomadeng_0/led_r1[5]_net_1 ), .Y(\paomadeng_0/N_113 ));
    NOR3 \paomadeng_1/led_RNO_3[2]  (.A(\paomadeng_1/led_r1[3]_net_1 ), 
        .B(\paomadeng_1/led_r1[2]_net_1 ), .C(
        \paomadeng_1/led_r[2]_net_1 ), .Y(
        \paomadeng_1/led_12_iv_i_a6_1_1[2] ));
    NOR2A \paomadeng_1/led_RNO_2[4]  (.A(
        \paomadeng_1/led_12_iv_i_0[4] ), .B(\paomadeng_1/N_80 ), .Y(
        \paomadeng_1/led_12_iv_i_2[4] ));
    XOR2 \paomadeng_1/un8_led_ADD_7x7_medium_area_I4_S_0  (.A(
        \paomadeng_1/led_r[5]_net_1 ), .B(\led_1_c[4] ), .Y(
        \paomadeng_1/N112 ));
    XOR2 \paomadeng_0/un8_led_ADD_7x7_medium_area_I27_Y_0_0  (.A(
        \paomadeng_0/led_r[7]_net_1 ), .B(\led_0_c[6] ), .Y(
        \paomadeng_0/ADD_7x7_medium_area_I27_Y_0_0 ));
    IOTRI_OB_EB \led_1_pad[7]/U0/U1  (.D(\led_1_c[7] ), .E(VCC), .DOUT(
        \led_1_pad[7]/U0/NET1 ), .EOUT(\led_1_pad[7]/U0/NET2 ));
    IOPAD_TRI \led_1_pad[6]/U0/U0  (.D(\led_1_pad[6]/U0/NET1 ), .E(
        \led_1_pad[6]/U0/NET2 ), .PAD(led_1[6]));
    OA1C \paomadeng_1/led_r1_RNO[5]  (.A(\paomadeng_1/N_66 ), .B(
        \paomadeng_1/led_r1_8_i_a6_0[5] ), .C(\paomadeng_1/N_131 ), .Y(
        \paomadeng_1/N_36 ));
    OR2 \paomadeng_0/cnt1_RNI02JJ_0  (.A(\paomadeng_0/cnt1_net_1 ), .B(
        \paomadeng_0/N_81 ), .Y(\paomadeng_0/N_155 ));
    AO1 \paomadeng_2/led_RNO_4[1]  (.A(\paomadeng_2/led_r[0]_net_1 ), 
        .B(\paomadeng_2/led_r1[2]_net_1 ), .C(\paomadeng_2/N_186 ), .Y(
        \paomadeng_2/led_RNO_4_0[1] ));
    IOPAD_TRI \led_1_pad[3]/U0/U0  (.D(\led_1_pad[3]/U0/NET1 ), .E(
        \led_1_pad[3]/U0/NET2 ), .PAD(led_1[3]));
    OR2A \paomadeng_2/led_r1_RNIQEB6[7]  (.A(\paomadeng_2/N_66 ), .B(
        \paomadeng_2/led_r1[7]_net_1 ), .Y(\paomadeng_2/N_83 ));
    OR2B \paomadeng_1/dir_RNIHFCJ1  (.A(\paomadeng_1/N_145 ), .B(
        \paomadeng_1/N_72 ), .Y(\paomadeng_1/N_80 ));
    DFN1 \paomadeng_2/cnt3[0]  (.D(\paomadeng_2/cnt3_6[0] ), .CLK(
        clk_c), .Q(\paomadeng_2/cnt3[0]_net_1 ));
    AO1B \paomadeng_1/un8_led_ADD_7x7_medium_area_I12_Y  (.A(
        \paomadeng_1/ADD_7x7_medium_area_I12_un1_Y_0 ), .B(
        \paomadeng_1/N122 ), .C(
        \paomadeng_1/ADD_7x7_medium_area_I12_Y_0 ), .Y(
        \paomadeng_1/N132 ));
    DFN1E0 \paomadeng_2/led[7]  (.D(\paomadeng_2/led_12[7] ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[7] ));
    DFN1E0 \paomadeng_0/led_r[2]  (.D(\paomadeng_0/N_16 ), .CLK(clk_c), 
        .E(\paomadeng_0/un1_rst_2 ), .Q(\paomadeng_0/led_r[2]_net_1 ));
    IOTRI_OB_EB \led_0_pad[5]/U0/U1  (.D(\led_0_c[5] ), .E(VCC), .DOUT(
        \led_0_pad[5]/U0/NET1 ), .EOUT(\led_0_pad[5]/U0/NET2 ));
    XAI1A \paomadeng_2/led_RNO_0[5]  (.A(\paomadeng_2/N112 ), .B(
        \paomadeng_2/N132 ), .C(\paomadeng_2/N_201 ), .Y(
        \paomadeng_2/N_165 ));
    NOR3B \paomadeng_1/led_RNO[1]  (.A(\paomadeng_1/led_12_iv_i_0[1] ), 
        .B(\paomadeng_1/led_12_iv_i_1[1] ), .C(\paomadeng_1/N_79 ), .Y(
        \paomadeng_1/N_48_i_0 ));
    OA1C \paomadeng_1/led_r1_RNO[3]  (.A(\paomadeng_1/N_66 ), .B(
        \paomadeng_1/led_r1_8_i_a6_0[3] ), .C(\paomadeng_1/N_131 ), .Y(
        \paomadeng_1/N_32 ));
    OR2A \paomadeng_1/led_RNO_2[3]  (.A(\paomadeng_1/N_203 ), .B(
        \led_1_c[2] ), .Y(\paomadeng_1/N_171 ));
    NOR2 \paomadeng_0/led_r_RNIVFRC[3]  (.A(
        \paomadeng_0/led_r[3]_net_1 ), .B(\paomadeng_0/N_69 ), .Y(
        \paomadeng_0/N_205 ));
    NOR2 \paomadeng_2/led_12_iv_0_o2_0[7]  (.A(\sel_2_c[1] ), .B(
        \sel_2_c[0] ), .Y(\paomadeng_2/N_81 ));
    AO1B \paomadeng_0/cnt2_RNIOPTQ[2]  (.A(
        \paomadeng_0/un1_dir_2_sqmuxa_0_a2_0 ), .B(\paomadeng_0/N_87 ), 
        .C(\paomadeng_0/N_198 ), .Y(\paomadeng_0/un1_dir_2_sqmuxa ));
    DFN1E0 \paomadeng_2/led_r[0]  (.D(\paomadeng_2/led_r_11[0] ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_2 ), .Q(
        \paomadeng_2/led_r[0]_net_1 ));
    OR2A \paomadeng_0/cnt3_RNIMNED_0[1]  (.A(\paomadeng_0/led_r38 ), 
        .B(\paomadeng_0/N_66 ), .Y(\paomadeng_0/N_185 ));
    IOTRI_OB_EB \led_2_pad[3]/U0/U1  (.D(\led_2_c[3] ), .E(VCC), .DOUT(
        \led_2_pad[3]/U0/NET1 ), .EOUT(\led_2_pad[3]/U0/NET2 ));
    MIN3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I19_Y_0  (.A(
        \led_2_c[5] ), .B(\paomadeng_2/led_r[6]_net_1 ), .C(
        \paomadeng_2/N113 ), .Y(
        \paomadeng_2/ADD_7x7_medium_area_I19_Y_0 ));
    OR2 \paomadeng_2/cnt3_RNIVUK[1]  (.A(\paomadeng_2/cnt3[1]_net_1 ), 
        .B(\paomadeng_2/cnt3[0]_net_1 ), .Y(\paomadeng_2/N_66 ));
    XO1A \paomadeng_0/led_RNO_2[7]  (.A(\paomadeng_0/N134 ), .B(
        \paomadeng_0/ADD_7x7_medium_area_I27_Y_0_0 ), .C(
        \paomadeng_0/led_12_iv_0_a6_0_0[7] ), .Y(\paomadeng_0/N_144_i )
        );
    DFN1E1 \paomadeng_1/led_r1[3]  (.D(\paomadeng_1/N_32 ), .CLK(clk_c)
        , .E(\paomadeng_1/N_118 ), .Q(\paomadeng_1/led_r1[3]_net_1 ));
    DFN1E0 \paomadeng_0/led_r[7]  (.D(\paomadeng_0/N_26_i_0 ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_2 ), .Q(
        \paomadeng_0/led_r[7]_net_1 ));
    MIN3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I20_Y  (.A(
        \led_2_c[4] ), .B(\paomadeng_2/led_r[5]_net_1 ), .C(
        \paomadeng_2/N132 ), .Y(\paomadeng_2/N136_i ));
    AO1B \paomadeng_2/un8_led_ADD_7x7_medium_area_I12_Y  (.A(
        \paomadeng_2/ADD_7x7_medium_area_I12_un1_Y_0 ), .B(
        \paomadeng_2/N122 ), .C(
        \paomadeng_2/ADD_7x7_medium_area_I12_Y_0 ), .Y(
        \paomadeng_2/N132 ));
    DFN1E1 \paomadeng_2/led_r1[1]  (.D(\paomadeng_2/N_28 ), .CLK(clk_c)
        , .E(\paomadeng_2/N_118 ), .Q(\paomadeng_2/led_r1[1]_net_1 ));
    IOPAD_TRI \led_0_pad[2]/U0/U0  (.D(\led_0_pad[2]/U0/NET1 ), .E(
        \led_0_pad[2]/U0/NET2 ), .PAD(led_0[2]));
    IOTRI_OB_EB \led_1_pad[5]/U0/U1  (.D(\led_1_c[5] ), .E(VCC), .DOUT(
        \led_1_pad[5]/U0/NET1 ), .EOUT(\led_1_pad[5]/U0/NET2 ));
    OA1C \paomadeng_2/led_r_RNO_0[3]  (.A(\paomadeng_2/N_186 ), .B(
        \paomadeng_2/N_205 ), .C(\paomadeng_2/led_r[2]_net_1 ), .Y(
        \paomadeng_2/N_124 ));
    AOI1B \paomadeng_2/led_RNO[6]  (.A(\paomadeng_2/un8_led_i_0[6] ), 
        .B(\paomadeng_2/N_201 ), .C(\paomadeng_2/led_12_iv_i_2[6] ), 
        .Y(\paomadeng_2/N_57_i_0 ));
    DFN1E0 \paomadeng_1/led_r[5]  (.D(\paomadeng_1/N_22 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[5]_net_1 ));
    NOR3 \paomadeng_2/led_RNO_3[3]  (.A(\paomadeng_2/led_r1[4]_net_1 ), 
        .B(\paomadeng_2/led_r1[3]_net_1 ), .C(
        \paomadeng_2/led_r[2]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_a6_1_1[3] ));
    AXOI5 \paomadeng_0/cnt2_RNI22FD_0[1]  (.A(\paomadeng_0/N_68 ), .B(
        \sel_0_c[0] ), .C(\sel_0_c[1] ), .Y(
        \paomadeng_0/led_r_11_0_o6_0[0] ));
    IOIN_IB \sel_2_pad[0]/U0/U1  (.YIN(\sel_2_pad[0]/U0/NET1 ), .Y(
        \sel_2_c[0] ));
    AO1 \paomadeng_1/dir_RNIINDV_0  (.A(\paomadeng_1/N_185 ), .B(
        \paomadeng_1/N_184 ), .C(\paomadeng_1/dir_net_1 ), .Y(
        \paomadeng_1/N_123 ));
    NOR2 \paomadeng_0/dir_RNIBI23  (.A(\paomadeng_0/dir_net_1 ), .B(
        \paomadeng_0/N_66 ), .Y(\paomadeng_0/N_131 ));
    NOR2A \paomadeng_2/led_RNO_2[4]  (.A(
        \paomadeng_2/led_12_iv_i_0[4] ), .B(\paomadeng_2/N_80 ), .Y(
        \paomadeng_2/led_12_iv_i_2[4] ));
    NOR2B \paomadeng_0/un8_led_ADD_7x7_medium_area_I0_CO1  (.A(
        \paomadeng_0/led_r[1]_net_1 ), .B(\led_0_c[0] ), .Y(
        \paomadeng_0/N105 ));
    OR2B \paomadeng_0/un1_rst_2_0_a2  (.A(\sel_0_c[1] ), .B(
        \sel_0_c[0] ), .Y(\paomadeng_0/N_180 ));
    XOR3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I26_Y_0  (.A(
        \led_2_c[5] ), .B(\paomadeng_2/led_r[6]_net_1 ), .C(
        \paomadeng_2/N136_i ), .Y(\paomadeng_2/un8_led_i_0[6] ));
    AO1 \paomadeng_0/led_RNO_0[3]  (.A(\paomadeng_0/led_r[2]_net_1 ), 
        .B(\paomadeng_0/led_r1[4]_net_1 ), .C(\paomadeng_0/N_186 ), .Y(
        \paomadeng_0/led_RNO_0[3]_net_1 ));
    OA1C \paomadeng_0/led_r1_RNO[2]  (.A(\paomadeng_0/N_66 ), .B(
        \paomadeng_0/led_r1_8_i_a6_0[2] ), .C(\paomadeng_0/N_131 ), .Y(
        \paomadeng_0/N_30 ));
    AO1A \paomadeng_2/led_r1_RNO_0[4]  (.A(\paomadeng_2/dir_0_net_1 ), 
        .B(\paomadeng_2/led_r1[4]_net_1 ), .C(
        \paomadeng_2/led_r1[5]_net_1 ), .Y(
        \paomadeng_2/led_r1_8_i_a6_0[4] ));
    IOTRI_OB_EB \led_2_pad[4]/U0/U1  (.D(\led_2_c[4] ), .E(VCC), .DOUT(
        \led_2_pad[4]/U0/NET1 ), .EOUT(\led_2_pad[4]/U0/NET2 ));
    DFN1 \paomadeng_2/cnt3[1]  (.D(\paomadeng_2/cnt3_6[1] ), .CLK(
        clk_c), .Q(\paomadeng_2/cnt3[1]_net_1 ));
    AO1 \paomadeng_2/dir_RNISNR01_0  (.A(\paomadeng_2/N_185 ), .B(
        \paomadeng_2/N_184 ), .C(\paomadeng_2/dir_net_1 ), .Y(
        \paomadeng_2/N_123 ));
    AOI1B \paomadeng_0/led_r_RNO[6]  (.A(
        \paomadeng_0/led_r_11_i_a6_0[6] ), .B(\paomadeng_0/N_204 ), .C(
        \paomadeng_0/N_123 ), .Y(\paomadeng_0/N_24 ));
    OR2A \paomadeng_1/dir_RNIVB9A_0  (.A(\paomadeng_1/N_69 ), .B(
        \paomadeng_1/dir_net_1 ), .Y(\paomadeng_1/N_195 ));
    DFN1E1 \paomadeng_2/cnt2[1]  (.D(\paomadeng_2/N_43 ), .CLK(clk_c), 
        .E(\paomadeng_2/cnt2e ), .Q(\paomadeng_2/cnt2[1]_net_1 ));
    DFN1E1 \paomadeng_0/led_r1[3]  (.D(\paomadeng_0/N_32 ), .CLK(clk_c)
        , .E(\paomadeng_0/N_118 ), .Q(\paomadeng_0/led_r1[3]_net_1 ));
    MAJ3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I11_Y  (.A(
        \led_1_c[1] ), .B(\paomadeng_1/led_r[2]_net_1 ), .C(
        \paomadeng_1/N105 ), .Y(\paomadeng_1/N122 ));
    DFN1E0 \paomadeng_0/led[4]  (.D(\paomadeng_0/N_61_i_0 ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[4] ));
    DFN1E1 \paomadeng_1/cnt2[0]  (.D(\paomadeng_1/cnt2_n0 ), .CLK(
        clk_c), .E(\paomadeng_1/cnt2e ), .Q(
        \paomadeng_1/cnt2[0]_net_1 ));
    NOR2B \paomadeng_1/un8_led_ADD_7x7_medium_area_I0_CO1  (.A(
        \paomadeng_1/led_r[1]_net_1 ), .B(\led_1_c[0] ), .Y(
        \paomadeng_1/N105 ));
    NOR3B \paomadeng_1/led_RNO[3]  (.A(\paomadeng_1/led_12_iv_i_0[3] ), 
        .B(\paomadeng_1/led_12_iv_i_1[3] ), .C(\paomadeng_1/N_79 ), .Y(
        \paomadeng_1/N_63_i_0 ));
    DFN1E1 \paomadeng_2/cnt2[2]  (.D(\paomadeng_2/N_45 ), .CLK(clk_c), 
        .E(\paomadeng_2/cnt2e ), .Q(\paomadeng_2/cnt2[2]_net_1 ));
    XAI1A \paomadeng_0/led_RNO_4[3]  (.A(\paomadeng_0/N108 ), .B(
        \paomadeng_0/N122 ), .C(\paomadeng_0/N_201 ), .Y(
        \paomadeng_0/N_173 ));
    IOIN_IB \sel_0_pad[0]/U0/U1  (.YIN(\sel_0_pad[0]/U0/NET1 ), .Y(
        \sel_0_c[0] ));
    IOPAD_TRI \led_2_pad[0]/U0/U0  (.D(\led_2_pad[0]/U0/NET1 ), .E(
        \led_2_pad[0]/U0/NET2 ), .PAD(led_2[0]));
    OA1A \paomadeng_1/cnt2_RNI85JE[1]  (.A(\sel_1_c[0] ), .B(
        \paomadeng_1/N_68 ), .C(\paomadeng_1/N_182 ), .Y(
        \paomadeng_1/N_71 ));
    OR2B \paomadeng_0/led_RNO_1[6]  (.A(
        \paomadeng_0/led_12_iv_i_a6_1_1[6] ), .B(\paomadeng_0/N_204 ), 
        .Y(\paomadeng_0/N_160 ));
    MAJ3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I11_Y  (.A(
        \led_0_c[1] ), .B(\paomadeng_0/led_r[2]_net_1 ), .C(
        \paomadeng_0/N105 ), .Y(\paomadeng_0/N122 ));
    XOR2 \paomadeng_2/un8_led_ADD_7x7_medium_area_I3_S_0  (.A(
        \paomadeng_2/led_r[4]_net_1 ), .B(\led_2_c[3] ), .Y(
        \paomadeng_2/N110 ));
    OR2 \paomadeng_0/led_r_RNO_2[7]  (.A(\paomadeng_0/led_r[6]_net_1 ), 
        .B(\paomadeng_0/N_186 ), .Y(\paomadeng_0/N_130 ));
    IOTRI_OB_EB \led_1_pad[6]/U0/U1  (.D(\led_1_c[6] ), .E(VCC), .DOUT(
        \led_1_pad[6]/U0/NET1 ), .EOUT(\led_1_pad[6]/U0/NET2 ));
    OA1C \paomadeng_1/led_r_RNO_0[4]  (.A(\paomadeng_1/led_r[4]_net_1 )
        , .B(\paomadeng_1/dir_0_net_1 ), .C(\sel_1_c[0] ), .Y(
        \paomadeng_1/led_r_11_i_a6_0[4] ));
    XAI1A \paomadeng_0/led_RNO_5[5]  (.A(\paomadeng_0/N112 ), .B(
        \paomadeng_0/N132 ), .C(\paomadeng_0/N_201 ), .Y(
        \paomadeng_0/N_165 ));
    IOTRI_OB_EB \led_1_pad[3]/U0/U1  (.D(\led_1_c[3] ), .E(VCC), .DOUT(
        \led_1_pad[3]/U0/NET1 ), .EOUT(\led_1_pad[3]/U0/NET2 ));
    DFN1E1 \paomadeng_1/led_r1[7]  (.D(\paomadeng_1/led_r1_8[7] ), 
        .CLK(clk_c), .E(\paomadeng_1/N_118 ), .Q(
        \paomadeng_1/led_r1[7]_net_1 ));
    NOR3 \paomadeng_1/led_RNO_3[3]  (.A(\paomadeng_1/led_r1[4]_net_1 ), 
        .B(\paomadeng_1/led_r1[3]_net_1 ), .C(
        \paomadeng_1/led_r[2]_net_1 ), .Y(
        \paomadeng_1/led_12_iv_i_a6_1_1[3] ));
    OA1B \paomadeng_0/led_r1_RNO[6]  (.A(\paomadeng_0/N_83 ), .B(
        \paomadeng_0/N_106 ), .C(\paomadeng_0/N_131 ), .Y(
        \paomadeng_0/N_38 ));
    NOR2A \paomadeng_1/led_r1_RNO_0[6]  (.A(
        \paomadeng_1/led_r1[6]_net_1 ), .B(\paomadeng_1/dir_net_1 ), 
        .Y(\paomadeng_1/N_106 ));
    DFN1 \paomadeng_0/dir  (.D(\paomadeng_0/N_240 ), .CLK(clk_c), .Q(
        \paomadeng_0/dir_net_1 ));
    OR2B \paomadeng_2/un1_rst_2_0_a2  (.A(\sel_2_c[1] ), .B(
        \sel_2_c[0] ), .Y(\paomadeng_2/N_180 ));
    OR2A \paomadeng_0/dir_RNIPLP9_0  (.A(\paomadeng_0/N_69 ), .B(
        \paomadeng_0/dir_net_1 ), .Y(\paomadeng_0/N_195 ));
    AOI1B \paomadeng_1/led_r_RNO[4]  (.A(
        \paomadeng_1/led_r_11_i_a6_0[4] ), .B(\paomadeng_1/N_205 ), .C(
        \paomadeng_1/N_123 ), .Y(\paomadeng_1/N_20 ));
    NOR3B \paomadeng_2/cnt2_RNINLCE[2]  (.A(\sel_2_c[0] ), .B(
        \paomadeng_2/cnt2[2]_net_1 ), .C(\sel_2_c[1] ), .Y(
        \paomadeng_2/un1_dir_2_sqmuxa_0_a2_0 ));
    OA1C \paomadeng_0/led_r1_RNO[1]  (.A(\paomadeng_0/N_66 ), .B(
        \paomadeng_0/led_r1_8_i_a6_0[1] ), .C(\paomadeng_0/N_131 ), .Y(
        \paomadeng_0/N_28 ));
    NOR2A \paomadeng_2/dir_RNI5V3A  (.A(\sel_2_c[0] ), .B(
        \paomadeng_2/dir_net_1 ), .Y(\paomadeng_2/N_201 ));
    XA1B \paomadeng_2/cnt1_RNO  (.A(\paomadeng_2/N_81 ), .B(
        \paomadeng_2/cnt1_net_1 ), .C(rst_c_0), .Y(\paomadeng_2/N_52 ));
    OR2 \paomadeng_0/led_r_RNO_1[7]  (.A(\paomadeng_0/N_89 ), .B(
        \paomadeng_0/N_69 ), .Y(\paomadeng_0/led_r_RNO_1[7]_net_1 ));
    AO1A \paomadeng_0/led_r1_RNO_0[3]  (.A(\paomadeng_0/dir_0_net_1 ), 
        .B(\paomadeng_0/led_r1[3]_net_1 ), .C(
        \paomadeng_0/led_r1[4]_net_1 ), .Y(
        \paomadeng_0/led_r1_8_i_a6_0[3] ));
    OA1B \paomadeng_0/led_RNO_2[4]  (.A(\paomadeng_0/N_186 ), .B(
        \paomadeng_0/N_113 ), .C(\paomadeng_0/N_80 ), .Y(
        \paomadeng_0/led_12_iv_i_1[4] ));
    NOR3C \paomadeng_0/led_RNO[5]  (.A(\paomadeng_0/led_12_iv_i_0[5] ), 
        .B(\paomadeng_0/N_163 ), .C(\paomadeng_0/led_12_iv_i_1[5] ), 
        .Y(\paomadeng_0/N_59_i_0 ));
    DFN1E0 \paomadeng_2/led[5]  (.D(\paomadeng_2/N_59_i_0 ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[5] ));
    AO1 \paomadeng_0/led_RNO_0[2]  (.A(\paomadeng_0/led_r[1]_net_1 ), 
        .B(\paomadeng_0/led_r1[3]_net_1 ), .C(\paomadeng_0/N_186 ), .Y(
        \paomadeng_0/led_RNO_0[2]_net_1 ));
    IOIN_IB \rst_pad/U0/U1  (.YIN(\rst_pad/U0/NET1 ), .Y(rst_c));
    MAJ3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I11_Y  (.A(
        \led_2_c[1] ), .B(\paomadeng_2/led_r[2]_net_1 ), .C(
        \paomadeng_2/N105 ), .Y(\paomadeng_2/N122 ));
    OR2A \paomadeng_2/cnt3_RNI65NE_0[1]  (.A(\paomadeng_2/led_r38 ), 
        .B(\paomadeng_2/N_66 ), .Y(\paomadeng_2/N_185 ));
    AO1 \paomadeng_2/cnt2_RNIOL8M[1]  (.A(\sel_2_c[0] ), .B(
        \paomadeng_2/N_68 ), .C(\paomadeng_2/un1_rst_3 ), .Y(
        \paomadeng_2/un1_rst_2 ));
    XA1C \paomadeng_1/cnt1_RNO  (.A(\paomadeng_1/N_81 ), .B(
        \paomadeng_1/cnt1_net_1 ), .C(rst_c), .Y(\paomadeng_1/N_52 ));
    OR3 \paomadeng_1/cnt2_RNIQ6G[1]  (.A(\paomadeng_1/cnt2[2]_net_1 ), 
        .B(\paomadeng_1/cnt2[1]_net_1 ), .C(
        \paomadeng_1/cnt2[0]_net_1 ), .Y(\paomadeng_1/N_68 ));
    AO1A \paomadeng_1/led_r1_RNO_0[2]  (.A(\paomadeng_1/dir_0_net_1 ), 
        .B(\paomadeng_1/led_r1[2]_net_1 ), .C(
        \paomadeng_1/led_r1[3]_net_1 ), .Y(
        \paomadeng_1/led_r1_8_i_a6_0[2] ));
    IOPAD_TRI \led_0_pad[0]/U0/U0  (.D(\led_0_pad[0]/U0/NET1 ), .E(
        \led_0_pad[0]/U0/NET2 ), .PAD(led_0[0]));
    AO1 \paomadeng_1/led_RNO_0[4]  (.A(\paomadeng_1/led_r[3]_net_1 ), 
        .B(\paomadeng_1/led_r1[5]_net_1 ), .C(\paomadeng_1/N_186 ), .Y(
        \paomadeng_1/led_RNO_0_0[4] ));
    OR2 \paomadeng_2/led_RNO_5[5]  (.A(
        \paomadeng_2/led_12_iv_i_a6_1_1[5] ), .B(\paomadeng_2/N_204 ), 
        .Y(\paomadeng_2/led_RNO_5[5]_net_1 ));
    OR2A \paomadeng_2/dir_RNI52PA  (.A(\paomadeng_2/dir_net_1 ), .B(
        \paomadeng_2/N_69 ), .Y(\paomadeng_2/N_186 ));
    AXOI4 \paomadeng_1/cnt2_RNIBB8E_0[1]  (.A(\paomadeng_1/N_68 ), .B(
        \sel_1_c[0] ), .C(\sel_1_c[1] ), .Y(
        \paomadeng_1/led_r_11_0_o6_0[0] ));
    DFN1E1 \paomadeng_0/led_r1[7]  (.D(\paomadeng_0/led_r1_8[7] ), 
        .CLK(clk_c), .E(\paomadeng_0/N_118 ), .Q(
        \paomadeng_0/led_r1[7]_net_1 ));
    DFN1E1 \paomadeng_2/led_r1[5]  (.D(\paomadeng_2/N_36 ), .CLK(clk_c)
        , .E(\paomadeng_2/N_118 ), .Q(\paomadeng_2/led_r1[5]_net_1 ));
    XA1B \paomadeng_0/cnt3_RNO[0]  (.A(\paomadeng_0/cnt3[0]_net_1 ), 
        .B(\paomadeng_0/led_r38 ), .C(rst_c_0), .Y(
        \paomadeng_0/cnt3_6[0] ));
    OR2B \paomadeng_0/dir_RNI8PIH1_0  (.A(\paomadeng_0/N_155 ), .B(
        \paomadeng_0/N_72 ), .Y(\paomadeng_0/N_79 ));
    OR2 \paomadeng_2/led_RNO_4[6]  (.A(
        \paomadeng_2/led_12_iv_i_a6_1_1[6] ), .B(\paomadeng_2/N_204 ), 
        .Y(\paomadeng_2/led_RNO_4_0[6] ));
    AOI1B \paomadeng_2/led_RNO_1[1]  (.A(
        \paomadeng_2/led_12_iv_i_a6_1_1[1] ), .B(\paomadeng_2/N_206 ), 
        .C(\paomadeng_2/led_RNO_4_0[1] ), .Y(
        \paomadeng_2/led_12_iv_i_1[1] ));
    OR3B \paomadeng_0/led_r_RNO[0]  (.A(\paomadeng_0/N_195 ), .B(
        \paomadeng_0/led_r_11_0_o6_0[0] ), .C(\paomadeng_0/N_211 ), .Y(
        \paomadeng_0/led_r_11[0] ));
    IOPAD_TRI \led_0_pad[6]/U0/U0  (.D(\led_0_pad[6]/U0/NET1 ), .E(
        \led_0_pad[6]/U0/NET2 ), .PAD(led_0[6]));
    OA1 \paomadeng_0/led_r_RNO[2]  (.A(\paomadeng_0/N_206 ), .B(
        \paomadeng_0/led_r_11_i_a6_0[2] ), .C(\paomadeng_0/N_123 ), .Y(
        \paomadeng_0/N_16 ));
    OR2 \paomadeng_0/led_r_RNIT7RC[1]  (.A(
        \paomadeng_0/led_r[1]_net_1 ), .B(\paomadeng_0/N_69 ), .Y(
        \paomadeng_0/N_206 ));
    NOR3C \paomadeng_1/led_r_RNO[7]  (.A(\paomadeng_1/led_r_11_i_1[7] )
        , .B(\paomadeng_1/led_r_11_i_0[7] ), .C(\paomadeng_1/N_130 ), 
        .Y(\paomadeng_1/N_26_i_0 ));
    OA1A \paomadeng_1/led_RNO_0[2]  (.A(\paomadeng_1/N_203 ), .B(
        \led_1_c[1] ), .C(\paomadeng_1/N_179 ), .Y(
        \paomadeng_1/led_12_iv_i_0[2] ));
    OA1C \paomadeng_1/led_r1_RNO[4]  (.A(\paomadeng_1/N_66 ), .B(
        \paomadeng_1/led_r1_8_i_a6_0[4] ), .C(\paomadeng_1/N_131 ), .Y(
        \paomadeng_1/N_34 ));
    IOTRI_OB_EB \led_0_pad[2]/U0/U1  (.D(\led_0_c[2] ), .E(VCC), .DOUT(
        \led_0_pad[2]/U0/NET1 ), .EOUT(\led_0_pad[2]/U0/NET2 ));
    DFN1E0 \paomadeng_1/led[3]  (.D(\paomadeng_1/N_63_i_0 ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[3] ));
    OR2A \paomadeng_2/dir_RNIFC24  (.A(\paomadeng_2/dir_net_1 ), .B(
        \paomadeng_2/N_68 ), .Y(\paomadeng_2/N_99 ));
    XA1B \paomadeng_2/cnt2_RNO[1]  (.A(\paomadeng_2/cnt2[0]_net_1 ), 
        .B(\paomadeng_2/cnt2[1]_net_1 ), .C(rst_c_0), .Y(
        \paomadeng_2/N_43 ));
    OA1A \paomadeng_0/led_RNO_0[0]  (.A(
        \paomadeng_0/led_12_0_iv_0_a6_0[0] ), .B(
        \paomadeng_0/dir_0_net_1 ), .C(\paomadeng_0/N_155 ), .Y(
        \paomadeng_0/led_12_0_iv_0_0[0] ));
    IOPAD_TRI \led_0_pad[7]/U0/U0  (.D(\led_0_pad[7]/U0/NET1 ), .E(
        \led_0_pad[7]/U0/NET2 ), .PAD(led_0[7]));
    OR3B \paomadeng_1/led_r_RNO[0]  (.A(\paomadeng_1/N_195 ), .B(
        \paomadeng_1/led_r_11_0_o6_0[0] ), .C(\paomadeng_1/N_211 ), .Y(
        \paomadeng_1/led_r_11[0] ));
    OA1 \paomadeng_1/led_RNO_1[0]  (.A(\paomadeng_1/dir_0_net_1 ), .B(
        \paomadeng_1/led_12_0_iv_0_a6_0[0] ), .C(\paomadeng_1/N_155 ), 
        .Y(\paomadeng_1/led_12_0_iv_0_0[0] ));
    DFN1E0 \paomadeng_1/led[2]  (.D(\paomadeng_1/N_65_i_0 ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[2] ));
    XAI1A \paomadeng_2/led_RNO_2[1]  (.A(\led_2_c[0] ), .B(
        \paomadeng_2/led_r[1]_net_1 ), .C(\paomadeng_2/N_201 ), .Y(
        \paomadeng_2/N_151 ));
    OA1C \paomadeng_2/led_r1_RNO_0[0]  (.A(
        \paomadeng_2/led_r1[0]_net_1 ), .B(\paomadeng_2/dir_0_net_1 ), 
        .C(\paomadeng_2/led_r1[1]_net_1 ), .Y(
        \paomadeng_2/led_r1_8_i_0_tz[0] ));
    IOPAD_IN \sel_2_pad[1]/U0/U0  (.PAD(sel_2[1]), .Y(
        \sel_2_pad[1]/U0/NET1 ));
    NOR2A \paomadeng_1/led_r38_0_a2  (.A(\sel_1_c[1] ), .B(
        \sel_1_c[0] ), .Y(\paomadeng_1/led_r38 ));
    DFN1E0 \paomadeng_1/led[6]  (.D(\paomadeng_1/N_57_i_0 ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[6] ));
    AO1A \paomadeng_2/led_r1_RNO_0[5]  (.A(\paomadeng_2/dir_0_net_1 ), 
        .B(\paomadeng_2/led_r1[5]_net_1 ), .C(
        \paomadeng_2/led_r1[6]_net_1 ), .Y(
        \paomadeng_2/led_r1_8_i_a6_0[5] ));
    OA1C \paomadeng_2/led_r1_RNO[2]  (.A(\paomadeng_2/N_66 ), .B(
        \paomadeng_2/led_r1_8_i_a6_0[2] ), .C(\paomadeng_2/N_131 ), .Y(
        \paomadeng_2/N_30 ));
    OR2A \paomadeng_1/un1_rst_2_0_o6  (.A(\paomadeng_1/N_180 ), .B(
        rst_c), .Y(\paomadeng_1/un1_rst_2_0_o6_net_1 ));
    OR2B \paomadeng_1/cnt3_RNI6U67[1]  (.A(\sel_1_c[1] ), .B(
        \paomadeng_1/N_66 ), .Y(\paomadeng_1/N_69 ));
    OR2 \paomadeng_1/led_RNO_4[6]  (.A(
        \paomadeng_1/led_12_iv_i_a6_1_1[6] ), .B(\paomadeng_1/N_204 ), 
        .Y(\paomadeng_1/led_RNO_4_1[6] ));
    NOR3 \paomadeng_0/cnt2_RNI7V[1]  (.A(\paomadeng_0/cnt2[2]_net_1 ), 
        .B(\paomadeng_0/cnt2[1]_net_1 ), .C(
        \paomadeng_0/cnt2[0]_net_1 ), .Y(\paomadeng_0/N_68 ));
    OR2B \paomadeng_1/un1_rst_2_0_a2  (.A(\sel_1_c[1] ), .B(
        \sel_1_c[0] ), .Y(\paomadeng_1/N_180 ));
    DFN1E1 \paomadeng_1/led_r1[2]  (.D(\paomadeng_1/N_30 ), .CLK(clk_c)
        , .E(\paomadeng_1/N_118 ), .Q(\paomadeng_1/led_r1[2]_net_1 ));
    OR2A \paomadeng_2/led_RNO_2[7]  (.A(\sel_2_c[0] ), .B(
        \paomadeng_2/N_99 ), .Y(\paomadeng_2/led_RNO_2_0[7] ));
    AO1A \paomadeng_2/led_r_RNO_0[6]  (.A(\paomadeng_2/dir_0_net_1 ), 
        .B(\paomadeng_2/led_r[6]_net_1 ), .C(\sel_2_c[0] ), .Y(
        \paomadeng_2/led_r_11_i_a6_0[6] ));
    DFN1E0 \paomadeng_1/led[1]  (.D(\paomadeng_1/N_48_i_0 ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[1] ));
    OR2A \paomadeng_0/cnt1_RNI02JJ  (.A(\paomadeng_0/cnt1_net_1 ), .B(
        \paomadeng_0/N_81 ), .Y(\paomadeng_0/N_145 ));
    XNOR3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I27_Y_0  (.A(
        \led_2_c[6] ), .B(\paomadeng_2/led_r[7]_net_1 ), .C(
        \paomadeng_2/N134 ), .Y(\paomadeng_2/un8_led_i[7] ));
    OA1 \paomadeng_0/dir_RNI8NVT  (.A(\paomadeng_0/N_71 ), .B(
        \paomadeng_0/dir_net_1 ), .C(\paomadeng_0/N_180 ), .Y(
        \paomadeng_0/N_72 ));
    DFN1 \paomadeng_2/cnt1  (.D(\paomadeng_2/N_52 ), .CLK(clk_c), .Q(
        \paomadeng_2/cnt1_net_1 ));
    OR2A \paomadeng_1/cnt3_RNIEU2E_0[1]  (.A(\paomadeng_1/led_r38 ), 
        .B(\paomadeng_1/N_66 ), .Y(\paomadeng_1/N_185 ));
    DFN1E0 \paomadeng_0/led_r[3]  (.D(\paomadeng_0/N_18 ), .CLK(clk_c), 
        .E(\paomadeng_0/un1_rst_2 ), .Q(\paomadeng_0/led_r[3]_net_1 ));
    DFN1E0 \paomadeng_0/led[6]  (.D(\paomadeng_0/N_57_i_0 ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[6] ));
    DFN1E1 \paomadeng_1/led_r1[0]  (.D(\paomadeng_1/N_55 ), .CLK(clk_c)
        , .E(\paomadeng_1/N_118 ), .Q(\paomadeng_1/led_r1[0]_net_1 ));
    OA1A \paomadeng_0/led_RNO_1[2]  (.A(\paomadeng_0/N_203 ), .B(
        \led_0_c[1] ), .C(\paomadeng_0/led_12_iv_i_0[2] ), .Y(
        \paomadeng_0/led_12_iv_i_2[2] ));
    AO1A \paomadeng_0/cnt2_RNIG1CK[1]  (.A(\paomadeng_0/N_68 ), .B(
        \sel_0_c[0] ), .C(\paomadeng_0/un1_rst_3 ), .Y(
        \paomadeng_0/un1_rst_2 ));
    DFN1E1 \paomadeng_2/led_r1[4]  (.D(\paomadeng_2/N_34 ), .CLK(clk_c)
        , .E(\paomadeng_2/N_118 ), .Q(\paomadeng_2/led_r1[4]_net_1 ));
    OR2A \paomadeng_1/led_r1_RNI5UH5[7]  (.A(\paomadeng_1/N_66 ), .B(
        \paomadeng_1/led_r1[7]_net_1 ), .Y(\paomadeng_1/N_83 ));
    IOTRI_OB_EB \led_2_pad[0]/U0/U1  (.D(\led_2_c[0] ), .E(VCC), .DOUT(
        \led_2_pad[0]/U0/NET1 ), .EOUT(\led_2_pad[0]/U0/NET2 ));
    NOR3 \paomadeng_2/led_RNO_6[4]  (.A(\paomadeng_2/led_r1[5]_net_1 ), 
        .B(\paomadeng_2/led_r1[4]_net_1 ), .C(
        \paomadeng_2/led_r[4]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_a6_1_1[4] ));
    MIN3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I20_Y  (.A(
        \led_0_c[4] ), .B(\paomadeng_0/led_r[5]_net_1 ), .C(
        \paomadeng_0/N132 ), .Y(\paomadeng_0/N136_i ));
    AXOI4 \paomadeng_2/cnt2_RNIKK1F_0[1]  (.A(\paomadeng_2/N_68 ), .B(
        \sel_2_c[0] ), .C(\sel_2_c[1] ), .Y(
        \paomadeng_2/led_r_11_0_o6_0[0] ));
    XOR2 \paomadeng_0/led_r_11_i_x2[7]  (.A(\sel_0_c[1] ), .B(
        \sel_0_c[0] ), .Y(\paomadeng_0/N_70_i ));
    XA1 \paomadeng_0/un8_led_ADD_7x7_medium_area_I19_un1_Y_0  (.A(
        \led_0_c[5] ), .B(\paomadeng_0/led_r[6]_net_1 ), .C(
        \paomadeng_0/N112 ), .Y(
        \paomadeng_0/ADD_7x7_medium_area_I19_un1_Y_0 ));
    XA1B \paomadeng_2/cnt2_RNO[2]  (.A(\paomadeng_2/N_87 ), .B(
        \paomadeng_2/cnt2[2]_net_1 ), .C(rst_c_0), .Y(
        \paomadeng_2/N_45 ));
    DFN1E0 \paomadeng_1/led_r[2]  (.D(\paomadeng_1/N_16 ), .CLK(clk_c), 
        .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[2]_net_1 ));
    OA1B \paomadeng_2/led_r1_RNO[6]  (.A(\paomadeng_2/N_83 ), .B(
        \paomadeng_2/N_106 ), .C(\paomadeng_2/N_131 ), .Y(
        \paomadeng_2/N_38 ));
    AXOI4 \paomadeng_1/led_r_RNO_1[7]  (.A(\paomadeng_1/N_99 ), .B(
        \sel_1_c[0] ), .C(\sel_1_c[1] ), .Y(
        \paomadeng_1/led_r_11_i_0[7] ));
    OA1C \paomadeng_2/led_r1_RNO[1]  (.A(\paomadeng_2/N_66 ), .B(
        \paomadeng_2/led_r1_8_i_a6_0[1] ), .C(\paomadeng_2/N_131 ), .Y(
        \paomadeng_2/N_28 ));
    DFN1E0 \paomadeng_1/led[0]  (.D(\paomadeng_1/led_12[0] ), .CLK(
        clk_c), .E(\paomadeng_1/un1_rst_2_0_o6_net_1 ), .Q(
        \led_1_c[0] ));
    DFN1E1 \paomadeng_0/led_r1[2]  (.D(\paomadeng_0/N_30 ), .CLK(clk_c)
        , .E(\paomadeng_0/N_118 ), .Q(\paomadeng_0/led_r1[2]_net_1 ));
    DFN1E0 \paomadeng_2/led_r[6]  (.D(\paomadeng_2/N_24 ), .CLK(clk_c), 
        .E(\paomadeng_2/un1_rst_2 ), .Q(\paomadeng_2/led_r[6]_net_1 ));
    OR3C \paomadeng_1/led_RNO[0]  (.A(\paomadeng_1/N_154 ), .B(
        \paomadeng_1/led_12_0_iv_0_0[0] ), .C(\paomadeng_1/N_123 ), .Y(
        \paomadeng_1/led_12[0] ));
    XA1B \paomadeng_1/cnt3_RNO[1]  (.A(\paomadeng_1/cnt3[1]_net_1 ), 
        .B(\paomadeng_1/DWACT_ADD_CI_0_TMP[0] ), .C(rst_c_0), .Y(
        \paomadeng_1/cnt3_6[1] ));
    IOPAD_TRI \led_2_pad[1]/U0/U0  (.D(\led_2_pad[1]/U0/NET1 ), .E(
        \led_2_pad[1]/U0/NET2 ), .PAD(led_2[1]));
    IOPAD_TRI \led_2_pad[6]/U0/U0  (.D(\led_2_pad[6]/U0/NET1 ), .E(
        \led_2_pad[6]/U0/NET2 ), .PAD(led_2[6]));
    NOR2 \paomadeng_1/cnt2_RNO[0]  (.A(rst_c), .B(
        \paomadeng_1/cnt2[0]_net_1 ), .Y(\paomadeng_1/cnt2_n0 ));
    DFN1E1 \paomadeng_0/led_r1[0]  (.D(\paomadeng_0/N_55 ), .CLK(clk_c)
        , .E(\paomadeng_0/N_118 ), .Q(\paomadeng_0/led_r1[0]_net_1 ));
    XOR3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I26_Y_0  (.A(
        \led_1_c[5] ), .B(\paomadeng_1/led_r[6]_net_1 ), .C(
        \paomadeng_1/N136_i ), .Y(\paomadeng_1/un8_led_i_0[6] ));
    XA1C \paomadeng_0/cnt1_RNO  (.A(\paomadeng_0/N_81 ), .B(
        \paomadeng_0/cnt1_net_1 ), .C(rst_c), .Y(\paomadeng_0/N_52 ));
    IOPAD_TRI \led_0_pad[1]/U0/U0  (.D(\led_0_pad[1]/U0/NET1 ), .E(
        \led_0_pad[1]/U0/NET2 ), .PAD(led_0[1]));
    OR3B \paomadeng_0/cnt2_RNI22FD[1]  (.A(\sel_0_c[0] ), .B(
        \paomadeng_0/N_68 ), .C(\sel_0_c[1] ), .Y(\paomadeng_0/N_184 ));
    IOTRI_OB_EB \led_0_pad[0]/U0/U1  (.D(\led_0_c[0] ), .E(VCC), .DOUT(
        \led_0_pad[0]/U0/NET1 ), .EOUT(\led_0_pad[0]/U0/NET2 ));
    DFN1 \paomadeng_2/dir_0  (.D(\paomadeng_2/N_240 ), .CLK(clk_c), .Q(
        \paomadeng_2/dir_0_net_1 ));
    OA1C \paomadeng_2/led_r_RNO_0[1]  (.A(\paomadeng_2/N_186 ), .B(
        \paomadeng_2/N_206 ), .C(\paomadeng_2/led_r[0]_net_1 ), .Y(
        \paomadeng_2/N_121 ));
    OR3C \paomadeng_0/cnt3_RNIMNED[1]  (.A(\paomadeng_0/cnt3[1]_net_1 )
        , .B(\paomadeng_0/led_r38 ), .C(\paomadeng_0/cnt3[0]_net_1 ), 
        .Y(\paomadeng_0/N_198 ));
    AOI1B \paomadeng_2/led_RNO_3[7]  (.A(
        \paomadeng_2/led_12_iv_0_a6_2_0[7] ), .B(
        \paomadeng_2/dir_0_net_1 ), .C(\paomadeng_2/N_145 ), .Y(
        \paomadeng_2/led_12_iv_0_0[7] ));
    OA1A \paomadeng_2/led_RNO_0[1]  (.A(\paomadeng_2/N_203 ), .B(
        \led_2_c[0] ), .C(\paomadeng_2/N_151 ), .Y(
        \paomadeng_2/led_12_iv_i_0[1] ));
    NOR2A \paomadeng_0/led_r1_RNO_0[6]  (.A(
        \paomadeng_0/led_r1[6]_net_1 ), .B(\paomadeng_0/dir_net_1 ), 
        .Y(\paomadeng_0/N_106 ));
    DFN1E0 \paomadeng_2/led_r[2]  (.D(\paomadeng_2/N_16 ), .CLK(clk_c), 
        .E(\paomadeng_2/un1_rst_2 ), .Q(\paomadeng_2/led_r[2]_net_1 ));
    NOR2B \paomadeng_1/led_RNO_5[7]  (.A(\sel_1_c[0] ), .B(
        \led_1_c[6] ), .Y(\paomadeng_1/led_12_iv_0_a6_2_0[7] ));
    NOR2A \paomadeng_2/led_r38_0_a2  (.A(\sel_2_c[1] ), .B(
        \sel_2_c[0] ), .Y(\paomadeng_2/led_r38 ));
    NOR3B \paomadeng_0/led_RNO[1]  (.A(
        \paomadeng_0/led_RNO_0[1]_net_1 ), .B(
        \paomadeng_0/led_12_iv_i_2[1] ), .C(\paomadeng_0/N_79 ), .Y(
        \paomadeng_0/N_48_i_0 ));
    NOR2A \paomadeng_2/led_RNO_6[7]  (.A(\sel_2_c[1] ), .B(
        \paomadeng_2/dir_0_net_1 ), .Y(
        \paomadeng_2/led_12_iv_0_a6_0[7] ));
    MIN3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I12_Y_0  (.A(
        \led_1_c[3] ), .B(\paomadeng_1/led_r[4]_net_1 ), .C(
        \paomadeng_1/N109 ), .Y(
        \paomadeng_1/ADD_7x7_medium_area_I12_Y_0 ));
    NOR2B \paomadeng_2/led_RNO_5[7]  (.A(\sel_2_c[0] ), .B(
        \led_2_c[6] ), .Y(\paomadeng_2/led_12_iv_0_a6_2_0[7] ));
    AO1 \paomadeng_2/led_RNO_0[4]  (.A(\paomadeng_2/led_r[3]_net_1 ), 
        .B(\paomadeng_2/led_r1[5]_net_1 ), .C(\paomadeng_2/N_186 ), .Y(
        \paomadeng_2/led_RNO_0[4]_net_1 ));
    IOTRI_OB_EB \led_0_pad[6]/U0/U1  (.D(\led_0_c[6] ), .E(VCC), .DOUT(
        \led_0_pad[6]/U0/NET1 ), .EOUT(\led_0_pad[6]/U0/NET2 ));
    OA1C \paomadeng_0/led_r_RNO_0[5]  (.A(\paomadeng_0/N_186 ), .B(
        \paomadeng_0/N_204 ), .C(\paomadeng_0/led_r[4]_net_1 ), .Y(
        \paomadeng_0/N_126 ));
    OR2B \paomadeng_0/led_RNO_3[3]  (.A(
        \paomadeng_0/led_12_iv_i_a6_1_1[3] ), .B(\paomadeng_0/N_205 ), 
        .Y(\paomadeng_0/N_172 ));
    NOR3C \paomadeng_0/led_RNO_1[7]  (.A(\paomadeng_0/N_146 ), .B(
        \paomadeng_0/N_145 ), .C(\paomadeng_0/N_147 ), .Y(
        \paomadeng_0/led_12_iv_0_1[7] ));
    DFN1E0 \paomadeng_0/led_r[0]  (.D(\paomadeng_0/led_r_11[0] ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_2 ), .Q(
        \paomadeng_0/led_r[0]_net_1 ));
    NOR2A \paomadeng_2/led_RNO_2[5]  (.A(
        \paomadeng_2/led_12_iv_i_0[5] ), .B(\paomadeng_2/N_79 ), .Y(
        \paomadeng_2/led_12_iv_i_2[5] ));
    IOTRI_OB_EB \led_0_pad[7]/U0/U1  (.D(\led_0_c[7] ), .E(VCC), .DOUT(
        \led_0_pad[7]/U0/NET1 ), .EOUT(\led_0_pad[7]/U0/NET2 ));
    NOR2A \paomadeng_0/led_r1_RNO[7]  (.A(\paomadeng_0/N_83 ), .B(
        \paomadeng_0/dir_net_1 ), .Y(\paomadeng_0/led_r1_8[7] ));
    OA1C \paomadeng_1/led_r_RNO_0[3]  (.A(\paomadeng_1/N_186 ), .B(
        \paomadeng_1/N_205 ), .C(\paomadeng_1/led_r[2]_net_1 ), .Y(
        \paomadeng_1/N_124 ));
    AOI1B \paomadeng_1/led_RNO_1[1]  (.A(
        \paomadeng_1/led_12_iv_i_a6_1_1[1] ), .B(\paomadeng_1/N_206 ), 
        .C(\paomadeng_1/led_RNO_4[1]_net_1 ), .Y(
        \paomadeng_1/led_12_iv_i_1[1] ));
    IOIN_IB \sel_2_pad[1]/U0/U1  (.YIN(\sel_2_pad[1]/U0/NET1 ), .Y(
        \sel_2_c[1] ));
    OAI1 \paomadeng_0/led_RNO_0[7]  (.A(\paomadeng_0/N_83 ), .B(
        \paomadeng_0/N_89 ), .C(\paomadeng_0/led_12_iv_0_a6_0[7] ), .Y(
        \paomadeng_0/N_143 ));
    IOPAD_TRI \led_0_pad[3]/U0/U0  (.D(\led_0_pad[3]/U0/NET1 ), .E(
        \led_0_pad[3]/U0/NET2 ), .PAD(led_0[3]));
    NOR2A \paomadeng_0/led_r_RNI3959[0]  (.A(
        \paomadeng_0/led_r[0]_net_1 ), .B(\paomadeng_0/dir_net_1 ), .Y(
        \paomadeng_0/N_211 ));
    XOR3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I26_Y_0  (.A(
        \led_0_c[5] ), .B(\paomadeng_0/led_r[6]_net_1 ), .C(
        \paomadeng_0/N136_i ), .Y(\paomadeng_0/un8_led_i_0[6] ));
    DFN1 \paomadeng_1/cnt1  (.D(\paomadeng_1/N_52 ), .CLK(clk_c), .Q(
        \paomadeng_1/cnt1_net_1 ));
    AO1A \paomadeng_0/led_r1_RNO_0[2]  (.A(\paomadeng_0/dir_0_net_1 ), 
        .B(\paomadeng_0/led_r1[2]_net_1 ), .C(
        \paomadeng_0/led_r1[3]_net_1 ), .Y(
        \paomadeng_0/led_r1_8_i_a6_0[2] ));
    NOR2A \paomadeng_0/dir_RNITSO9  (.A(\sel_0_c[0] ), .B(
        \paomadeng_0/dir_net_1 ), .Y(\paomadeng_0/N_201 ));
    OR2B \paomadeng_1/led_RNO_5[4]  (.A(
        \paomadeng_1/led_12_iv_i_a6_1_1[4] ), .B(\paomadeng_1/N_205 ), 
        .Y(\paomadeng_1/N_168 ));
    XAI1A \paomadeng_1/led_RNO_2[2]  (.A(\paomadeng_1/N105 ), .B(
        \paomadeng_1/N106 ), .C(\paomadeng_1/N_201 ), .Y(
        \paomadeng_1/N_179 ));
    OR2B \paomadeng_2/cnt3_RNI34M7[1]  (.A(\sel_2_c[1] ), .B(
        \paomadeng_2/N_66 ), .Y(\paomadeng_2/N_69 ));
    DFN1E1 \paomadeng_0/cnt2[0]  (.D(\paomadeng_0/cnt2_n0 ), .CLK(
        clk_c), .E(\paomadeng_0/cnt2e ), .Q(
        \paomadeng_0/cnt2[0]_net_1 ));
    DFN1 \paomadeng_0/cnt1  (.D(\paomadeng_0/N_52 ), .CLK(clk_c), .Q(
        \paomadeng_0/cnt1_net_1 ));
    IOPAD_TRI \led_1_pad[4]/U0/U0  (.D(\led_1_pad[4]/U0/NET1 ), .E(
        \led_1_pad[4]/U0/NET2 ), .PAD(led_1[4]));
    XOR2 \paomadeng_1/un8_led_ADD_7x7_medium_area_I3_S_0  (.A(
        \paomadeng_1/led_r[4]_net_1 ), .B(\led_1_c[3] ), .Y(
        \paomadeng_1/N110 ));
    AOI1B \paomadeng_2/led_RNO_0[3]  (.A(\paomadeng_2/un8_led_i_0[3] ), 
        .B(\paomadeng_2/N_201 ), .C(\paomadeng_2/N_171 ), .Y(
        \paomadeng_2/led_12_iv_i_0[3] ));
    XAI1A \paomadeng_0/led_RNO_5[1]  (.A(\led_0_c[0] ), .B(
        \paomadeng_0/led_r[1]_net_1 ), .C(\paomadeng_0/N_201 ), .Y(
        \paomadeng_0/N_151 ));
    AO1 \paomadeng_0/led_RNO_4[6]  (.A(\paomadeng_0/led_r[5]_net_1 ), 
        .B(\paomadeng_0/led_r1[7]_net_1 ), .C(\paomadeng_0/N_186 ), .Y(
        \paomadeng_0/led_RNO_4[6]_net_1 ));
    DFN1E1 \paomadeng_1/led_r1[6]  (.D(\paomadeng_1/N_38 ), .CLK(clk_c)
        , .E(\paomadeng_1/N_118 ), .Q(\paomadeng_1/led_r1[6]_net_1 ));
    DFN1E0 \paomadeng_2/led[2]  (.D(\paomadeng_2/N_65_i_0 ), .CLK(
        clk_c), .E(\paomadeng_2/un1_rst_3 ), .Q(\led_2_c[2] ));
    OR2A \paomadeng_0/cnt3_RNI9ON6_0[1]  (.A(\sel_0_c[1] ), .B(
        \paomadeng_0/N_66 ), .Y(\paomadeng_0/N_182 ));
    XA1 \paomadeng_1/un8_led_ADD_7x7_medium_area_I12_un1_Y_0  (.A(
        \led_1_c[2] ), .B(\paomadeng_1/led_r[3]_net_1 ), .C(
        \paomadeng_1/N110 ), .Y(
        \paomadeng_1/ADD_7x7_medium_area_I12_un1_Y_0 ));
    OR2A \paomadeng_2/led_RNO_2[3]  (.A(\paomadeng_2/N_203 ), .B(
        \led_2_c[2] ), .Y(\paomadeng_2/N_171 ));
    AOI1B \paomadeng_1/led_RNO_3[7]  (.A(
        \paomadeng_1/led_12_iv_0_a6_2_0[7] ), .B(
        \paomadeng_1/dir_0_net_1 ), .C(\paomadeng_1/N_145 ), .Y(
        \paomadeng_1/led_12_iv_0_0[7] ));
    AO1 \paomadeng_2/led_RNO_1[6]  (.A(\paomadeng_2/led_r[5]_net_1 ), 
        .B(\paomadeng_2/led_r1[7]_net_1 ), .C(\paomadeng_2/N_186 ), .Y(
        \paomadeng_2/led_RNO_1[6]_net_1 ));
    NOR3C \paomadeng_1/led_RNO_1[7]  (.A(
        \paomadeng_1/led_RNO_2[7]_net_1 ), .B(
        \paomadeng_1/led_12_iv_0_0[7] ), .C(\paomadeng_1/N_143 ), .Y(
        \paomadeng_1/led_12_iv_0_2[7] ));
    OR2 \paomadeng_1/led_12_iv_0_o2_0[7]  (.A(\sel_1_c[1] ), .B(
        \sel_1_c[0] ), .Y(\paomadeng_1/N_81 ));
    DFN1E0 \paomadeng_0/led[7]  (.D(\paomadeng_0/led_12[7] ), .CLK(
        clk_c), .E(\paomadeng_0/un1_rst_3 ), .Q(\led_0_c[7] ));
    OR2A \paomadeng_1/led_RNO_2[7]  (.A(\sel_1_c[0] ), .B(
        \paomadeng_1/N_99 ), .Y(\paomadeng_1/led_RNO_2[7]_net_1 ));
    AO1B \paomadeng_0/un8_led_ADD_7x7_medium_area_I19_Y  (.A(
        \paomadeng_0/ADD_7x7_medium_area_I19_un1_Y_0 ), .B(
        \paomadeng_0/N132 ), .C(
        \paomadeng_0/ADD_7x7_medium_area_I19_Y_0 ), .Y(
        \paomadeng_0/N134 ));
    AO1A \paomadeng_1/led_r1_RNO_0[1]  (.A(\paomadeng_1/dir_0_net_1 ), 
        .B(\paomadeng_1/led_r1[1]_net_1 ), .C(
        \paomadeng_1/led_r1[2]_net_1 ), .Y(
        \paomadeng_1/led_r1_8_i_a6_0[1] ));
    NOR2A \paomadeng_1/led_RNO_2[5]  (.A(
        \paomadeng_1/led_12_iv_i_0[5] ), .B(\paomadeng_1/N_79 ), .Y(
        \paomadeng_1/led_12_iv_i_2[5] ));
    NOR3B \paomadeng_2/led_RNO[1]  (.A(\paomadeng_2/led_12_iv_i_0[1] ), 
        .B(\paomadeng_2/led_12_iv_i_1[1] ), .C(\paomadeng_2/N_79 ), .Y(
        \paomadeng_2/N_48_i_0 ));
    XAI1A \paomadeng_2/led_RNO_2[2]  (.A(\paomadeng_2/N105 ), .B(
        \paomadeng_2/N106 ), .C(\paomadeng_2/N_201 ), .Y(
        \paomadeng_2/N_179 ));
    AO1 \paomadeng_2/led_RNO_4[2]  (.A(\paomadeng_2/led_r[1]_net_1 ), 
        .B(\paomadeng_2/led_r1[3]_net_1 ), .C(\paomadeng_2/N_186 ), .Y(
        \paomadeng_2/led_RNO_4_0[2] ));
    OR2 \paomadeng_2/led_r_RNIN55E[7]  (.A(
        \paomadeng_2/led_r[7]_net_1 ), .B(\paomadeng_2/led_r[6]_net_1 )
        , .Y(\paomadeng_2/N_89 ));
    AOI1B \paomadeng_0/cnt2_RNITMFD[1]  (.A(\sel_0_c[0] ), .B(
        \paomadeng_0/N_68 ), .C(\paomadeng_0/N_182 ), .Y(
        \paomadeng_0/N_71 ));
    XA1B \paomadeng_0/cnt2_RNO[1]  (.A(\paomadeng_0/cnt2[0]_net_1 ), 
        .B(\paomadeng_0/cnt2[1]_net_1 ), .C(rst_c_0), .Y(
        \paomadeng_0/N_43 ));
    NOR2 \paomadeng_2/led_r_RNIR8OE[3]  (.A(
        \paomadeng_2/led_r[3]_net_1 ), .B(\paomadeng_2/N_69 ), .Y(
        \paomadeng_2/N_205 ));
    NOR3 \paomadeng_0/led_RNO_6[5]  (.A(\paomadeng_0/led_r1[6]_net_1 ), 
        .B(\paomadeng_0/led_r1[5]_net_1 ), .C(
        \paomadeng_0/led_r[4]_net_1 ), .Y(
        \paomadeng_0/led_12_iv_i_a6_1_1[5] ));
    IOPAD_IN \clk_pad/U0/U0  (.PAD(clk), .Y(\clk_pad/U0/NET1 ));
    OR3C \paomadeng_0/led_RNO[0]  (.A(\paomadeng_0/led_12_0_iv_0_0[0] )
        , .B(\paomadeng_0/N_154 ), .C(\paomadeng_0/N_123 ), .Y(
        \paomadeng_0/led_12[0] ));
    DFN1E1 \paomadeng_0/led_r1[6]  (.D(\paomadeng_0/N_38 ), .CLK(clk_c)
        , .E(\paomadeng_0/N_118 ), .Q(\paomadeng_0/led_r1[6]_net_1 ));
    XNOR3 \paomadeng_1/un8_led_ADD_7x7_medium_area_I27_Y_0  (.A(
        \led_1_c[6] ), .B(\paomadeng_1/led_r[7]_net_1 ), .C(
        \paomadeng_1/N134 ), .Y(\paomadeng_1/un8_led_i[7] ));
    IOTRI_OB_EB \led_2_pad[1]/U0/U1  (.D(\led_2_c[1] ), .E(VCC), .DOUT(
        \led_2_pad[1]/U0/NET1 ), .EOUT(\led_2_pad[1]/U0/NET2 ));
    NOR3B \paomadeng_0/led_r_RNO_0[7]  (.A(\paomadeng_0/N_128 ), .B(
        \paomadeng_0/N_70_i ), .C(\paomadeng_0/N_131 ), .Y(
        \paomadeng_0/led_r_11_i_1[7] ));
    IOTRI_OB_EB \led_2_pad[6]/U0/U1  (.D(\led_2_c[6] ), .E(VCC), .DOUT(
        \led_2_pad[6]/U0/NET1 ), .EOUT(\led_2_pad[6]/U0/NET2 ));
    OA1A \paomadeng_2/led_RNO_4[4]  (.A(\paomadeng_2/N_203 ), .B(
        \led_2_c[3] ), .C(\paomadeng_2/N_168 ), .Y(
        \paomadeng_2/led_12_iv_i_0[4] ));
    OAI1 \paomadeng_2/led_RNO_4[7]  (.A(\paomadeng_2/N_83 ), .B(
        \paomadeng_2/N_89 ), .C(\paomadeng_2/led_12_iv_0_a6_0[7] ), .Y(
        \paomadeng_2/N_143 ));
    AO1 \paomadeng_0/dir_RNI8NVT_0  (.A(\paomadeng_0/N_185 ), .B(
        \paomadeng_0/N_184 ), .C(\paomadeng_0/dir_net_1 ), .Y(
        \paomadeng_0/N_123 ));
    NOR2B \paomadeng_2/un8_led_ADD_7x7_medium_area_I2_CO1  (.A(
        \paomadeng_2/led_r[3]_net_1 ), .B(\led_2_c[2] ), .Y(
        \paomadeng_2/N109 ));
    IOTRI_OB_EB \led_0_pad[1]/U0/U1  (.D(\led_0_c[1] ), .E(VCC), .DOUT(
        \led_0_pad[1]/U0/NET1 ), .EOUT(\led_0_pad[1]/U0/NET2 ));
    NOR2A \paomadeng_0/led_r38_0_a2  (.A(\sel_0_c[1] ), .B(
        \sel_0_c[0] ), .Y(\paomadeng_0/led_r38 ));
    AO1 \paomadeng_1/cnt2_RNIKBAL[1]  (.A(\sel_1_c[0] ), .B(
        \paomadeng_1/N_68 ), .C(\paomadeng_1/un1_rst_2_0_o6_net_1 ), 
        .Y(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ));
    OR2 \paomadeng_1/cnt1_RNIVNUJ_0  (.A(\paomadeng_1/cnt1_net_1 ), .B(
        \paomadeng_1/N_81 ), .Y(\paomadeng_1/N_155 ));
    NOR3B \paomadeng_2/led_r_RNO[1]  (.A(\paomadeng_2/N_195 ), .B(
        \paomadeng_2/led_r_11_0_o6_0[0] ), .C(\paomadeng_2/N_121 ), .Y(
        \paomadeng_2/N_14 ));
    NOR2B \paomadeng_2/un8_led_ADD_7x7_medium_area_I4_CO1  (.A(
        \paomadeng_2/led_r[5]_net_1 ), .B(\led_2_c[4] ), .Y(
        \paomadeng_2/N113 ));
    OR3B \paomadeng_2/led_RNO_0[7]  (.A(\paomadeng_2/N_68 ), .B(
        \sel_2_c[0] ), .C(\paomadeng_2/dir_0_net_1 ), .Y(
        \paomadeng_2/led_12_iv_0_a6_0_0[7] ));
    IOPAD_TRI \led_2_pad[2]/U0/U0  (.D(\led_2_pad[2]/U0/NET1 ), .E(
        \led_2_pad[2]/U0/NET2 ), .PAD(led_2[2]));
    DFN1E0 \paomadeng_1/led_r[7]  (.D(\paomadeng_1/N_26_i_0 ), .CLK(
        clk_c), .E(\paomadeng_1/cnt2_RNIKBAL[1]_net_1 ), .Q(
        \paomadeng_1/led_r[7]_net_1 ));
    AOI1 \paomadeng_1/led_r_RNO_0[5]  (.A(\paomadeng_1/N_204 ), .B(
        \paomadeng_1/N_186 ), .C(\paomadeng_1/led_r[4]_net_1 ), .Y(
        \paomadeng_1/N_126 ));
    AOI1 \paomadeng_0/led_r1_RNO[0]  (.A(
        \paomadeng_0/led_r1_8_i_0_tz[0] ), .B(\paomadeng_0/N_66 ), .C(
        \paomadeng_0/N_131 ), .Y(\paomadeng_0/N_55 ));
    OA1A \paomadeng_2/led_RNO_4[5]  (.A(\paomadeng_2/N_203 ), .B(
        \led_2_c[4] ), .C(\paomadeng_2/led_RNO_5[5]_net_1 ), .Y(
        \paomadeng_2/led_12_iv_i_0[5] ));
    XNOR3 \paomadeng_2/un8_led_ADD_7x7_medium_area_I23_Y_0  (.A(
        \led_2_c[2] ), .B(\paomadeng_2/led_r[3]_net_1 ), .C(
        \paomadeng_2/N122 ), .Y(\paomadeng_2/un8_led_i_0[3] ));
    OR2 \paomadeng_0/cnt3_RNIRK[1]  (.A(\paomadeng_0/cnt3[1]_net_1 ), 
        .B(\paomadeng_0/cnt3[0]_net_1 ), .Y(\paomadeng_0/N_66 ));
    NOR2A \paomadeng_2/led_r1_RNO[7]  (.A(\paomadeng_2/N_83 ), .B(
        \paomadeng_2/dir_net_1 ), .Y(\paomadeng_2/led_r1_8[7] ));
    XA1B \paomadeng_0/cnt2_RNO[2]  (.A(\paomadeng_0/N_87 ), .B(
        \paomadeng_0/cnt2[2]_net_1 ), .C(rst_c), .Y(\paomadeng_0/N_45 )
        );
    XOR3 \paomadeng_0/un8_led_ADD_7x7_medium_area_I24_Y_0  (.A(
        \led_0_c[3] ), .B(\paomadeng_0/led_r[4]_net_1 ), .C(
        \paomadeng_0/N138_i ), .Y(\paomadeng_0/un8_led_i_0[4] ));
    AXOI4 \paomadeng_2/led_r_RNO_1[7]  (.A(\paomadeng_2/N_99 ), .B(
        \sel_2_c[0] ), .C(\sel_2_c[1] ), .Y(
        \paomadeng_2/led_r_11_i_0[7] ));
    DFN1E1 \paomadeng_1/led_r1[1]  (.D(\paomadeng_1/N_28 ), .CLK(clk_c)
        , .E(\paomadeng_1/N_118 ), .Q(\paomadeng_1/led_r1[1]_net_1 ));
    AO1A \paomadeng_2/led_r1_RNO_0[3]  (.A(\paomadeng_2/dir_0_net_1 ), 
        .B(\paomadeng_2/led_r1[3]_net_1 ), .C(
        \paomadeng_2/led_r1[4]_net_1 ), .Y(
        \paomadeng_2/led_r1_8_i_a6_0[3] ));
    IOPAD_IN \rst_pad/U0/U0  (.PAD(rst), .Y(\rst_pad/U0/NET1 ));
    AO1 \paomadeng_1/led_RNO_1[5]  (.A(\paomadeng_1/led_r[4]_net_1 ), 
        .B(\paomadeng_1/led_r1[6]_net_1 ), .C(\paomadeng_1/N_186 ), .Y(
        \paomadeng_1/led_RNO_1_0[5] ));
    IOPAD_TRI \led_1_pad[0]/U0/U0  (.D(\led_1_pad[0]/U0/NET1 ), .E(
        \led_1_pad[0]/U0/NET2 ), .PAD(led_1[0]));
    OA1C \paomadeng_0/led_r1_RNO[5]  (.A(\paomadeng_0/N_66 ), .B(
        \paomadeng_0/led_r1_8_i_a6_0[5] ), .C(\paomadeng_0/N_131 ), .Y(
        \paomadeng_0/N_36 ));
    IOTRI_OB_EB \led_0_pad[3]/U0/U1  (.D(\led_0_c[3] ), .E(VCC), .DOUT(
        \led_0_pad[3]/U0/NET1 ), .EOUT(\led_0_pad[3]/U0/NET2 ));
    OR2A \paomadeng_0/led_RNO_5[3]  (.A(\paomadeng_0/N_203 ), .B(
        \led_0_c[2] ), .Y(\paomadeng_0/N_171 ));
    NOR2 \paomadeng_0/led_r_RNI1ORC[5]  (.A(
        \paomadeng_0/led_r[5]_net_1 ), .B(\paomadeng_0/N_69 ), .Y(
        \paomadeng_0/N_204 ));
    DFN1E1 \paomadeng_2/cnt2[0]  (.D(\paomadeng_2/cnt2_n0 ), .CLK(
        clk_c), .E(\paomadeng_2/cnt2e ), .Q(
        \paomadeng_2/cnt2[0]_net_1 ));
    IOPAD_IN \sel_1_pad[1]/U0/U0  (.PAD(sel_1[1]), .Y(
        \sel_1_pad[1]/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
