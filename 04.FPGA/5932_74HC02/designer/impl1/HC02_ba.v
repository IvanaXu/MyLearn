`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18
// File used only for Simulation


module HC02(
       A,
       B,
       Y
    );
input  [4:1] A;
input  [4:1] B;
output [4:1] Y;

    wire \Y_pad_RNO[1]_net_1 , \Y_pad_RNO[2]_net_1 , 
        \Y_pad_RNO[3]_net_1 , \Y_pad_RNO[4]_net_1 , \A_c[1] , \A_c[2] , 
        \A_c[3] , \A_c[4] , \B_c[1] , \B_c[2] , \B_c[3] , \B_c[4] , 
        \B_pad[3]/U0/NET1 , \B_pad[2]/U0/NET1 , \B_pad[4]/U0/NET1 , 
        \A_pad[4]/U0/NET1 , \B_pad[1]/U0/NET1 , \A_pad[2]/U0/NET1 , 
        \A_pad[3]/U0/NET1 , \Y_pad[4]/U0/NET1 , \Y_pad[4]/U0/NET2 , 
        \A_pad[1]/U0/NET1 , \Y_pad[1]/U0/NET1 , \Y_pad[1]/U0/NET2 , 
        \Y_pad[2]/U0/NET1 , \Y_pad[2]/U0/NET2 , \Y_pad[3]/U0/NET1 , 
        \Y_pad[3]/U0/NET2 , VCC, GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_IN \A_pad[2]/U0/U0  (.PAD(A[2]), .Y(\A_pad[2]/U0/NET1 ));
    IOPAD_IN \A_pad[1]/U0/U0  (.PAD(A[1]), .Y(\A_pad[1]/U0/NET1 ));
    IOIN_IB \A_pad[3]/U0/U1  (.YIN(\A_pad[3]/U0/NET1 ), .Y(\A_c[3] ));
    IOTRI_OB_EB \Y_pad[4]/U0/U1  (.D(\Y_pad_RNO[4]_net_1 ), .E(VCC), 
        .DOUT(\Y_pad[4]/U0/NET1 ), .EOUT(\Y_pad[4]/U0/NET2 ));
    IOPAD_TRI \Y_pad[2]/U0/U0  (.D(\Y_pad[2]/U0/NET1 ), .E(
        \Y_pad[2]/U0/NET2 ), .PAD(Y[2]));
    IOIN_IB \B_pad[1]/U0/U1  (.YIN(\B_pad[1]/U0/NET1 ), .Y(\B_c[1] ));
    IOTRI_OB_EB \Y_pad[1]/U0/U1  (.D(\Y_pad_RNO[1]_net_1 ), .E(VCC), 
        .DOUT(\Y_pad[1]/U0/NET1 ), .EOUT(\Y_pad[1]/U0/NET2 ));
    IOIN_IB \B_pad[3]/U0/U1  (.YIN(\B_pad[3]/U0/NET1 ), .Y(\B_c[3] ));
    IOPAD_IN \A_pad[4]/U0/U0  (.PAD(A[4]), .Y(\A_pad[4]/U0/NET1 ));
    IOTRI_OB_EB \Y_pad[3]/U0/U1  (.D(\Y_pad_RNO[3]_net_1 ), .E(VCC), 
        .DOUT(\Y_pad[3]/U0/NET1 ), .EOUT(\Y_pad[3]/U0/NET2 ));
    NOR2 \Y_pad_RNO[4]  (.A(\B_c[4] ), .B(\A_c[4] ), .Y(
        \Y_pad_RNO[4]_net_1 ));
    NOR2 \Y_pad_RNO[2]  (.A(\B_c[2] ), .B(\A_c[2] ), .Y(
        \Y_pad_RNO[2]_net_1 ));
    IOPAD_IN \A_pad[3]/U0/U0  (.PAD(A[3]), .Y(\A_pad[3]/U0/NET1 ));
    IOPAD_TRI \Y_pad[4]/U0/U0  (.D(\Y_pad[4]/U0/NET1 ), .E(
        \Y_pad[4]/U0/NET2 ), .PAD(Y[4]));
    IOIN_IB \B_pad[2]/U0/U1  (.YIN(\B_pad[2]/U0/NET1 ), .Y(\B_c[2] ));
    NOR2 \Y_pad_RNO[1]  (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \Y_pad_RNO[1]_net_1 ));
    IOPAD_IN \B_pad[1]/U0/U0  (.PAD(B[1]), .Y(\B_pad[1]/U0/NET1 ));
    IOPAD_TRI \Y_pad[1]/U0/U0  (.D(\Y_pad[1]/U0/NET1 ), .E(
        \Y_pad[1]/U0/NET2 ), .PAD(Y[1]));
    IOIN_IB \B_pad[4]/U0/U1  (.YIN(\B_pad[4]/U0/NET1 ), .Y(\B_c[4] ));
    IOPAD_IN \B_pad[3]/U0/U0  (.PAD(B[3]), .Y(\B_pad[3]/U0/NET1 ));
    IOPAD_TRI \Y_pad[3]/U0/U0  (.D(\Y_pad[3]/U0/NET1 ), .E(
        \Y_pad[3]/U0/NET2 ), .PAD(Y[3]));
    IOIN_IB \A_pad[2]/U0/U1  (.YIN(\A_pad[2]/U0/NET1 ), .Y(\A_c[2] ));
    IOIN_IB \A_pad[1]/U0/U1  (.YIN(\A_pad[1]/U0/NET1 ), .Y(\A_c[1] ));
    IOTRI_OB_EB \Y_pad[2]/U0/U1  (.D(\Y_pad_RNO[2]_net_1 ), .E(VCC), 
        .DOUT(\Y_pad[2]/U0/NET1 ), .EOUT(\Y_pad[2]/U0/NET2 ));
    NOR2 \Y_pad_RNO[3]  (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \Y_pad_RNO[3]_net_1 ));
    IOIN_IB \A_pad[4]/U0/U1  (.YIN(\A_pad[4]/U0/NET1 ), .Y(\A_c[4] ));
    IOPAD_IN \B_pad[2]/U0/U0  (.PAD(B[2]), .Y(\B_pad[2]/U0/NET1 ));
    IOPAD_IN \B_pad[4]/U0/U0  (.PAD(B[4]), .Y(\B_pad[4]/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
