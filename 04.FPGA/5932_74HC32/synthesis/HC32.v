`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC32(
       A,
       B,
       Y
    );
input  [4:1] A;
input  [4:1] B;
output [4:1] Y;

    wire GND, VCC, \A_c[1] , \A_c[2] , \A_c[3] , \A_c[4] , \B_c[1] , 
        \B_c[2] , \B_c[3] , \B_c[4] , \Y_1_c[1] , \Y_1_c[2] , 
        \Y_1_c[3] , \Y_1_c[4] , GND_0, VCC_0;
    
    OR2 \Y_1[2]  (.A(\B_c[2] ), .B(\A_c[2] ), .Y(\Y_1_c[2] ));
    INBUF \B_pad[3]  (.PAD(B[3]), .Y(\B_c[3] ));
    INBUF \B_pad[2]  (.PAD(B[2]), .Y(\B_c[2] ));
    GND GND_i_0 (.Y(GND_0));
    OR2 \Y_1[3]  (.A(\B_c[3] ), .B(\A_c[3] ), .Y(\Y_1_c[3] ));
    INBUF \B_pad[4]  (.PAD(B[4]), .Y(\B_c[4] ));
    VCC VCC_i (.Y(VCC));
    INBUF \A_pad[4]  (.PAD(A[4]), .Y(\A_c[4] ));
    INBUF \B_pad[1]  (.PAD(B[1]), .Y(\B_c[1] ));
    OR2 \Y_1[4]  (.A(\B_c[4] ), .B(\A_c[4] ), .Y(\Y_1_c[4] ));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    OUTBUF \Y_pad[4]  (.D(\Y_1_c[4] ), .PAD(Y[4]));
    VCC VCC_i_0 (.Y(VCC_0));
    OR2 \Y_1[1]  (.A(\B_c[1] ), .B(\A_c[1] ), .Y(\Y_1_c[1] ));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    OUTBUF \Y_pad[1]  (.D(\Y_1_c[1] ), .PAD(Y[1]));
    OUTBUF \Y_pad[2]  (.D(\Y_1_c[2] ), .PAD(Y[2]));
    OUTBUF \Y_pad[3]  (.D(\Y_1_c[3] ), .PAD(Y[3]));
    
endmodule
