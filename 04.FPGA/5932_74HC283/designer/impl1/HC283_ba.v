`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


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

    wire ADD_5x5_slow_I0_un1_CO1_i, N_5, 
        \carry_generation.carrychain_3_0_0.N_7 , \sum_c[0] , 
        \sum_c[1] , \sum_c[2] , \sum_c[3] , \a_c[0] , \a_c[1] , 
        \a_c[2] , \a_c[3] , \b_c[0] , \b_c[1] , \b_c[2] , \b_c[3] , 
        cin_c_c, N_38_i_0_c, \shiftedcarry_pad[1]/U0/NET1 , 
        \shiftedcarry_pad[1]/U0/NET2 , \b_pad[3]/U0/NET1 , 
        \b_pad[2]/U0/NET1 , \shiftedcarry_pad[3]/U0/NET1 , 
        \shiftedcarry_pad[3]/U0/NET2 , \sum_pad[1]/U0/NET1 , 
        \sum_pad[1]/U0/NET2 , \a_pad[0]/U0/NET1 , 
        \shiftedcarry_pad[2]/U0/NET1 , \shiftedcarry_pad[2]/U0/NET2 , 
        \sum_pad[3]/U0/NET1 , \sum_pad[3]/U0/NET2 , \b_pad[1]/U0/NET1 , 
        \shiftedcarry_pad[4]/U0/NET1 , \shiftedcarry_pad[4]/U0/NET2 , 
        \sum_pad[2]/U0/NET1 , \sum_pad[2]/U0/NET2 , \a_pad[2]/U0/NET1 , 
        \a_pad[3]/U0/NET1 , \cout_pad/U0/NET1 , \cout_pad/U0/NET2 , 
        \sum_pad[0]/U0/NET1 , \sum_pad[0]/U0/NET2 , \a_pad[1]/U0/NET1 , 
        \shiftedcarry_pad[0]/U0/NET1 , \shiftedcarry_pad[0]/U0/NET2 , 
        VCC, \cin_pad/U0/NET1 , \b_pad[0]/U0/NET1 , GND, AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \a_pad[2]/U0/U0  (.PAD(a[2]), .Y(\a_pad[2]/U0/NET1 ));
    IOPAD_IN \a_pad[1]/U0/U0  (.PAD(a[1]), .Y(\a_pad[1]/U0/NET1 ));
    IOIN_IB \a_pad[3]/U0/U1  (.YIN(\a_pad[3]/U0/NET1 ), .Y(\a_c[3] ));
    IOTRI_OB_EB \shiftedcarry_pad[4]/U0/U1  (.D(
        \carry_generation.carrychain_3_0_0.N_7 ), .E(VCC), .DOUT(
        \shiftedcarry_pad[4]/U0/NET1 ), .EOUT(
        \shiftedcarry_pad[4]/U0/NET2 ));
    IOTRI_OB_EB \shiftedcarry_pad[3]/U0/U1  (.D(N_38_i_0_c), .E(VCC), 
        .DOUT(\shiftedcarry_pad[3]/U0/NET1 ), .EOUT(
        \shiftedcarry_pad[3]/U0/NET2 ));
    XOR3 \carry_generation.carrychain_2_1_SUM0_0  (.A(\b_c[0] ), .B(
        \a_c[0] ), .C(cin_c_c), .Y(\sum_c[0] ));
    IOIN_IB \b_pad[1]/U0/U1  (.YIN(\b_pad[1]/U0/NET1 ), .Y(\b_c[1] ));
    IOTRI_OB_EB \sum_pad[3]/U0/U1  (.D(\sum_c[3] ), .E(VCC), .DOUT(
        \sum_pad[3]/U0/NET1 ), .EOUT(\sum_pad[3]/U0/NET2 ));
    IOTRI_OB_EB \cout_pad/U0/U1  (.D(
        \carry_generation.carrychain_3_0_0.N_7 ), .E(VCC), .DOUT(
        \cout_pad/U0/NET1 ), .EOUT(\cout_pad/U0/NET2 ));
    IOPAD_TRI \sum_pad[2]/U0/U0  (.D(\sum_pad[2]/U0/NET1 ), .E(
        \sum_pad[2]/U0/NET2 ), .PAD(sum[2]));
    IOPAD_TRI \shiftedcarry_pad[4]/U0/U0  (.D(
        \shiftedcarry_pad[4]/U0/NET1 ), .E(
        \shiftedcarry_pad[4]/U0/NET2 ), .PAD(shiftedcarry[4]));
    IOPAD_TRI \shiftedcarry_pad[3]/U0/U0  (.D(
        \shiftedcarry_pad[3]/U0/NET1 ), .E(
        \shiftedcarry_pad[3]/U0/NET2 ), .PAD(shiftedcarry[3]));
    IOIN_IB \b_pad[3]/U0/U1  (.YIN(\b_pad[3]/U0/NET1 ), .Y(\b_c[3] ));
    IOPAD_TRI \cout_pad/U0/U0  (.D(\cout_pad/U0/NET1 ), .E(
        \cout_pad/U0/NET2 ), .PAD(cout));
    IOIN_IB \a_pad[0]/U0/U1  (.YIN(\a_pad[0]/U0/NET1 ), .Y(\a_c[0] ));
    MAJ3 \carry_generation.carrychain_2_1_CO0_i  (.A(\a_c[0] ), .B(
        cin_c_c), .C(\b_c[0] ), .Y(N_5));
    MAJ3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I0_un1_CO1_i  
        (.A(N_5), .B(\b_c[1] ), .C(\a_c[1] ), .Y(
        ADD_5x5_slow_I0_un1_CO1_i));
    XOR3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I4_S_0  (.A(
        \a_c[3] ), .B(N_38_i_0_c), .C(\b_c[3] ), .Y(\sum_c[3] ));
    IOPAD_TRI \sum_pad[3]/U0/U0  (.D(\sum_pad[3]/U0/NET1 ), .E(
        \sum_pad[3]/U0/NET2 ), .PAD(sum[3]));
    IOPAD_IN \b_pad[0]/U0/U0  (.PAD(b[0]), .Y(\b_pad[0]/U0/NET1 ));
    IOPAD_IN \cin_pad/U0/U0  (.PAD(cin), .Y(\cin_pad/U0/NET1 ));
    IOPAD_IN \a_pad[3]/U0/U0  (.PAD(a[3]), .Y(\a_pad[3]/U0/NET1 ));
    IOIN_IB \b_pad[2]/U0/U1  (.YIN(\b_pad[2]/U0/NET1 ), .Y(\b_c[2] ));
    IOPAD_IN \b_pad[1]/U0/U0  (.PAD(b[1]), .Y(\b_pad[1]/U0/NET1 ));
    IOPAD_IN \b_pad[3]/U0/U0  (.PAD(b[3]), .Y(\b_pad[3]/U0/NET1 ));
    IOTRI_OB_EB \sum_pad[1]/U0/U1  (.D(\sum_c[1] ), .E(VCC), .DOUT(
        \sum_pad[1]/U0/NET1 ), .EOUT(\sum_pad[1]/U0/NET2 ));
    IOIN_IB \cin_pad/U0/U1  (.YIN(\cin_pad/U0/NET1 ), .Y(cin_c_c));
    IOPAD_IN \a_pad[0]/U0/U0  (.PAD(a[0]), .Y(\a_pad[0]/U0/NET1 ));
    IOIN_IB \a_pad[2]/U0/U1  (.YIN(\a_pad[2]/U0/NET1 ), .Y(\a_c[2] ));
    IOIN_IB \a_pad[1]/U0/U1  (.YIN(\a_pad[1]/U0/NET1 ), .Y(\a_c[1] ));
    XOR3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I0_S_0  (.A(
        \a_c[1] ), .B(N_5), .C(\b_c[1] ), .Y(\sum_c[1] ));
    IOTRI_OB_EB \sum_pad[0]/U0/U1  (.D(\sum_c[0] ), .E(VCC), .DOUT(
        \sum_pad[0]/U0/NET1 ), .EOUT(\sum_pad[0]/U0/NET2 ));
    IOPAD_TRI \sum_pad[1]/U0/U0  (.D(\sum_pad[1]/U0/NET1 ), .E(
        \sum_pad[1]/U0/NET2 ), .PAD(sum[1]));
    MAJ3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I4_un1_CO1_i  
        (.A(\a_c[3] ), .B(\b_c[3] ), .C(N_38_i_0_c), .Y(
        \carry_generation.carrychain_3_0_0.N_7 ));
    IOTRI_OB_EB \shiftedcarry_pad[0]/U0/U1  (.D(cin_c_c), .E(VCC), 
        .DOUT(\shiftedcarry_pad[0]/U0/NET1 ), .EOUT(
        \shiftedcarry_pad[0]/U0/NET2 ));
    IOPAD_TRI \shiftedcarry_pad[0]/U0/U0  (.D(
        \shiftedcarry_pad[0]/U0/NET1 ), .E(
        \shiftedcarry_pad[0]/U0/NET2 ), .PAD(shiftedcarry[0]));
    IOTRI_OB_EB \shiftedcarry_pad[2]/U0/U1  (.D(
        ADD_5x5_slow_I0_un1_CO1_i), .E(VCC), .DOUT(
        \shiftedcarry_pad[2]/U0/NET1 ), .EOUT(
        \shiftedcarry_pad[2]/U0/NET2 ));
    IOPAD_IN \b_pad[2]/U0/U0  (.PAD(b[2]), .Y(\b_pad[2]/U0/NET1 ));
    IOTRI_OB_EB \shiftedcarry_pad[1]/U0/U1  (.D(N_5), .E(VCC), .DOUT(
        \shiftedcarry_pad[1]/U0/NET1 ), .EOUT(
        \shiftedcarry_pad[1]/U0/NET2 ));
    IOPAD_TRI \shiftedcarry_pad[2]/U0/U0  (.D(
        \shiftedcarry_pad[2]/U0/NET1 ), .E(
        \shiftedcarry_pad[2]/U0/NET2 ), .PAD(shiftedcarry[2]));
    IOPAD_TRI \sum_pad[0]/U0/U0  (.D(\sum_pad[0]/U0/NET1 ), .E(
        \sum_pad[0]/U0/NET2 ), .PAD(sum[0]));
    IOPAD_TRI \shiftedcarry_pad[1]/U0/U0  (.D(
        \shiftedcarry_pad[1]/U0/NET1 ), .E(
        \shiftedcarry_pad[1]/U0/NET2 ), .PAD(shiftedcarry[1]));
    IOTRI_OB_EB \sum_pad[2]/U0/U1  (.D(\sum_c[2] ), .E(VCC), .DOUT(
        \sum_pad[2]/U0/NET1 ), .EOUT(\sum_pad[2]/U0/NET2 ));
    IOIN_IB \b_pad[0]/U0/U1  (.YIN(\b_pad[0]/U0/NET1 ), .Y(\b_c[0] ));
    MAJ3 
        \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I2_un1_CO1_i_o3  
        (.A(ADD_5x5_slow_I0_un1_CO1_i), .B(\a_c[2] ), .C(\b_c[2] ), .Y(
        N_38_i_0_c));
    XOR3 \carry_generation.carrychain_3_0_0_ADD_5x5_slow_I2_S_0  (.A(
        \a_c[2] ), .B(ADD_5x5_slow_I0_un1_CO1_i), .C(\b_c[2] ), .Y(
        \sum_c[2] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
