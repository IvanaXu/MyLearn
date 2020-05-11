`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC153(
       I1,
       I2,
       S1,
       S2,
       E1N,
       E2N,
       Y1,
       Y2
    );
input  [0:3] I1;
input  [0:3] I2;
input  S1;
input  S2;
input  E1N;
input  E2N;
output Y1;
output Y2;

    wire GND, VCC, N_4, N_6, \I1_c[3] , \I1_c[2] , \I1_c[1] , 
        \I1_c[0] , \I2_c[3] , \I2_c[2] , \I2_c[1] , \I2_c[0] , S1_c, 
        S2_c, E1N_c, E2N_c, Y2_pad_RNO_2_net_1, Y2_pad_RNO_0_net_1, 
        Y1_pad_RNO_2_net_1, Y1_pad_RNO_0_net_1, Y2_iv_i_0, Y1_iv_i_0, 
        GND_0, VCC_0;
    
    MX2 Y2_pad_RNO_0 (.A(\I2_c[0] ), .B(\I2_c[1] ), .S(S2_c), .Y(
        Y2_pad_RNO_0_net_1));
    OA1B Y1_pad_RNO (.A(Y1_pad_RNO_0_net_1), .B(S1_c), .C(Y1_iv_i_0), 
        .Y(N_6));
    INBUF \I1_pad[1]  (.PAD(I1[1]), .Y(\I1_c[1] ));
    INBUF \I1_pad[3]  (.PAD(I1[3]), .Y(\I1_c[3] ));
    GND GND_i_0 (.Y(GND_0));
    MX2 Y1_pad_RNO_0 (.A(\I1_c[0] ), .B(\I1_c[1] ), .S(S2_c), .Y(
        Y1_pad_RNO_0_net_1));
    INBUF \I1_pad[0]  (.PAD(I1[0]), .Y(\I1_c[0] ));
    VCC VCC_i (.Y(VCC));
    INBUF \I1_pad[2]  (.PAD(I1[2]), .Y(\I1_c[2] ));
    INBUF \I2_pad[2]  (.PAD(I2[2]), .Y(\I2_c[2] ));
    INBUF \I2_pad[3]  (.PAD(I2[3]), .Y(\I2_c[3] ));
    INBUF S2_pad (.PAD(S2), .Y(S2_c));
    INBUF S1_pad (.PAD(S1), .Y(S1_c));
    GND GND_i (.Y(GND));
    MX2 Y2_pad_RNO_2 (.A(\I2_c[2] ), .B(\I2_c[3] ), .S(S2_c), .Y(
        Y2_pad_RNO_2_net_1));
    MX2 Y1_pad_RNO_2 (.A(\I1_c[2] ), .B(\I1_c[3] ), .S(S2_c), .Y(
        Y1_pad_RNO_2_net_1));
    OA1B Y2_pad_RNO (.A(Y2_pad_RNO_0_net_1), .B(S1_c), .C(Y2_iv_i_0), 
        .Y(N_4));
    VCC VCC_i_0 (.Y(VCC_0));
    INBUF \I2_pad[1]  (.PAD(I2[1]), .Y(\I2_c[1] ));
    INBUF \I2_pad[0]  (.PAD(I2[0]), .Y(\I2_c[0] ));
    AO1A Y2_pad_RNO_1 (.A(Y2_pad_RNO_2_net_1), .B(S1_c), .C(E2N_c), .Y(
        Y2_iv_i_0));
    INBUF E2N_pad (.PAD(E2N), .Y(E2N_c));
    INBUF E1N_pad (.PAD(E1N), .Y(E1N_c));
    OUTBUF Y2_pad (.D(N_4), .PAD(Y2));
    AO1A Y1_pad_RNO_1 (.A(Y1_pad_RNO_2_net_1), .B(S1_c), .C(E1N_c), .Y(
        Y1_iv_i_0));
    OUTBUF Y1_pad (.D(N_6), .PAD(Y1));
    
endmodule
