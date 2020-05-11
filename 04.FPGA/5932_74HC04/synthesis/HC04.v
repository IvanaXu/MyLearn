`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module HC04(
       A,
       Y
    );
input  [6:1] A;
output [6:1] Y;

    wire GND, VCC, \A_c[1] , \A_c[2] , \A_c[3] , \A_c[4] , \A_c[5] , 
        \A_c[6] , \A_c_i[6] , \A_c_i[5] , \A_c_i[4] , \A_c_i[3] , 
        \A_c_i[2] , \A_c_i[1] , GND_0, VCC_0;
    
    INV \Y_pad_RNO[3]  (.A(\A_c[3] ), .Y(\A_c_i[3] ));
    INV \Y_pad_RNO[2]  (.A(\A_c[2] ), .Y(\A_c_i[2] ));
    GND GND_i_0 (.Y(GND_0));
    INV \Y_pad_RNO[6]  (.A(\A_c[6] ), .Y(\A_c_i[6] ));
    OUTBUF \Y_pad[6]  (.D(\A_c_i[6] ), .PAD(Y[6]));
    VCC VCC_i (.Y(VCC));
    INBUF \A_pad[4]  (.PAD(A[4]), .Y(\A_c[4] ));
    INV \Y_pad_RNO[5]  (.A(\A_c[5] ), .Y(\A_c_i[5] ));
    INBUF \A_pad[2]  (.PAD(A[2]), .Y(\A_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \A_pad[3]  (.PAD(A[3]), .Y(\A_c[3] ));
    OUTBUF \Y_pad[4]  (.D(\A_c_i[4] ), .PAD(Y[4]));
    VCC VCC_i_0 (.Y(VCC_0));
    OUTBUF \Y_pad[5]  (.D(\A_c_i[5] ), .PAD(Y[5]));
    INBUF \A_pad[1]  (.PAD(A[1]), .Y(\A_c[1] ));
    OUTBUF \Y_pad[1]  (.D(\A_c_i[1] ), .PAD(Y[1]));
    INBUF \A_pad[6]  (.PAD(A[6]), .Y(\A_c[6] ));
    OUTBUF \Y_pad[2]  (.D(\A_c_i[2] ), .PAD(Y[2]));
    INBUF \A_pad[5]  (.PAD(A[5]), .Y(\A_c[5] ));
    INV \Y_pad_RNO[4]  (.A(\A_c[4] ), .Y(\A_c_i[4] ));
    INV \Y_pad_RNO[1]  (.A(\A_c[1] ), .Y(\A_c_i[1] ));
    OUTBUF \Y_pad[3]  (.D(\A_c_i[3] ), .PAD(Y[3]));
    
endmodule
