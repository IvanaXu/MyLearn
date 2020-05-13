`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


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

    wire \BIN_to_BCD_0_Tens_[3] , \BIN_to_BCD_0_Tens_[2] , 
        \BIN_to_BCD_0_Tens_[1] , \BIN_to_BCD_0_Tens_[0] , 
        \BIN_to_BCD_0_Units_[3] , \BIN_to_BCD_0_Units_[2] , 
        \BIN_to_BCD_0_Units_[1] , \BIN_to_BCD_0_Units_[0] , 
        \BIN_to_BCD_1_Tens_[3] , \BIN_to_BCD_1_Tens_[2] , 
        \BIN_to_BCD_1_Tens_[1] , \BIN_to_BCD_1_Tens_[0] , 
        \BIN_to_BCD_1_Units_[3] , \BIN_to_BCD_1_Units_[2] , 
        \BIN_to_BCD_1_Units_[1] , \BIN_to_BCD_1_Units_[0] , 
        one_seond_clk_0_Cout, timer_EW_Done_NS, \timer_EW_Q_NS_[7] , 
        \timer_EW_Q_NS_[6] , \timer_EW_Q_NS_[5] , \timer_EW_Q_NS_[4] , 
        \timer_EW_Q_NS_[3] , \timer_EW_Q_NS_[2] , \timer_EW_Q_NS_[1] , 
        \timer_EW_Q_NS_[0] , timer_NS_0_Done_NS, \timer_NS_0_Q_NS_[7] , 
        \timer_NS_0_Q_NS_[6] , \timer_NS_0_Q_NS_[5] , 
        \timer_NS_0_Q_NS_[4] , \timer_NS_0_Q_NS_[3] , 
        \timer_NS_0_Q_NS_[2] , \timer_NS_0_Q_NS_[1] , 
        \timer_NS_0_Q_NS_[0] , trattic_control_0_Sload_EW, 
        trattic_control_0_Sload_NS, \trattic_control_0_State_cnt_[3] , 
        \trattic_control_0_State_cnt_[2] , 
        \trattic_control_0_State_cnt_[1] , 
        \trattic_control_0_State_cnt_[0] , GND_net, VCC_net;
    
    BIN_to_BCD BIN_to_BCD_0 (.Data({\timer_NS_0_Q_NS_[7] , 
        \timer_NS_0_Q_NS_[6] , \timer_NS_0_Q_NS_[5] , 
        \timer_NS_0_Q_NS_[4] , \timer_NS_0_Q_NS_[3] , 
        \timer_NS_0_Q_NS_[2] , \timer_NS_0_Q_NS_[1] , 
        \timer_NS_0_Q_NS_[0] }), .Units({\BIN_to_BCD_0_Units_[3] , 
        \BIN_to_BCD_0_Units_[2] , \BIN_to_BCD_0_Units_[1] , 
        \BIN_to_BCD_0_Units_[0] }), .Tens({\BIN_to_BCD_0_Tens_[3] , 
        \BIN_to_BCD_0_Tens_[2] , \BIN_to_BCD_0_Tens_[1] , 
        \BIN_to_BCD_0_Tens_[0] }), .Hundreds({nc0, nc1, nc2, nc3}));
    VCC VCC (.Y(VCC_net));
    dymamic_led dymamic_led_0 (.Seg({Seg[7], Seg[6], Seg[5], Seg[4], 
        Seg[3], Seg[2], Seg[1], Seg[0]}), .Sl({Sl[3], Sl[2], Sl[1], 
        Sl[0]}), .Clk(Clk), .Reset(Reset), .a({
        \BIN_to_BCD_0_Units_[3] , \BIN_to_BCD_0_Units_[2] , 
        \BIN_to_BCD_0_Units_[1] , \BIN_to_BCD_0_Units_[0] }), .b({
        \BIN_to_BCD_0_Tens_[3] , \BIN_to_BCD_0_Tens_[2] , 
        \BIN_to_BCD_0_Tens_[1] , \BIN_to_BCD_0_Tens_[0] }), .c({
        \BIN_to_BCD_1_Units_[3] , \BIN_to_BCD_1_Units_[2] , 
        \BIN_to_BCD_1_Units_[1] , \BIN_to_BCD_1_Units_[0] }), .d({
        \BIN_to_BCD_1_Tens_[3] , \BIN_to_BCD_1_Tens_[2] , 
        \BIN_to_BCD_1_Tens_[1] , \BIN_to_BCD_1_Tens_[0] }));
    BIN_to_BCD BIN_to_BCD_1 (.Data({\timer_EW_Q_NS_[7] , 
        \timer_EW_Q_NS_[6] , \timer_EW_Q_NS_[5] , \timer_EW_Q_NS_[4] , 
        \timer_EW_Q_NS_[3] , \timer_EW_Q_NS_[2] , \timer_EW_Q_NS_[1] , 
        \timer_EW_Q_NS_[0] }), .Units({\BIN_to_BCD_1_Units_[3] , 
        \BIN_to_BCD_1_Units_[2] , \BIN_to_BCD_1_Units_[1] , 
        \BIN_to_BCD_1_Units_[0] }), .Tens({\BIN_to_BCD_1_Tens_[3] , 
        \BIN_to_BCD_1_Tens_[2] , \BIN_to_BCD_1_Tens_[1] , 
        \BIN_to_BCD_1_Tens_[0] }), .Hundreds({nc4, nc5, nc6, nc7}));
    GND GND (.Y(GND_net));
    timer_NS timer_NS_0 (.Clk(Clk), .Reset(Reset), .Ld(
        trattic_control_0_Sload_NS), .En(one_seond_clk_0_Cout), .State({
        \trattic_control_0_State_cnt_[3] , 
        \trattic_control_0_State_cnt_[2] , 
        \trattic_control_0_State_cnt_[1] , 
        \trattic_control_0_State_cnt_[0] }), .Q_NS({
        \timer_NS_0_Q_NS_[7] , \timer_NS_0_Q_NS_[6] , 
        \timer_NS_0_Q_NS_[5] , \timer_NS_0_Q_NS_[4] , 
        \timer_NS_0_Q_NS_[3] , \timer_NS_0_Q_NS_[2] , 
        \timer_NS_0_Q_NS_[1] , \timer_NS_0_Q_NS_[0] }), .Done_NS(
        timer_NS_0_Done_NS));
    timer_EW timer_EW (.Clk(Clk), .Reset(Reset), .Ld(
        trattic_control_0_Sload_EW), .En(one_seond_clk_0_Cout), .State({
        \trattic_control_0_State_cnt_[3] , 
        \trattic_control_0_State_cnt_[2] , 
        \trattic_control_0_State_cnt_[1] , 
        \trattic_control_0_State_cnt_[0] }), .Q_NS({
        \timer_EW_Q_NS_[7] , \timer_EW_Q_NS_[6] , \timer_EW_Q_NS_[5] , 
        \timer_EW_Q_NS_[4] , \timer_EW_Q_NS_[3] , \timer_EW_Q_NS_[2] , 
        \timer_EW_Q_NS_[1] , \timer_EW_Q_NS_[0] }), .Done_NS(
        timer_EW_Done_NS));
    one_seond_clk one_seond_clk_0 (.Reset(Reset), .Clk(Clk), .Cout(
        one_seond_clk_0_Cout), .Count({nc8, nc9, nc10, nc11, nc12, 
        nc13, nc14, nc15, nc16, nc17}));
    trattic_control trattic_control_0 (.Clk(Clk), .Reset(Reset), 
        .Done_NS(timer_NS_0_Done_NS), .Done_EW(timer_EW_Done_NS), 
        .Red1(Red1), .Yellow1(Yellow1), .Green1(Green1), .Red2(Red2), 
        .Yellow2(Yellow2), .Green2(Green2), .Sload_NS(
        trattic_control_0_Sload_NS), .Sload_EW(
        trattic_control_0_Sload_EW), .State_cnt({
        \trattic_control_0_State_cnt_[3] , 
        \trattic_control_0_State_cnt_[2] , 
        \trattic_control_0_State_cnt_[1] , 
        \trattic_control_0_State_cnt_[0] }));
    
endmodule
