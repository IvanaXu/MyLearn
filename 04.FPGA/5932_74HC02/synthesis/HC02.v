`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC02(
       A,
       B,
       Y
    );
input  [4:1] A;
input  [4:1] B;
output [4:1] Y;

    wire GND, VCC, \Y_pad_RNO[1]_net_1 , \Y_pad_RNO[2]_net_1 , 
        \Y_pad_RNO[3]_net_1 , \Y_pad_RNO[4]_net_1 , \A_c[1] , \A_c[2] , 
        \A_c[3] , \A_c[4] , \B_c[1] , \B_c[2] , \B_c[3] , \B_c[4] , 
        GND_0, VCC_0;
    
    NOR2 \Y_pad_RNO[3]  (.A(\B_c[3] ), .B(\A_c[3] ), .Y(
        \Y_pad_RNO[3]_net_1 ));
    INBUF \B_pad[3]  (.PAD(B[3]), .Y(\B_c[3] ));
    INBUF \B_pad[2]  (.PAD(B[2]), .Y(\B_c[2] ));
    NOR2 \Y_pad_RNO[2]  (.A(\B_c[2] ), .B(\A_c[2] ), .Y(
        \Y_pad_RNO[2]_net_1 ));
    GND GND_i_0 (.Y(GND_0));
    INBUF \B_pad[4]  (.PAD(B[4]), .Y(\B_c[4] ));
    VCC VCC_i (.Y(VCC));
    INBUF \A_pad[4]  (.PAD(A[4]), .Y(\A_c[4] ));
    INBUF \B_pad[1]  (.PAD(B[1]), .Y(\B_c[1] ));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    OUTBUF \Y_pad[4]  (.D(\Y_pad_RNO[4]_net_1 ), .PAD(Y[4]));
    VCC VCC_i_0 (.Y(VCC_0));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    OUTBUF \Y_pad[1]  (.D(\Y_pad_RNO[1]_net_1 ), .PAD(Y[1]));
    OUTBUF \Y_pad[2]  (.D(\Y_pad_RNO[2]_net_1 ), .PAD(Y[2]));
    NOR2 \Y_pad_RNO[4]  (.A(\B_c[4] ), .B(\A_c[4] ), .Y(
        \Y_pad_RNO[4]_net_1 ));
    NOR2 \Y_pad_RNO[1]  (.A(\B_c[1] ), .B(\A_c[1] ), .Y(
        \Y_pad_RNO[1]_net_1 ));
    OUTBUF \Y_pad[3]  (.D(\Y_pad_RNO[3]_net_1 ), .PAD(Y[3]));
    
endmodule
