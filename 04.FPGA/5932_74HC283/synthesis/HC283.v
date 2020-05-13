`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC283(
       sum,
       cout,
       a,
       b,
       cin,
       shiftedcarry
    );
output [3:0] sum;
output cout;
input  [3:0] a;
input  [3:0] b;
input  cin;
output [4:0] shiftedcarry;

    wire VCC, GND, ADD_5x5_slow_I0_un1_CO1_i, N_5, 
        \carry_generation.carrychain_3_0_0.N_7 , \sum_c[0] , 
        \sum_c[1] , \sum_c[2] , \sum_c[3] , \a_c[0] , \a_c[1] , 
        \a_c[2] , \a_c[3] , \b_c[0] , \b_c[1] , \b_c[2] , \b_c[3] , 
        cin_c_c, N_38_i_0_c, GND_0, VCC_0;
    
    OUTBUF \shiftedcarry_pad[1]  (.D(N_5), .PAD(shiftedcarry[1]));
    XOR3 \carry_generation.carrychain_2_1_SUM0_0  (.A(\b_c[0] ), .B(
        \a_c[0] ), .C(cin_c_c), .Y(\sum_c[0] ));
    INBUF \b_pad[3]  (.PAD(b[3]), .Y(\b_c[3] ));
    INBUF \b_pad[2]  (.PAD(b[2]), .Y(\b_c[2] ));
    OUTBUF \shiftedcarry_pad[3]  (.D(N_38_i_0_c), .PAD(shiftedcarry[3])
        );
    MAJ3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I0_un1_CO1_i  
        (.A(N_5), .B(\b_c[1] ), .C(\a_c[1] ), .Y(
        ADD_5x5_slow_I0_un1_CO1_i));
    GND GND_i_0 (.Y(GND_0));
    OUTBUF \sum_pad[1]  (.D(\sum_c[1] ), .PAD(sum[1]));
    INBUF \a_pad[0]  (.PAD(a[0]), .Y(\a_c[0] ));
    VCC VCC_i (.Y(VCC));
    OUTBUF \shiftedcarry_pad[2]  (.D(ADD_5x5_slow_I0_un1_CO1_i), .PAD(
        shiftedcarry[2]));
    OUTBUF \sum_pad[3]  (.D(\sum_c[3] ), .PAD(sum[3]));
    INBUF \b_pad[1]  (.PAD(b[1]), .Y(\b_c[1] ));
    OUTBUF \shiftedcarry_pad[4]  (.D(
        \carry_generation.carrychain_3_0_0.N_7 ), .PAD(shiftedcarry[4])
        );
    OUTBUF \sum_pad[2]  (.D(\sum_c[2] ), .PAD(sum[2]));
    MAJ3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I4_un1_CO1_i  
        (.A(\a_c[3] ), .B(\b_c[3] ), .C(N_38_i_0_c), .Y(
        \carry_generation.carrychain_3_0_0.N_7 ));
    INBUF \a_pad[2]  (.PAD(a[2]), .Y(\a_c[2] ));
    GND GND_i (.Y(GND));
    MAJ3 \carry_generation.carrychain_2_1_CO0_i  (.A(\a_c[0] ), .B(
        cin_c_c), .C(\b_c[0] ), .Y(N_5));
    INBUF \a_pad[3]  (.PAD(a[3]), .Y(\a_c[3] ));
    OUTBUF cout_pad (.D(\carry_generation.carrychain_3_0_0.N_7 ), .PAD(
        cout));
    XOR3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I4_S_0  (.A(
        \a_c[3] ), .B(N_38_i_0_c), .C(\b_c[3] ), .Y(\sum_c[3] ));
    VCC VCC_i_0 (.Y(VCC_0));
    XOR3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I2_S_0  (.A(
        \a_c[2] ), .B(ADD_5x5_slow_I0_un1_CO1_i), .C(\b_c[2] ), .Y(
        \sum_c[2] ));
    OUTBUF \sum_pad[0]  (.D(\sum_c[0] ), .PAD(sum[0]));
    INBUF \a_pad[1]  (.PAD(a[1]), .Y(\a_c[1] ));
    OUTBUF \shiftedcarry_pad[0]  (.D(cin_c_c), .PAD(shiftedcarry[0]));
    INBUF cin_pad (.PAD(cin), .Y(cin_c_c));
    XOR3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I0_S_0  (.A(
        \a_c[1] ), .B(N_5), .C(\b_c[1] ), .Y(\sum_c[1] ));
    INBUF \b_pad[0]  (.PAD(b[0]), .Y(\b_c[0] ));
    MAJ3 
        \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I2_un1_CO1_i_o3  
        (.A(ADD_5x5_slow_I0_un1_CO1_i), .B(\a_c[2] ), .C(\b_c[2] ), .Y(
        N_38_i_0_c));
    
endmodule
