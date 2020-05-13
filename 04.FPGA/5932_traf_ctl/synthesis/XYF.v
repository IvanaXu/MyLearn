`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module BIN_to_BCD_BIN_to_BCD_0(
       un1_BIN_to_BCD_0,
       un1_BIN_to_BCD_0_1,
       Q_NS_0
    );
output [3:1] un1_BIN_to_BCD_0;
output [3:0] un1_BIN_to_BCD_0_1;
input  [7:1] Q_NS_0;

    wire \temp_22[7]_net_1 , N_19_i, N_25_i, temp86lto2, CO1, 
        \temp_11_i[0] , \temp_15[1]_net_1 , CO1_0, \temp_7_i[0] , CO2, 
        \temp_7[1]_net_1 , \temp_7[2]_net_1 , \temp_11[1]_net_1 , 
        \temp_11[2]_net_1 , \temp_22[5]_net_1 , \temp_15[2]_net_1 , 
        CO1_1, \temp_15_i[0] , \temp_19[1]_net_1 , N_31, CO2_0, CO1_2, 
        \temp_22[6]_net_1 , \un1_BIN_to_BCD_0_2[0] , CO1_3, 
        \temp_19_i[0] , \temp_19_i[2] , GND, VCC, GND_0, VCC_0;
    
    OR2B un32_temp_1_CO2 (.A(CO1_0), .B(\temp_7[1]_net_1 ), .Y(CO2));
    AX1D \temp_15[1]  (.A(Q_NS_0[3]), .B(N_25_i), .C(\temp_11_i[0] ), 
        .Y(\temp_15[1]_net_1 ));
    XOR2 \temp_15[0]  (.A(Q_NS_0[3]), .B(N_25_i), .Y(\temp_15_i[0] ));
    NOR2A \temp_22[6]  (.A(temp86lto2), .B(N_19_i), .Y(
        \temp_22[6]_net_1 ));
    XOR2 \temp_7[0]  (.A(Q_NS_0[5]), .B(temp86lto2), .Y(\temp_7_i[0] ));
    VCC VCC_i (.Y(VCC));
    XNOR2 un32_temp_1_SUM3_0 (.A(CO2), .B(\temp_7[2]_net_1 ), .Y(
        N_19_i));
    AX1 \temp[5]  (.A(N_31), .B(\un1_BIN_to_BCD_0_2[0] ), .C(
        \temp_22[5]_net_1 ), .Y(un1_BIN_to_BCD_0_1[2]));
    AX1D \temp_11[1]  (.A(Q_NS_0[4]), .B(N_19_i), .C(\temp_7_i[0] ), 
        .Y(\temp_11[1]_net_1 ));
    AX1E un64_temp_1_SUM3_0 (.A(\temp_15[1]_net_1 ), .B(CO1_1), .C(
        \temp_15[2]_net_1 ), .Y(N_31));
    OR2 un104_temp_1_CO1 (.A(\temp_22[5]_net_1 ), .B(N_31), .Y(CO1_2));
    OR2B un104_temp_1_CO2 (.A(CO1_2), .B(\temp_22[6]_net_1 ), .Y(CO2_0)
        );
    AX1A \temp[1]  (.A(Q_NS_0[1]), .B(un1_BIN_to_BCD_0_1[0]), .C(
        \temp_19_i[0] ), .Y(un1_BIN_to_BCD_0[2]));
    OR2A un92_temp_1_CO1 (.A(\temp_19_i[0] ), .B(Q_NS_0[1]), .Y(CO1_3));
    AXOI4 \temp_22[5]  (.A(N_19_i), .B(N_25_i), .C(temp86lto2), .Y(
        \temp_22[5]_net_1 ));
    AX1A \temp_19[1]  (.A(Q_NS_0[2]), .B(N_31), .C(\temp_15_i[0] ), .Y(
        \temp_19[1]_net_1 ));
    MX2B \temp[2]  (.A(\temp_19[1]_net_1 ), .B(\temp_19_i[2] ), .S(
        CO1_3), .Y(un1_BIN_to_BCD_0[3]));
    OR2A un64_temp_1_CO1 (.A(\temp_15_i[0] ), .B(Q_NS_0[2]), .Y(CO1_1));
    XNOR2 un104_temp_1_SUM3_0 (.A(CO2_0), .B(\temp_22[7]_net_1 ), .Y(
        \un1_BIN_to_BCD_0_2[0] ));
    GND GND_i (.Y(GND));
    OA1A \temp_7[1]  (.A(Q_NS_0[7]), .B(Q_NS_0[5]), .C(Q_NS_0[6]), .Y(
        \temp_7[1]_net_1 ));
    AX1E un92_temp_1_SUM3_0 (.A(\temp_19[1]_net_1 ), .B(CO1_3), .C(
        \temp_19_i[2] ), .Y(un1_BIN_to_BCD_0_1[0]));
    MX2 \temp[6]  (.A(\temp_22[6]_net_1 ), .B(\temp_22[7]_net_1 ), .S(
        CO1_2), .Y(un1_BIN_to_BCD_0_1[3]));
    XOR2 \temp[0]  (.A(Q_NS_0[1]), .B(un1_BIN_to_BCD_0_1[0]), .Y(
        un1_BIN_to_BCD_0[1]));
    XOR2 \temp[4]  (.A(\un1_BIN_to_BCD_0_2[0] ), .B(N_31), .Y(
        un1_BIN_to_BCD_0_1[1]));
    MX2A \temp_19[2]  (.A(\temp_15[1]_net_1 ), .B(\temp_15[2]_net_1 ), 
        .S(CO1_1), .Y(\temp_19_i[2] ));
    OAI1 un15_temp_1_CO2 (.A(Q_NS_0[5]), .B(Q_NS_0[6]), .C(Q_NS_0[7]), 
        .Y(temp86lto2));
    OR2A un32_temp_1_CO1 (.A(\temp_7_i[0] ), .B(Q_NS_0[4]), .Y(CO1_0));
    NOR3B \temp_22[7]  (.A(N_19_i), .B(N_25_i), .C(temp86lto2), .Y(
        \temp_22[7]_net_1 ));
    MX2A \temp_11[2]  (.A(\temp_7[1]_net_1 ), .B(\temp_7[2]_net_1 ), 
        .S(CO1_0), .Y(\temp_11[2]_net_1 ));
    AX1C un48_temp_1_SUM3_0 (.A(\temp_11[1]_net_1 ), .B(CO1), .C(
        \temp_11[2]_net_1 ), .Y(N_25_i));
    OR2A un48_temp_1_CO1 (.A(\temp_11_i[0] ), .B(Q_NS_0[3]), .Y(CO1));
    OR2B \temp_7[2]  (.A(Q_NS_0[7]), .B(temp86lto2), .Y(
        \temp_7[2]_net_1 ));
    XOR2 \temp_11[0]  (.A(Q_NS_0[4]), .B(N_19_i), .Y(\temp_11_i[0] ));
    XNOR2 \temp_19[0]  (.A(Q_NS_0[2]), .B(N_31), .Y(\temp_19_i[0] ));
    MX2A \temp_15[2]  (.A(\temp_11[1]_net_1 ), .B(\temp_11[2]_net_1 ), 
        .S(CO1), .Y(\temp_15[2]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module one_seond_clk(
       Clk_c,
       one_seond_clk_0_Cout,
       Reset_c
    );
input  Clk_c;
output one_seond_clk_0_Cout;
input  Reset_c;

    wire Count_19_0, \Count[8]_net_1 , un1_Reset_1, un1_Count_2_6, 
        un1_Count_2_1, un1_Count_2_0, Count_c1, un1_Count_2_5, 
        \Count[7]_net_1 , un1_Count_2_3, \Count[3]_net_1 , 
        \Count[4]_net_1 , \Count[5]_net_1 , \Count[6]_net_1 , 
        \Count[9]_net_1 , \Count[2]_net_1 , Count_n2, Count_n3, 
        Count_c2, Count_n4, Count_c3, Count_n5, Count_c4, Count_n6, 
        Count_c5, Count_n7, Count_c6, Count_n8, Count_c7, Count13, 
        \Count[1]_net_1 , \Count[0]_net_1 , N_49, Count_n0, Count_n1, 
        Count_n9, GND, VCC, GND_0, VCC_0;
    
    DFN1 \Count[5]  (.D(Count_n5), .CLK(Clk_c), .Q(\Count[5]_net_1 ));
    DFN1 \Count[1]  (.D(Count_n1), .CLK(Clk_c), .Q(\Count[1]_net_1 ));
    DFN1 \Count[0]  (.D(Count_n0), .CLK(Clk_c), .Q(\Count[0]_net_1 ));
    NOR3B Cout_RNO (.A(un1_Count_2_5), .B(un1_Count_2_6), .C(Reset_c), 
        .Y(Count13));
    XA1B \Count_RNO[7]  (.A(Count_c6), .B(\Count[7]_net_1 ), .C(
        un1_Reset_1), .Y(Count_n7));
    NOR2B \Count_RNIA98M[3]  (.A(\Count[3]_net_1 ), .B(Count_c2), .Y(
        Count_c3));
    NOR2B \Count_RNIKQV61[6]  (.A(\Count[6]_net_1 ), .B(Count_c5), .Y(
        Count_c6));
    XA1B \Count_RNO[2]  (.A(Count_c1), .B(\Count[2]_net_1 ), .C(
        un1_Reset_1), .Y(Count_n2));
    NOR3C \Count_RNIQ9AM[7]  (.A(\Count[8]_net_1 ), .B(
        \Count[7]_net_1 ), .C(un1_Count_2_3), .Y(un1_Count_2_5));
    AX1E \Count_RNO[9]  (.A(Count_c7), .B(Count_19_0), .C(N_49), .Y(
        Count_n9));
    VCC VCC_i (.Y(VCC));
    XA1B \Count_RNO[4]  (.A(Count_c3), .B(\Count[4]_net_1 ), .C(
        un1_Reset_1), .Y(Count_n4));
    NOR2B \Count_RNIT45B[9]  (.A(\Count[9]_net_1 ), .B(
        \Count[2]_net_1 ), .Y(un1_Count_2_0));
    NOR2B \Count_RNIJS3B[1]  (.A(\Count[1]_net_1 ), .B(
        \Count[0]_net_1 ), .Y(Count_c1));
    DFN1 \Count[8]  (.D(Count_n8), .CLK(Clk_c), .Q(\Count[8]_net_1 ));
    XA1B \Count_RNO[3]  (.A(Count_c2), .B(\Count[3]_net_1 ), .C(
        un1_Reset_1), .Y(Count_n3));
    NOR2A \Count_RNO_0[9]  (.A(\Count[8]_net_1 ), .B(un1_Reset_1), .Y(
        Count_19_0));
    XA1B \Count_RNO[8]  (.A(Count_c7), .B(\Count[8]_net_1 ), .C(
        un1_Reset_1), .Y(Count_n8));
    XA1B \Count_RNO[5]  (.A(Count_c4), .B(\Count[5]_net_1 ), .C(
        un1_Reset_1), .Y(Count_n5));
    XA1B \Count_RNO[1]  (.A(\Count[1]_net_1 ), .B(\Count[0]_net_1 ), 
        .C(un1_Reset_1), .Y(Count_n1));
    DFN1 \Count[2]  (.D(Count_n2), .CLK(Clk_c), .Q(\Count[2]_net_1 ));
    NOR2B \Count_RNI4JIC1[7]  (.A(\Count[7]_net_1 ), .B(Count_c6), .Y(
        Count_c7));
    GND GND_i (.Y(GND));
    NOR2B \Count_RNIT45B[5]  (.A(\Count[5]_net_1 ), .B(
        \Count[6]_net_1 ), .Y(un1_Count_2_1));
    DFN1 \Count[9]  (.D(Count_n9), .CLK(Clk_c), .Q(\Count[9]_net_1 ));
    XA1B \Count_RNO[6]  (.A(Count_c5), .B(\Count[6]_net_1 ), .C(
        un1_Reset_1), .Y(Count_n6));
    NOR2 \Count_RNO[0]  (.A(\Count[0]_net_1 ), .B(un1_Reset_1), .Y(
        Count_n0));
    NOR2B \Count_RNINLQR[4]  (.A(\Count[4]_net_1 ), .B(Count_c3), .Y(
        Count_c4));
    NOR2B \Count_RNIU0MG[2]  (.A(\Count[2]_net_1 ), .B(Count_c1), .Y(
        Count_c2));
    DFN1 \Count[6]  (.D(Count_n6), .CLK(Clk_c), .Q(\Count[6]_net_1 ));
    NOR2B \Count_RNI56D11[5]  (.A(\Count[5]_net_1 ), .B(Count_c4), .Y(
        Count_c5));
    DFN1 \Count[3]  (.D(Count_n3), .CLK(Clk_c), .Q(\Count[3]_net_1 ));
    DFN1 Cout (.D(Count13), .CLK(Clk_c), .Q(one_seond_clk_0_Cout));
    NOR3C \Count_RNID6E11[5]  (.A(un1_Count_2_1), .B(un1_Count_2_0), 
        .C(Count_c1), .Y(un1_Count_2_6));
    NOR2 \Count_RNIPK4B[3]  (.A(\Count[3]_net_1 ), .B(\Count[4]_net_1 )
        , .Y(un1_Count_2_3));
    OR2A \Count_RNO_1[9]  (.A(\Count[9]_net_1 ), .B(un1_Reset_1), .Y(
        N_49));
    DFN1 \Count[4]  (.D(Count_n4), .CLK(Clk_c), .Q(\Count[4]_net_1 ));
    AO1 \Count_RNICN0T1[7]  (.A(un1_Count_2_6), .B(un1_Count_2_5), .C(
        Reset_c), .Y(un1_Reset_1));
    DFN1 \Count[7]  (.D(Count_n7), .CLK(Clk_c), .Q(\Count[7]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module trattic_control(
       State_i_0,
       current_state,
       Reset_c,
       Clk_c,
       timer_EW_Done_NS,
       Yellow1_c,
       Red1_c_i,
       Ld_i_0,
       Green1_c,
       timer_NS_0_Done_NS,
       Ld_i,
       Red1_c,
       Green2_c
    );
output [3:3] State_i_0;
output [0:0] current_state;
input  Reset_c;
input  Clk_c;
input  timer_EW_Done_NS;
output Yellow1_c;
output Red1_c_i;
output Ld_i_0;
output Green1_c;
input  timer_NS_0_Done_NS;
output Ld_i;
output Red1_c;
output Green2_c;

    wire N_3, N_6, \current_state_ns[1] , N_4_i_0, GND, VCC, GND_0, 
        VCC_0;
    
    MX2B current_state_ns_1_0__m5 (.A(timer_NS_0_Done_NS), .B(
        timer_EW_Done_NS), .S(Red1_c), .Y(N_6));
    NOR2B \current_state_RNIVQ5D[0]  (.A(current_state[0]), .B(Red1_c), 
        .Y(State_i_0[3]));
    GND GND_i_0 (.Y(GND_0));
    MX2C current_state_ns_1_0__m2 (.A(timer_NS_0_Done_NS), .B(
        timer_EW_Done_NS), .S(Red1_c), .Y(N_3));
    DFN1C1 \current_state[1]  (.D(\current_state_ns[1] ), .CLK(Clk_c), 
        .CLR(Reset_c), .Q(Red1_c));
    NOR2A \current_state_RNIVQ5D_1[0]  (.A(Red1_c), .B(
        current_state[0]), .Y(Green2_c));
    VCC VCC_i (.Y(VCC));
    NOR2A \current_state_RNIVQ5D_0[0]  (.A(current_state[0]), .B(
        Red1_c), .Y(Yellow1_c));
    XOR2 current_state_ns_1_0__m3_0 (.A(N_3), .B(current_state[0]), .Y(
        N_4_i_0));
    GND GND_i (.Y(GND));
    NOR2 Sload_EW_i (.A(timer_NS_0_Done_NS), .B(Green1_c), .Y(Ld_i));
    NOR2 \current_state_RNIVQ5D_2[0]  (.A(current_state[0]), .B(Red1_c)
        , .Y(Green1_c));
    VCC VCC_i_0 (.Y(VCC_0));
    INV \current_state_RNIGVI6[1]  (.A(Red1_c), .Y(Red1_c_i));
    DFN1C1 \current_state[0]  (.D(N_4_i_0), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(current_state[0]));
    MX2B current_state_ns_1_0__m6 (.A(Red1_c), .B(N_6), .S(
        current_state[0]), .Y(\current_state_ns[1] ));
    OR2 \current_state_RNIU9DU[0]  (.A(timer_NS_0_Done_NS), .B(
        Green2_c), .Y(Ld_i_0));
    
endmodule


module BIN_to_BCD_BIN_to_BCD_0_1(
       un1_BIN_to_BCD_1,
       un1_BIN_to_BCD_1_1,
       Q_NS
    );
output [3:1] un1_BIN_to_BCD_1;
output [3:0] un1_BIN_to_BCD_1_1;
input  [7:1] Q_NS;

    wire \temp_15[1]_net_1 , \un48_temp[3] , \temp_11_i[0] , 
        \un32_temp[3] , \temp_7[1]_net_1 , CO1, \un15_temp[3] , 
        \temp_7[2]_net_1 , \temp_22[7]_net_1 , CO1_0, \temp_7_i[0] , 
        CO2, \temp_11[1]_net_1 , \temp_11[2]_net_1 , 
        \temp_15[2]_net_1 , \un1_BIN_to_BCD_1_2[1] , 
        \temp_22[5]_net_1 , \temp_22[6]_net_1 , \un76_temp_i_i_0[1] , 
        \un64_temp[3] , CO1_1, CO2_0, \un104_temp_i[2] , 
        \un1_BIN_to_BCD_1_2[0] , \temp_19[1]_net_1 , CO1_2, 
        \temp_19[2]_net_1 , \temp_19[0]_net_1 , \temp_15[0]_net_1 , 
        GND, VCC, GND_0, VCC_0;
    
    OR2B un32_temp_1_CO2 (.A(CO1_0), .B(\temp_7[1]_net_1 ), .Y(CO2));
    AX1A \temp_15[1]  (.A(Q_NS[3]), .B(\un48_temp[3] ), .C(
        \temp_11_i[0] ), .Y(\temp_15[1]_net_1 ));
    XOR2 \temp_15[0]  (.A(Q_NS[3]), .B(\un48_temp[3] ), .Y(
        \temp_15[0]_net_1 ));
    MX2C \temp_22[6]  (.A(\un76_temp_i_i_0[1] ), .B(\un32_temp[3] ), 
        .S(\un1_BIN_to_BCD_1_2[1] ), .Y(\temp_22[6]_net_1 ));
    AX1B un104_temp_1_SUM2_0 (.A(\temp_22[5]_net_1 ), .B(
        \un64_temp[3] ), .C(\un32_temp[3] ), .Y(\un104_temp_i[2] ));
    XNOR2 \temp_7[0]  (.A(Q_NS[5]), .B(\un15_temp[3] ), .Y(
        \temp_7_i[0] ));
    OAI1 \_l5.temp86lto2  (.A(\temp_7[1]_net_1 ), .B(\un48_temp[3] ), 
        .C(\un15_temp[3] ), .Y(\un1_BIN_to_BCD_1_2[1] ));
    VCC VCC_i (.Y(VCC));
    XOR2 un32_temp_1_SUM3_0 (.A(CO2), .B(\temp_7[2]_net_1 ), .Y(
        \un32_temp[3] ));
    AX1 \temp[5]  (.A(\un64_temp[3] ), .B(\un1_BIN_to_BCD_1_2[0] ), .C(
        \temp_22[5]_net_1 ), .Y(un1_BIN_to_BCD_1_1[2]));
    AX1A \temp_11[1]  (.A(Q_NS[4]), .B(\un32_temp[3] ), .C(
        \temp_7_i[0] ), .Y(\temp_11[1]_net_1 ));
    AX1E un64_temp_1_SUM3_0 (.A(\temp_15[1]_net_1 ), .B(CO1_1), .C(
        \temp_15[2]_net_1 ), .Y(\un64_temp[3] ));
    OA1B un104_temp_1_CO2 (.A(\temp_22[5]_net_1 ), .B(\un64_temp[3] ), 
        .C(\temp_22[6]_net_1 ), .Y(CO2_0));
    AX1 \temp[1]  (.A(Q_NS[1]), .B(un1_BIN_to_BCD_1_1[0]), .C(
        \temp_19[0]_net_1 ), .Y(un1_BIN_to_BCD_1[2]));
    OR2 un92_temp_1_CO1 (.A(Q_NS[1]), .B(\temp_19[0]_net_1 ), .Y(CO1_2)
        );
    XNOR2 \temp_22[5]  (.A(\un1_BIN_to_BCD_1_2[1] ), .B(\un48_temp[3] )
        , .Y(\temp_22[5]_net_1 ));
    AX1 \temp_19[1]  (.A(Q_NS[2]), .B(\un64_temp[3] ), .C(
        \temp_15[0]_net_1 ), .Y(\temp_19[1]_net_1 ));
    MX2B \temp[2]  (.A(\temp_19[1]_net_1 ), .B(\temp_19[2]_net_1 ), .S(
        CO1_2), .Y(un1_BIN_to_BCD_1[3]));
    OR2 un64_temp_1_CO1 (.A(Q_NS[2]), .B(\temp_15[0]_net_1 ), .Y(CO1_1)
        );
    XOR2 un104_temp_1_SUM3_0 (.A(CO2_0), .B(\temp_22[7]_net_1 ), .Y(
        \un1_BIN_to_BCD_1_2[0] ));
    GND GND_i (.Y(GND));
    OA1A \temp_7[1]  (.A(Q_NS[7]), .B(Q_NS[5]), .C(Q_NS[6]), .Y(
        \temp_7[1]_net_1 ));
    AX1E un92_temp_1_SUM3_0 (.A(\temp_19[1]_net_1 ), .B(CO1_2), .C(
        \temp_19[2]_net_1 ), .Y(un1_BIN_to_BCD_1_1[0]));
    MX2C \temp[6]  (.A(\temp_22[6]_net_1 ), .B(\un104_temp_i[2] ), .S(
        \un1_BIN_to_BCD_1_2[0] ), .Y(un1_BIN_to_BCD_1_1[3]));
    XOR3 un76_temp_1_SUM1_0 (.A(\temp_7[1]_net_1 ), .B(CO1_0), .C(
        \un48_temp[3] ), .Y(\un76_temp_i_i_0[1] ));
    XOR2 \temp[0]  (.A(Q_NS[1]), .B(un1_BIN_to_BCD_1_1[0]), .Y(
        un1_BIN_to_BCD_1[1]));
    XOR2 \temp[4]  (.A(\un1_BIN_to_BCD_1_2[0] ), .B(\un64_temp[3] ), 
        .Y(un1_BIN_to_BCD_1_1[1]));
    MX2A \temp_19[2]  (.A(\temp_15[1]_net_1 ), .B(\temp_15[2]_net_1 ), 
        .S(CO1_1), .Y(\temp_19[2]_net_1 ));
    OA1 un15_temp_1_CO2 (.A(Q_NS[5]), .B(Q_NS[6]), .C(Q_NS[7]), .Y(
        \un15_temp[3] ));
    OR2A un32_temp_1_CO1 (.A(\temp_7_i[0] ), .B(Q_NS[4]), .Y(CO1_0));
    NOR3A \temp_22[7]  (.A(\un15_temp[3] ), .B(\temp_7[1]_net_1 ), .C(
        \un48_temp[3] ), .Y(\temp_22[7]_net_1 ));
    MX2A \temp_11[2]  (.A(\temp_7[1]_net_1 ), .B(\temp_7[2]_net_1 ), 
        .S(CO1_0), .Y(\temp_11[2]_net_1 ));
    AX1E un48_temp_1_SUM3_0 (.A(\temp_11[1]_net_1 ), .B(CO1), .C(
        \temp_11[2]_net_1 ), .Y(\un48_temp[3] ));
    OR2A un48_temp_1_CO1 (.A(\temp_11_i[0] ), .B(Q_NS[3]), .Y(CO1));
    OR2A \temp_7[2]  (.A(Q_NS[7]), .B(\un15_temp[3] ), .Y(
        \temp_7[2]_net_1 ));
    XNOR2 \temp_11[0]  (.A(Q_NS[4]), .B(\un32_temp[3] ), .Y(
        \temp_11_i[0] ));
    XOR2 \temp_19[0]  (.A(Q_NS[2]), .B(\un64_temp[3] ), .Y(
        \temp_19[0]_net_1 ));
    MX2A \temp_15[2]  (.A(\temp_11[1]_net_1 ), .B(\temp_11[2]_net_1 ), 
        .S(CO1), .Y(\temp_15[2]_net_1 ));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module HC4511(
       Seg_c,
       SM_8S_1_i_0_a3_0_0,
       SM_8S_1_i_0,
       Disp_dat,
       N_21_i_0,
       N_6
    );
output [6:4] Seg_c;
output SM_8S_1_i_0_a3_0_0;
output [1:1] SM_8S_1_i_0;
input  [3:0] Disp_dat;
output N_21_i_0;
output N_6;

    wire \SM_8S_1_i_0_a3_0[1]_net_1 , N_17, N_19, N_74, 
        \SM_8S_1_i_0_a3[3]_net_1 , N_70, N_15_i, N_14_i_i, GND, VCC, 
        GND_0, VCC_0;
    
    NOR3A \SM_8S_1_i_0_a3[3]  (.A(Disp_dat[2]), .B(Disp_dat[0]), .C(
        Disp_dat[1]), .Y(\SM_8S_1_i_0_a3[3]_net_1 ));
    NOR2A \SM_8S_1_i_0_1[3]  (.A(SM_8S_1_i_0_a3_0_0), .B(
        \SM_8S_1_i_0_a3[3]_net_1 ), .Y(N_21_i_0));
    NOR2B \SM_8S_1_i_0_o2[1]  (.A(Disp_dat[3]), .B(Disp_dat[1]), .Y(
        N_19));
    NOR3B \SM_8S_1_i_i_a2[6]  (.A(Disp_dat[1]), .B(Disp_dat[2]), .C(
        Disp_dat[0]), .Y(N_74));
    AX1C \SM_8S_1_i_i_x2[6]  (.A(Disp_dat[1]), .B(Disp_dat[2]), .C(
        Disp_dat[3]), .Y(N_15_i));
    GND GND_i_0 (.Y(GND_0));
    NOR2 \SM_8S_1_0_0_o2[5]  (.A(Disp_dat[1]), .B(Disp_dat[2]), .Y(
        N_17));
    OR2B \SM_8S_1_i_0_a3_0[1]  (.A(Disp_dat[2]), .B(Disp_dat[0]), .Y(
        \SM_8S_1_i_0_a3_0[1]_net_1 ));
    AO1C \SM_8S_1_0_0[5]  (.A(N_17), .B(Disp_dat[0]), .C(N_15_i), .Y(
        Seg_c[5]));
    VCC VCC_i (.Y(VCC));
    OR3C \SM_8S_1_0_i_a3_0[2]  (.A(Disp_dat[3]), .B(Disp_dat[0]), .C(
        N_17), .Y(N_6));
    AO1A \SM_8S_1_i_i_a3[6]  (.A(Disp_dat[0]), .B(Disp_dat[2]), .C(
        Disp_dat[1]), .Y(N_70));
    AOI1B \SM_8S_1_i_i_a3_0[4]  (.A(Disp_dat[2]), .B(Disp_dat[1]), .C(
        Disp_dat[0]), .Y(Seg_c[4]));
    GND GND_i (.Y(GND));
    XOR2 \SM_8S_1_i_0_x2[0]  (.A(Disp_dat[2]), .B(Disp_dat[0]), .Y(
        N_14_i_i));
    OA1B \SM_8S_1_i_0[1]  (.A(N_19), .B(\SM_8S_1_i_0_a3_0[1]_net_1 ), 
        .C(N_74), .Y(SM_8S_1_i_0[1]));
    VCC VCC_i_0 (.Y(VCC_0));
    OR2B \SM_8S_1_i_i_1[6]  (.A(N_70), .B(N_15_i), .Y(Seg_c[6]));
    OR2A \SM_8S_1_i_0_a3_0[0]  (.A(N_19), .B(N_14_i_i), .Y(
        SM_8S_1_i_0_a3_0_0));
    
endmodule


module dymamic_led(
       SM_8S_1_i_0,
       SM_8S_1_i_0_a3_0,
       Seg_c,
       Q_NS,
       Q_NS_0,
       un1_BIN_to_BCD_1_1,
       un1_BIN_to_BCD_0_1,
       un1_BIN_to_BCD_1,
       un1_BIN_to_BCD_0,
       N_6,
       N_21_i_0,
       Reset_c,
       Clk_c,
       Disp_dat8,
       Disp_dat7,
       Disp_dat6,
       Disp_dat9
    );
output [1:1] SM_8S_1_i_0;
output [0:0] SM_8S_1_i_0_a3_0;
output [6:4] Seg_c;
input  [0:0] Q_NS;
input  [0:0] Q_NS_0;
input  [3:0] un1_BIN_to_BCD_1_1;
input  [3:0] un1_BIN_to_BCD_0_1;
input  [3:1] un1_BIN_to_BCD_1;
input  [3:1] un1_BIN_to_BCD_0;
output N_6;
output N_21_i_0;
input  Reset_c;
input  Clk_c;
output Disp_dat8;
output Disp_dat7;
output Disp_dat6;
output Disp_dat9;

    wire \count_i[0] , \count[0]_net_1 , N_29, \count[1]_net_1 , N_33, 
        \Disp_dat[3] , SUM1_0, N_26, N_28, N_30, N_32, \Disp_dat[0] , 
        \Disp_dat[2] , N_27, N_31, \Disp_dat[1] , GND, VCC, GND_0, 
        VCC_0;
    
    MX2C \count_RNIHP4S92[1]  (.A(un1_BIN_to_BCD_0[3]), .B(
        un1_BIN_to_BCD_1[3]), .S(\count[1]_net_1 ), .Y(N_29));
    MX2 \count_RNI1AQJM4[0]  (.A(N_27), .B(N_31), .S(\count[0]_net_1 ), 
        .Y(\Disp_dat[1] ));
    MX2C \count_RNIJC01A2[1]  (.A(un1_BIN_to_BCD_0[1]), .B(
        un1_BIN_to_BCD_1[1]), .S(\count[1]_net_1 ), .Y(N_27));
    XOR2 un3_count_1_SUM1_0 (.A(\count[1]_net_1 ), .B(\count[0]_net_1 )
        , .Y(SUM1_0));
    GND GND_i_0 (.Y(GND_0));
    MX2 \count_RNIRUL5P5[0]  (.A(N_28), .B(N_32), .S(\count[0]_net_1 ), 
        .Y(\Disp_dat[2] ));
    MX2 \count_RNIJ56C03[1]  (.A(un1_BIN_to_BCD_0[2]), .B(
        un1_BIN_to_BCD_1[2]), .S(\count[1]_net_1 ), .Y(N_28));
    DFN1C1 \count[0]  (.D(\count_i[0] ), .CLK(Clk_c), .CLR(Reset_c), 
        .Q(\count[0]_net_1 ));
    VCC VCC_i (.Y(VCC));
    OR2B \count_RNI9I46[0]  (.A(\count[1]_net_1 ), .B(\count[0]_net_1 )
        , .Y(Disp_dat9));
    MX2 \count_RNI4IDMO2[1]  (.A(un1_BIN_to_BCD_0_1[2]), .B(
        un1_BIN_to_BCD_1_1[2]), .S(\count[1]_net_1 ), .Y(N_32));
    HC4511 HC4511_0 (.Seg_c({Seg_c[6], Seg_c[5], Seg_c[4]}), 
        .SM_8S_1_i_0_a3_0_0(SM_8S_1_i_0_a3_0[0]), .SM_8S_1_i_0({
        SM_8S_1_i_0[1]}), .Disp_dat({\Disp_dat[3] , \Disp_dat[2] , 
        \Disp_dat[1] , \Disp_dat[0] }), .N_21_i_0(N_21_i_0), .N_6(N_6));
    MX2 \count_RNIBPHJ35[0]  (.A(N_29), .B(N_33), .S(\count[0]_net_1 ), 
        .Y(\Disp_dat[3] ));
    OR2 \count_RNI9I46_2[0]  (.A(\count[1]_net_1 ), .B(
        \count[0]_net_1 ), .Y(Disp_dat6));
    GND GND_i (.Y(GND));
    MX2 \count_RNIQM47A2[0]  (.A(N_26), .B(N_30), .S(\count[0]_net_1 ), 
        .Y(\Disp_dat[0] ));
    MX2C \count_RNIAMNFC2[1]  (.A(un1_BIN_to_BCD_0_1[1]), .B(
        un1_BIN_to_BCD_1_1[1]), .S(\count[1]_net_1 ), .Y(N_31));
    VCC VCC_i_0 (.Y(VCC_0));
    OR2A \count_RNI9I46_0[0]  (.A(\count[1]_net_1 ), .B(
        \count[0]_net_1 ), .Y(Disp_dat8));
    MX2C \count_RNIMOAKP2[1]  (.A(un1_BIN_to_BCD_0_1[3]), .B(
        un1_BIN_to_BCD_1_1[3]), .S(\count[1]_net_1 ), .Y(N_33));
    DFN1C1 \count[1]  (.D(SUM1_0), .CLK(Clk_c), .CLR(Reset_c), .Q(
        \count[1]_net_1 ));
    MX2C \count_RNI5MT7[1]  (.A(Q_NS_0[0]), .B(Q_NS[0]), .S(
        \count[1]_net_1 ), .Y(N_26));
    INV \count_RNO[0]  (.A(\count[0]_net_1 ), .Y(\count_i[0] ));
    MX2C \count_RNIHP4S92_0[1]  (.A(un1_BIN_to_BCD_0_1[0]), .B(
        un1_BIN_to_BCD_1_1[0]), .S(\count[1]_net_1 ), .Y(N_30));
    OR2A \count_RNI9I46_1[0]  (.A(\count[0]_net_1 ), .B(
        \count[1]_net_1 ), .Y(Disp_dat7));
    
endmodule


module timer_NS(
       current_state,
       Q_NS_0,
       Clk_c,
       Red1_c,
       Yellow1_c,
       Q_NSlde_i_o2tt_m1_0_a2,
       N_60_0,
       Ld_i,
       Reset_c,
       timer_NS_0_Done_NS,
       one_seond_clk_0_Cout,
       N_16
    );
input  [0:0] current_state;
output [7:0] Q_NS_0;
input  Clk_c;
input  Red1_c;
input  Yellow1_c;
output Q_NSlde_i_o2tt_m1_0_a2;
input  N_60_0;
input  Ld_i;
input  Reset_c;
output timer_NS_0_Done_NS;
input  one_seond_clk_0_Cout;
output N_16;

    wire Q_NS_e2_0_2, Q_NS_e2_0_0, N_40, N_404, Q_NS_e2_0_a2_2_0, N_42, 
        Done_NS_0_a2_m3_e_5, Done_NS_0_a2_m3_e_2, Done_NS_0_a2_m3_e_1, 
        Done_NS_0_a2_m3_e_3, N_18, N_60, Q_NS_e2_0_a2_4_1_net_1, 
        Q_NS_e1, N_35, Q_NS_e1_0_0, N_34, Q_NS_e2, N_19, N_24, Q_NS_e7, 
        N_81, Q_NS_e7_0_0, Q_NS_e6, N_54, N_55, Q_NS_e5, Q_NS_e5_0_0, 
        N_51, Q_NS_e4, Q_NS_e4_0_0, N_46, Q_NS_e0, N_62, Q_NS_e0_0_0, 
        Q_NS_e3, N_43, Q_NS_e3_0_0, N_44, N_23, N_26, N_22, N_52, N_47, 
        N_36, Q_NS_e7_0_a2_0, N_58, Q_NS_e0_0_a2_0_0_net_1, N_45, N_33, 
        Q_NS_e6_0_a2_0, Q_NS_e3_0_a2_0, Q_NS_e4_0_a2_0_0, 
        Q_NS_e5_0_a2_0_0, Q_NS_e2_0_a2_1_0, Q_NS_e1_0_a2_1_0, GND, VCC, 
        GND_0, VCC_0;
    
    OA1C \Q_NS_RNO_3[2]  (.A(N_60), .B(Ld_i), .C(Reset_c), .Y(N_404));
    OR3B \Q_NS_RNO_2[2]  (.A(Ld_i), .B(Q_NS_e2_0_a2_1_0), .C(Reset_c), 
        .Y(N_40));
    OR3C \Q_NS_RNO[1]  (.A(N_35), .B(Q_NS_e1_0_0), .C(N_34), .Y(
        Q_NS_e1));
    OR3A \Q_NS_RNIEA9C[6]  (.A(N_22), .B(Q_NS_0[5]), .C(Q_NS_0[6]), .Y(
        N_26));
    AOI1B \Q_NS_RNO_0[4]  (.A(Q_NS_0[4]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .C(N_47), .Y(Q_NS_e4_0_0));
    OR3B Q_NS_e1_0_a2_4 (.A(Ld_i), .B(N_16), .C(Reset_c), .Y(N_62));
    OR2 \Q_NS_RNIQJHH2[6]  (.A(N_62), .B(N_26), .Y(N_81));
    NOR3A Q_NS_e1_0_o2 (.A(N_60_0), .B(Reset_c), .C(N_60), .Y(N_23));
    NOR3B \Q_NS_RNO_1[7]  (.A(Ld_i), .B(Q_NS_0[7]), .C(Reset_c), .Y(
        Q_NS_e7_0_a2_0));
    OAI1 \Q_NS_RNO[7]  (.A(N_81), .B(Q_NS_0[7]), .C(Q_NS_e7_0_0), .Y(
        Q_NS_e7));
    NOR2B \Q_NS_RNO_6[2]  (.A(Q_NS_0[2]), .B(N_18), .Y(
        Q_NS_e2_0_a2_1_0));
    OR3 \Q_NS_RNO_2[3]  (.A(N_19), .B(Q_NS_0[3]), .C(N_62), .Y(N_44));
    OA1A \Q_NS_RNO_2[6]  (.A(N_22), .B(Q_NS_0[5]), .C(Q_NS_0[6]), .Y(
        Q_NS_e6_0_a2_0));
    OR3B \Q_NS_RNO_0[3]  (.A(Ld_i), .B(Q_NS_e3_0_a2_0), .C(Reset_c), 
        .Y(N_43));
    NOR2B \Q_NS_RNO_3[3]  (.A(Q_NS_0[3]), .B(N_19), .Y(Q_NS_e3_0_a2_0));
    VCC VCC_i (.Y(VCC));
    NOR2A \Q_NS_RNO_3[5]  (.A(Q_NS_0[5]), .B(N_22), .Y(
        Q_NS_e5_0_a2_0_0));
    NOR2 \Q_NS_RNI5GG3[4]  (.A(Q_NS_0[3]), .B(Q_NS_0[4]), .Y(
        Done_NS_0_a2_m3_e_2));
    AOI1B \Q_NS_RNO_0[7]  (.A(Q_NS_e7_0_a2_0), .B(N_26), .C(N_58), .Y(
        Q_NS_e7_0_0));
    OA1 \Q_NS_RNO_0[0]  (.A(Ld_i), .B(Q_NS_e0_0_a2_0_0_net_1), .C(N_33)
        , .Y(Q_NS_e0_0_0));
    NOR3C \Q_NS_RNI0NND[2]  (.A(Done_NS_0_a2_m3_e_2), .B(
        Done_NS_0_a2_m3_e_1), .C(Done_NS_0_a2_m3_e_3), .Y(
        Done_NS_0_a2_m3_e_5));
    DFN1 \Q_NS[0]  (.D(Q_NS_e0), .CLK(Clk_c), .Q(Q_NS_0[0]));
    AO1C \Q_NS_RNO[2]  (.A(N_19), .B(N_24), .C(Q_NS_e2_0_2), .Y(
        Q_NS_e2));
    AOI1B \Q_NS_RNO_1[2]  (.A(Q_NS_e2_0_a2_2_0), .B(N_16), .C(N_42), 
        .Y(Q_NS_e2_0_0));
    OR2 \Q_NS_RNI0Q75[2]  (.A(Q_NS_0[2]), .B(N_18), .Y(N_19));
    NOR2 \Q_NS_RNI7OG3[2]  (.A(Q_NS_0[7]), .B(Q_NS_0[2]), .Y(
        Done_NS_0_a2_m3_e_1));
    NOR3 \Q_NS_RNI5AO8[4]  (.A(N_19), .B(Q_NS_0[3]), .C(Q_NS_0[4]), .Y(
        N_22));
    DFN1 \Q_NS[7]  (.D(Q_NS_e7), .CLK(Clk_c), .Q(Q_NS_0[7]));
    OR2B Q_NS_e2_0_a2_4_1 (.A(Red1_c), .B(current_state[0]), .Y(
        Q_NS_e2_0_a2_4_1_net_1));
    DFN1 \Q_NS[5]  (.D(Q_NS_e5), .CLK(Clk_c), .Q(Q_NS_0[5]));
    NOR3C \Q_NS_RNO_0[2]  (.A(Q_NS_e2_0_0), .B(N_40), .C(N_404), .Y(
        Q_NS_e2_0_2));
    OR3C \Q_NS_RNO[3]  (.A(N_43), .B(Q_NS_e3_0_0), .C(N_44), .Y(
        Q_NS_e3));
    OR3B \Q_NS_RNO_0[6]  (.A(Ld_i), .B(Q_NS_e6_0_a2_0), .C(Reset_c), 
        .Y(N_54));
    OR2B \Q_NS_RNO_2[7]  (.A(Q_NS_0[7]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .Y(N_58));
    OA1C \Q_NS_RNO_4[2]  (.A(Ld_i), .B(Reset_c), .C(Yellow1_c), .Y(
        Q_NS_e2_0_a2_2_0));
    OR3B \Q_NS_RNO_1[5]  (.A(N_22), .B(N_24), .C(Q_NS_0[5]), .Y(N_51));
    OR3C \Q_NS_RNO[6]  (.A(N_54), .B(N_55), .C(N_81), .Y(Q_NS_e6));
    OR2B \Q_NS_RNO_1[6]  (.A(Q_NS_0[6]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .Y(N_55));
    DFN1 \Q_NS[6]  (.D(Q_NS_e6), .CLK(Clk_c), .Q(Q_NS_0[6]));
    DFN1 \Q_NS[3]  (.D(Q_NS_e3), .CLK(Clk_c), .Q(Q_NS_0[3]));
    DFN1 \Q_NS[2]  (.D(Q_NS_e2), .CLK(Clk_c), .Q(Q_NS_0[2]));
    GND GND_i (.Y(GND));
    NOR2B \Q_NS_RNO_3[1]  (.A(Q_NS_0[0]), .B(Q_NS_0[1]), .Y(
        Q_NS_e1_0_a2_1_0));
    OR2A Q_NS_e2_0_o2 (.A(Ld_i), .B(one_seond_clk_0_Cout), .Y(N_16));
    OR2B \Q_NS_RNO_1[4]  (.A(N_24), .B(N_22), .Y(N_46));
    OA1 \Q_NS_RNO_3[4]  (.A(N_19), .B(Q_NS_0[3]), .C(Q_NS_0[4]), .Y(
        Q_NS_e4_0_a2_0_0));
    OR3B \Q_NS_RNO_2[5]  (.A(Ld_i), .B(Q_NS_e5_0_a2_0_0), .C(Reset_c), 
        .Y(N_52));
    NOR2 Q_NSlde_i_o2tt_m1_0_a2_inst_1 (.A(one_seond_clk_0_Cout), .B(
        Reset_c), .Y(Q_NSlde_i_o2tt_m1_0_a2));
    AOI1B \Q_NS_RNO_0[5]  (.A(Q_NS_0[5]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .C(N_52), .Y(Q_NS_e5_0_0));
    OR3B \Q_NS_RNO_2[4]  (.A(Ld_i), .B(Q_NS_e4_0_a2_0_0), .C(Reset_c), 
        .Y(N_47));
    NOR3A \Q_NS_RNIKEM6[6]  (.A(one_seond_clk_0_Cout), .B(Q_NS_0[6]), 
        .C(Q_NS_0[5]), .Y(Done_NS_0_a2_m3_e_3));
    NOR2A Q_NS_e2_0_a2_4 (.A(N_16), .B(Q_NS_e2_0_a2_4_1_net_1), .Y(
        N_60));
    OR3C \Q_NS_RNO[4]  (.A(N_35), .B(Q_NS_e4_0_0), .C(N_46), .Y(
        Q_NS_e4));
    DFN1 \Q_NS[1]  (.D(Q_NS_e1), .CLK(Clk_c), .Q(Q_NS_0[1]));
    OR2B \Q_NS_RNO_4[3]  (.A(Q_NS_0[3]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .Y(N_45));
    OR2B \Q_NS_RNO_1[0]  (.A(Q_NS_0[0]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .Y(N_33));
    OA1 \Q_NS_RNO_1[3]  (.A(Ld_i), .B(Q_NS_e0_0_a2_0_0_net_1), .C(N_45)
        , .Y(Q_NS_e3_0_0));
    OR3C \Q_NS_RNO[5]  (.A(N_35), .B(Q_NS_e5_0_0), .C(N_51), .Y(
        Q_NS_e5));
    OR3B \Q_NS_RNO_2[1]  (.A(Ld_i), .B(Q_NS_e1_0_a2_1_0), .C(Reset_c), 
        .Y(N_36));
    OR2A \Q_NS_RNO_1[1]  (.A(N_24), .B(N_18), .Y(N_34));
    DFN1 \Q_NS[4]  (.D(Q_NS_e4), .CLK(Clk_c), .Q(Q_NS_0[4]));
    OR2 \Q_NS_RNIVNF3[0]  (.A(Q_NS_0[1]), .B(Q_NS_0[0]), .Y(N_18));
    OR2A Q_NS_e1_0_o2_0 (.A(N_62), .B(Reset_c), .Y(N_24));
    OR2B \Q_NS_RNO_5[2]  (.A(Q_NS_0[2]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .Y(N_42));
    OAI1 \Q_NS_RNO[0]  (.A(N_62), .B(Q_NS_0[0]), .C(Q_NS_e0_0_0), .Y(
        Q_NS_e0));
    OR2A \Q_NS_RNIVE7H[0]  (.A(Done_NS_0_a2_m3_e_5), .B(N_18), .Y(
        timer_NS_0_Done_NS));
    OR2A Q_NS_e0_0_a2_0_0 (.A(Yellow1_c), .B(Reset_c), .Y(
        Q_NS_e0_0_a2_0_0_net_1));
    AOI1B \Q_NS_RNO_0[1]  (.A(Q_NS_0[1]), .B(Q_NSlde_i_o2tt_m1_0_a2), 
        .C(N_36), .Y(Q_NS_e1_0_0));
    VCC VCC_i_0 (.Y(VCC_0));
    AO1A Q_NS_e1_0_a2_0 (.A(Reset_c), .B(Ld_i), .C(N_23), .Y(N_35));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


module timer_EW(
       current_state,
       Q_NS,
       Clk_c,
       timer_EW_Done_NS,
       Red1_c,
       Q_NSlde_i_o2tt_m1_0_a2,
       one_seond_clk_0_Cout,
       Reset_c,
       Ld_i,
       Green2_c,
       N_16,
       N_60
    );
input  [0:0] current_state;
output [7:0] Q_NS;
input  Clk_c;
output timer_EW_Done_NS;
input  Red1_c;
input  Q_NSlde_i_o2tt_m1_0_a2;
input  one_seond_clk_0_Cout;
input  Reset_c;
input  Ld_i;
input  Green2_c;
input  N_16;
output N_60;

    wire Q_NS_e2_0_2, N_41, Q_NS_e2_0_0, N_39_i, 
        Q_NS_e2_0_a2_4_1_net_1, Q_NS_e2, N_19, N_24, N_30, Q_NS_e5, 
        Q_NS_e5_0_0, N_51, Q_NS_e3, N_43, N_45, N_44, Q_NS_e7, N_56, 
        N_58, N_57, Q_NS_e1, N_34, Q_NS_e1_0_0, Q_NS_e4, Q_NS_e4_0_0, 
        N_46, N_26, N_62, N_22, N_40, N_47, N_52, N_36, Q_NS_e6_0_0, 
        N_54, Q_NS_e6_0_a2_0, Q_NS_e4_0_a2_0_0, Q_NS_e1_0_a2_1_0, 
        Q_NS_e3_0_a2_0, Q_NS_e5_0_a2_0_0, Q_NS_e2_0_a2_1_0, Q_NS_e6, 
        Q_NS_e0, GND, VCC, GND_0, VCC_0;
    
    OR2B \Q_NS_RNO_3[2]  (.A(Q_NS_e2_0_a2_1_0), .B(N_30), .Y(N_40));
    AOI1B \Q_NS_RNO_2[2]  (.A(Q_NS[2]), .B(Q_NSlde_i_o2tt_m1_0_a2), .C(
        N_40), .Y(Q_NS_e2_0_0));
    OR3C \Q_NS_RNO[1]  (.A(N_34), .B(Q_NS_e1_0_0), .C(N_39_i), .Y(
        Q_NS_e1));
    AOI1B \Q_NS_RNO_0[4]  (.A(Q_NS[4]), .B(Q_NSlde_i_o2tt_m1_0_a2), .C(
        N_47), .Y(Q_NS_e4_0_0));
    OR2B Q_NS_e1_0_a2_4 (.A(N_30), .B(one_seond_clk_0_Cout), .Y(N_62));
    OR2B \Q_NS_RNO_1[7]  (.A(Q_NS[7]), .B(Q_NSlde_i_o2tt_m1_0_a2), .Y(
        N_58));
    OR3C \Q_NS_RNO[7]  (.A(N_56), .B(N_58), .C(N_57), .Y(Q_NS_e7));
    OR3 \Q_NS_RNO_2[3]  (.A(N_19), .B(Q_NS[3]), .C(N_62), .Y(N_44));
    OA1 \Q_NS_RNO_2[6]  (.A(N_22), .B(Q_NS[5]), .C(Q_NS[6]), .Y(
        Q_NS_e6_0_a2_0));
    OR2B \Q_NS_RNO_0[3]  (.A(Q_NS_e3_0_a2_0), .B(N_30), .Y(N_43));
    NOR2B \Q_NS_RNO_3[3]  (.A(Q_NS[3]), .B(N_19), .Y(Q_NS_e3_0_a2_0));
    VCC VCC_i (.Y(VCC));
    NOR2B \Q_NS_RNO_3[5]  (.A(Q_NS[5]), .B(N_22), .Y(Q_NS_e5_0_a2_0_0));
    OR3B \Q_NS_RNO_0[7]  (.A(N_30), .B(Q_NS[7]), .C(N_26), .Y(N_56));
    NOR3 \Q_NS_RNISBRL[6]  (.A(N_22), .B(Q_NS[5]), .C(Q_NS[6]), .Y(
        N_26));
    DFN1 \Q_NS[0]  (.D(Q_NS_e0), .CLK(Clk_c), .Q(Q_NS[0]));
    AO1C \Q_NS_RNO[2]  (.A(N_19), .B(N_24), .C(Q_NS_e2_0_2), .Y(
        Q_NS_e2));
    OR3B \Q_NS_RNIF75S[7]  (.A(one_seond_clk_0_Cout), .B(N_26), .C(
        Q_NS[7]), .Y(timer_EW_Done_NS));
    OR3B \Q_NS_RNO_1[2]  (.A(Green2_c), .B(N_16), .C(N_30), .Y(N_41));
    DFN1 \Q_NS[7]  (.D(Q_NS_e7), .CLK(Clk_c), .Q(Q_NS[7]));
    NOR2A Q_NS_e2_0_a2_4_1 (.A(current_state[0]), .B(Red1_c), .Y(
        Q_NS_e2_0_a2_4_1_net_1));
    DFN1 \Q_NS[5]  (.D(Q_NS_e5), .CLK(Clk_c), .Q(Q_NS[5]));
    NOR3C \Q_NS_RNO_0[2]  (.A(N_41), .B(Q_NS_e2_0_0), .C(N_39_i), .Y(
        Q_NS_e2_0_2));
    NOR2 un1_Reset_1_i_i_a2 (.A(Ld_i), .B(Reset_c), .Y(N_30));
    OR3C \Q_NS_RNO[3]  (.A(N_43), .B(N_45), .C(N_44), .Y(Q_NS_e3));
    AOI1B \Q_NS_RNO_0[6]  (.A(Q_NS[6]), .B(Q_NSlde_i_o2tt_m1_0_a2), .C(
        N_54), .Y(Q_NS_e6_0_0));
    OR3A \Q_NS_RNO_2[7]  (.A(N_26), .B(N_62), .C(Q_NS[7]), .Y(N_57));
    OA1 \Q_NS_RNO_4[2]  (.A(Q_NS[0]), .B(Q_NS[1]), .C(Q_NS[2]), .Y(
        Q_NS_e2_0_a2_1_0));
    OR3A \Q_NS_RNO_1[5]  (.A(N_24), .B(N_22), .C(Q_NS[5]), .Y(N_51));
    AO1C \Q_NS_RNO[6]  (.A(N_62), .B(N_26), .C(Q_NS_e6_0_0), .Y(
        Q_NS_e6));
    OR2B \Q_NS_RNO_1[6]  (.A(Q_NS_e6_0_a2_0), .B(N_30), .Y(N_54));
    DFN1 \Q_NS[6]  (.D(Q_NS_e6), .CLK(Clk_c), .Q(Q_NS[6]));
    DFN1 \Q_NS[3]  (.D(Q_NS_e3), .CLK(Clk_c), .Q(Q_NS[3]));
    DFN1 \Q_NS[2]  (.D(Q_NS_e2), .CLK(Clk_c), .Q(Q_NS[2]));
    GND GND_i (.Y(GND));
    OR3 \Q_NS_RNI6VA9[0]  (.A(Q_NS[0]), .B(Q_NS[1]), .C(Q_NS[2]), .Y(
        N_19));
    NOR2B \Q_NS_RNO_3[1]  (.A(Q_NS[0]), .B(Q_NS[1]), .Y(
        Q_NS_e1_0_a2_1_0));
    OR2A \Q_NS_RNO_1[4]  (.A(N_24), .B(N_22), .Y(N_46));
    OA1 \Q_NS_RNO_3[4]  (.A(N_19), .B(Q_NS[3]), .C(Q_NS[4]), .Y(
        Q_NS_e4_0_a2_0_0));
    OR2B \Q_NS_RNO_2[5]  (.A(Q_NS_e5_0_a2_0_0), .B(N_30), .Y(N_52));
    OA1C Q_NS_e2_0_a2_0 (.A(Ld_i), .B(N_60), .C(Reset_c), .Y(N_39_i));
    AOI1B \Q_NS_RNO_0[5]  (.A(Q_NS[5]), .B(Q_NSlde_i_o2tt_m1_0_a2), .C(
        N_52), .Y(Q_NS_e5_0_0));
    OR2B \Q_NS_RNO_2[4]  (.A(Q_NS_e4_0_a2_0_0), .B(N_30), .Y(N_47));
    OR2B Q_NS_e2_0_a2_4 (.A(Q_NS_e2_0_a2_4_1_net_1), .B(N_16), .Y(N_60)
        );
    OR3C \Q_NS_RNO[4]  (.A(N_39_i), .B(Q_NS_e4_0_0), .C(N_46), .Y(
        Q_NS_e4));
    DFN1 \Q_NS[1]  (.D(Q_NS_e1), .CLK(Clk_c), .Q(Q_NS[1]));
    OR3 \Q_NS_RNIFTIF[4]  (.A(N_19), .B(Q_NS[3]), .C(Q_NS[4]), .Y(N_22)
        );
    OR2B \Q_NS_RNO_1[3]  (.A(Q_NS[3]), .B(Q_NSlde_i_o2tt_m1_0_a2), .Y(
        N_45));
    OR3C \Q_NS_RNO[5]  (.A(N_39_i), .B(Q_NS_e5_0_0), .C(N_51), .Y(
        Q_NS_e5));
    OR2B \Q_NS_RNO_2[1]  (.A(Q_NS_e1_0_a2_1_0), .B(N_30), .Y(N_36));
    AOI1B \Q_NS_RNO_1[1]  (.A(Q_NS[1]), .B(Q_NSlde_i_o2tt_m1_0_a2), .C(
        N_36), .Y(Q_NS_e1_0_0));
    DFN1 \Q_NS[4]  (.D(Q_NS_e4), .CLK(Clk_c), .Q(Q_NS[4]));
    OR2A Q_NS_e1_0_o2_0 (.A(N_62), .B(Reset_c), .Y(N_24));
    MX2A \Q_NS_RNO[0]  (.A(N_62), .B(Q_NSlde_i_o2tt_m1_0_a2), .S(
        Q_NS[0]), .Y(Q_NS_e0));
    OR3A \Q_NS_RNO_0[1]  (.A(N_24), .B(Q_NS[0]), .C(Q_NS[1]), .Y(N_34));
    VCC VCC_i_0 (.Y(VCC_0));
    GND GND_i_0 (.Y(GND_0));
    
endmodule


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
        \Q_NS[6] , \Q_NS[7] , one_seond_clk_0_Cout, VCC, 
        \trattic_control_0.current_state[0] , \timer_EW.State_i_0[3] , 
        \dymamic_led_0.Disp_dat9 , \dymamic_led_0.Disp_dat6 , 
        \dymamic_led_0.Disp_dat7 , \dymamic_led_0.Disp_dat8 , 
        \SM_8S_1_i_0_a3_0[0] , \SM_8S_1_i_0[1] , 
        \dymamic_led_0.HC4511_0.N_6 , Clk_c, Reset_c, Red1_c, 
        Yellow1_c, Green1_c, Green2_c, \Seg_c[4] , \Seg_c[5] , 
        \Seg_c[6] , GND, timer_NS_0_Done_NS, timer_EW_Done_NS, 
        \timer_NS_0.Ld_i , \un1_BIN_to_BCD_1[1] , 
        \un1_BIN_to_BCD_1_1[0] , \un1_BIN_to_BCD_0_1[1] , 
        \un1_BIN_to_BCD_1_1[1] , \un1_BIN_to_BCD_0[1] , 
        \un1_BIN_to_BCD_0_1[0] , \un1_BIN_to_BCD_1[2] , 
        \un1_BIN_to_BCD_0_1[2] , \un1_BIN_to_BCD_1_1[2] , 
        \un1_BIN_to_BCD_0[2] , \un1_BIN_to_BCD_0[3] , 
        \un1_BIN_to_BCD_1_1[3] , \un1_BIN_to_BCD_1[3] , 
        \un1_BIN_to_BCD_0_1[3] , Q_NSlde_i_o2tt_m1_0_a2, 
        \dymamic_led_0.HC4511_0.N_21_i_0 , Red1_c_i, \timer_EW.Ld_i , 
        \timer_NS_0.N_16 , \timer_EW.N_60 , GND_0, VCC_0;
    
    BIN_to_BCD_BIN_to_BCD_0 BIN_to_BCD_0 (.un1_BIN_to_BCD_0({
        \un1_BIN_to_BCD_0[3] , \un1_BIN_to_BCD_0[2] , 
        \un1_BIN_to_BCD_0[1] }), .un1_BIN_to_BCD_0_1({
        \un1_BIN_to_BCD_0_1[3] , \un1_BIN_to_BCD_0_1[2] , 
        \un1_BIN_to_BCD_0_1[1] , \un1_BIN_to_BCD_0_1[0] }), .Q_NS_0({
        \Q_NS_0[7] , \Q_NS_0[6] , \Q_NS_0[5] , \Q_NS_0[4] , 
        \Q_NS_0[3] , \Q_NS_0[2] , \Q_NS_0[1] }));
    CLKBUF Clk_pad (.PAD(Clk), .Y(Clk_c));
    OUTBUF \Sl_pad[0]  (.D(\dymamic_led_0.Disp_dat6 ), .PAD(Sl[0]));
    OUTBUF \Seg_pad[5]  (.D(\Seg_c[5] ), .PAD(Seg[5]));
    OUTBUF Yellow2_pad (.D(\timer_EW.State_i_0[3] ), .PAD(Yellow2));
    GND GND_i_0 (.Y(GND_0));
    one_seond_clk one_seond_clk_0 (.Clk_c(Clk_c), 
        .one_seond_clk_0_Cout(one_seond_clk_0_Cout), .Reset_c(Reset_c));
    trattic_control trattic_control_0 (.State_i_0({
        \timer_EW.State_i_0[3] }), .current_state({
        \trattic_control_0.current_state[0] }), .Reset_c(Reset_c), 
        .Clk_c(Clk_c), .timer_EW_Done_NS(timer_EW_Done_NS), .Yellow1_c(
        Yellow1_c), .Red1_c_i(Red1_c_i), .Ld_i_0(\timer_NS_0.Ld_i ), 
        .Green1_c(Green1_c), .timer_NS_0_Done_NS(timer_NS_0_Done_NS), 
        .Ld_i(\timer_EW.Ld_i ), .Red1_c(Red1_c), .Green2_c(Green2_c));
    OUTBUF \Sl_pad[1]  (.D(\dymamic_led_0.Disp_dat7 ), .PAD(Sl[1]));
    OUTBUF \Seg_pad[2]  (.D(\dymamic_led_0.HC4511_0.N_6 ), .PAD(Seg[2])
        );
    VCC VCC_i (.Y(VCC));
    OUTBUF \Seg_pad[4]  (.D(\Seg_c[4] ), .PAD(Seg[4]));
    OUTBUF \Seg_pad[3]  (.D(\dymamic_led_0.HC4511_0.N_21_i_0 ), .PAD(
        Seg[3]));
    BIN_to_BCD_BIN_to_BCD_0_1 BIN_to_BCD_1 (.un1_BIN_to_BCD_1({
        \un1_BIN_to_BCD_1[3] , \un1_BIN_to_BCD_1[2] , 
        \un1_BIN_to_BCD_1[1] }), .un1_BIN_to_BCD_1_1({
        \un1_BIN_to_BCD_1_1[3] , \un1_BIN_to_BCD_1_1[2] , 
        \un1_BIN_to_BCD_1_1[1] , \un1_BIN_to_BCD_1_1[0] }), .Q_NS({
        \Q_NS[7] , \Q_NS[6] , \Q_NS[5] , \Q_NS[4] , \Q_NS[3] , 
        \Q_NS[2] , \Q_NS[1] }));
    OUTBUF \Seg_pad[6]  (.D(\Seg_c[6] ), .PAD(Seg[6]));
    OUTBUF Green2_pad (.D(Green2_c), .PAD(Green2));
    dymamic_led dymamic_led_0 (.SM_8S_1_i_0({\SM_8S_1_i_0[1] }), 
        .SM_8S_1_i_0_a3_0({\SM_8S_1_i_0_a3_0[0] }), .Seg_c({\Seg_c[6] , 
        \Seg_c[5] , \Seg_c[4] }), .Q_NS({\Q_NS[0] }), .Q_NS_0({
        \Q_NS_0[0] }), .un1_BIN_to_BCD_1_1({\un1_BIN_to_BCD_1_1[3] , 
        \un1_BIN_to_BCD_1_1[2] , \un1_BIN_to_BCD_1_1[1] , 
        \un1_BIN_to_BCD_1_1[0] }), .un1_BIN_to_BCD_0_1({
        \un1_BIN_to_BCD_0_1[3] , \un1_BIN_to_BCD_0_1[2] , 
        \un1_BIN_to_BCD_0_1[1] , \un1_BIN_to_BCD_0_1[0] }), 
        .un1_BIN_to_BCD_1({\un1_BIN_to_BCD_1[3] , 
        \un1_BIN_to_BCD_1[2] , \un1_BIN_to_BCD_1[1] }), 
        .un1_BIN_to_BCD_0({\un1_BIN_to_BCD_0[3] , 
        \un1_BIN_to_BCD_0[2] , \un1_BIN_to_BCD_0[1] }), .N_6(
        \dymamic_led_0.HC4511_0.N_6 ), .N_21_i_0(
        \dymamic_led_0.HC4511_0.N_21_i_0 ), .Reset_c(Reset_c), .Clk_c(
        Clk_c), .Disp_dat8(\dymamic_led_0.Disp_dat8 ), .Disp_dat7(
        \dymamic_led_0.Disp_dat7 ), .Disp_dat6(
        \dymamic_led_0.Disp_dat6 ), .Disp_dat9(
        \dymamic_led_0.Disp_dat9 ));
    GND GND_i (.Y(GND));
    OUTBUF Yellow1_pad (.D(Yellow1_c), .PAD(Yellow1));
    INBUF Reset_pad (.PAD(Reset), .Y(Reset_c));
    OUTBUF Red1_pad (.D(Red1_c), .PAD(Red1));
    VCC VCC_i_0 (.Y(VCC_0));
    timer_NS timer_NS_0 (.current_state({
        \trattic_control_0.current_state[0] }), .Q_NS_0({\Q_NS_0[7] , 
        \Q_NS_0[6] , \Q_NS_0[5] , \Q_NS_0[4] , \Q_NS_0[3] , 
        \Q_NS_0[2] , \Q_NS_0[1] , \Q_NS_0[0] }), .Clk_c(Clk_c), 
        .Red1_c(Red1_c), .Yellow1_c(Yellow1_c), 
        .Q_NSlde_i_o2tt_m1_0_a2(Q_NSlde_i_o2tt_m1_0_a2), .N_60_0(
        \timer_EW.N_60 ), .Ld_i(\timer_NS_0.Ld_i ), .Reset_c(Reset_c), 
        .timer_NS_0_Done_NS(timer_NS_0_Done_NS), .one_seond_clk_0_Cout(
        one_seond_clk_0_Cout), .N_16(\timer_NS_0.N_16 ));
    OUTBUF \Sl_pad[3]  (.D(\dymamic_led_0.Disp_dat9 ), .PAD(Sl[3]));
    OUTBUF \Sl_pad[2]  (.D(\dymamic_led_0.Disp_dat8 ), .PAD(Sl[2]));
    timer_EW timer_EW (.current_state({
        \trattic_control_0.current_state[0] }), .Q_NS({\Q_NS[7] , 
        \Q_NS[6] , \Q_NS[5] , \Q_NS[4] , \Q_NS[3] , \Q_NS[2] , 
        \Q_NS[1] , \Q_NS[0] }), .Clk_c(Clk_c), .timer_EW_Done_NS(
        timer_EW_Done_NS), .Red1_c(Red1_c), .Q_NSlde_i_o2tt_m1_0_a2(
        Q_NSlde_i_o2tt_m1_0_a2), .one_seond_clk_0_Cout(
        one_seond_clk_0_Cout), .Reset_c(Reset_c), .Ld_i(
        \timer_EW.Ld_i ), .Green2_c(Green2_c), .N_16(\timer_NS_0.N_16 )
        , .N_60(\timer_EW.N_60 ));
    OUTBUF \Seg_pad[1]  (.D(\SM_8S_1_i_0[1] ), .PAD(Seg[1]));
    OUTBUF Red2_pad (.D(Red1_c_i), .PAD(Red2));
    OUTBUF \Seg_pad[7]  (.D(GND), .PAD(Seg[7]));
    OUTBUF \Seg_pad[0]  (.D(\SM_8S_1_i_0_a3_0[0] ), .PAD(Seg[0]));
    OUTBUF Green1_pad (.D(Green1_c), .PAD(Green1));
    
endmodule
