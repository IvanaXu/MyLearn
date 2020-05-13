`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module Com_2C_Com_2C_1_1(
       DataOut_2,
       DataA_c
    );
output [7:1] DataOut_2;
input  [7:0] DataA_c;

    wire CO1, CO2, CO3, CO4, CO5, GND, VCC, GND_0, VCC_0;
    
    AX1C \DataOut_2[1]  (.A(DataA_c[0]), .B(DataA_c[7]), .C(DataA_c[1])
        , .Y(DataOut_2[1]));
    AX1C \DataOut_2[3]  (.A(CO2), .B(DataA_c[7]), .C(DataA_c[3]), .Y(
        DataOut_2[3]));
    OR2 DataOut_1_1_ANC2 (.A(DataA_c[2]), .B(CO1), .Y(CO2));
    VCC VCC_i_0 (.Y(VCC_0));
    VCC VCC_i (.Y(VCC));
    OR2 DataOut_1_1_ANC5 (.A(DataA_c[5]), .B(CO4), .Y(CO5));
    OR2 DataOut_1_1_ANC4 (.A(DataA_c[4]), .B(CO3), .Y(CO4));
    OR2 DataOut_1_1_ANC3 (.A(DataA_c[3]), .B(CO2), .Y(CO3));
    AX1C \DataOut_2[2]  (.A(CO1), .B(DataA_c[7]), .C(DataA_c[2]), .Y(
        DataOut_2[2]));
    GND GND_i_0 (.Y(GND_0));
    GND GND_i (.Y(GND));
    OA1 \DataOut_2[7]  (.A(CO5), .B(DataA_c[6]), .C(DataA_c[7]), .Y(
        DataOut_2[7]));
    OR2 DataOut_1_1_ANC1 (.A(DataA_c[1]), .B(DataA_c[0]), .Y(CO1));
    AX1C \DataOut_2[6]  (.A(CO5), .B(DataA_c[7]), .C(DataA_c[6]), .Y(
        DataOut_2[6]));
    AX1C \DataOut_2[5]  (.A(CO4), .B(DataA_c[7]), .C(DataA_c[5]), .Y(
        DataOut_2[5]));
    AX1C \DataOut_2[4]  (.A(CO3), .B(DataA_c[7]), .C(DataA_c[4]), .Y(
        DataOut_2[4]));
    
endmodule


module Com_2C_Com_2C_1(
       DataOut_2_0,
       DataB_c
    );
output [7:1] DataOut_2_0;
input  [7:0] DataB_c;

    wire CO1, CO2, CO3, CO4, CO5, GND, VCC, GND_0, VCC_0;
    
    AX1C \DataOut_2[1]  (.A(DataB_c[0]), .B(DataB_c[7]), .C(DataB_c[1])
        , .Y(DataOut_2_0[1]));
    AX1C \DataOut_2[3]  (.A(CO2), .B(DataB_c[7]), .C(DataB_c[3]), .Y(
        DataOut_2_0[3]));
    OR2 DataOut_1_1_ANC2 (.A(DataB_c[2]), .B(CO1), .Y(CO2));
    VCC VCC_i_0 (.Y(VCC_0));
    VCC VCC_i (.Y(VCC));
    OR2 DataOut_1_1_ANC5 (.A(DataB_c[5]), .B(CO4), .Y(CO5));
    OR2 DataOut_1_1_ANC4 (.A(DataB_c[4]), .B(CO3), .Y(CO4));
    OR2 DataOut_1_1_ANC3 (.A(DataB_c[3]), .B(CO2), .Y(CO3));
    AX1C \DataOut_2[2]  (.A(CO1), .B(DataB_c[7]), .C(DataB_c[2]), .Y(
        DataOut_2_0[2]));
    GND GND_i_0 (.Y(GND_0));
    GND GND_i (.Y(GND));
    OA1 \DataOut_2[7]  (.A(CO5), .B(DataB_c[6]), .C(DataB_c[7]), .Y(
        DataOut_2_0[7]));
    OR2 DataOut_1_1_ANC1 (.A(DataB_c[1]), .B(DataB_c[0]), .Y(CO1));
    AX1C \DataOut_2[6]  (.A(CO5), .B(DataB_c[7]), .C(DataB_c[6]), .Y(
        DataOut_2_0[6]));
    AX1C \DataOut_2[5]  (.A(CO4), .B(DataB_c[7]), .C(DataB_c[5]), .Y(
        DataOut_2_0[5]));
    AX1C \DataOut_2[4]  (.A(CO3), .B(DataB_c[7]), .C(DataB_c[4]), .Y(
        DataOut_2_0[4]));
    
endmodule


module cmp_2(
       DataB_c,
       DataA_c,
       DataOut_2_0,
       DataOut_2,
       AGEB_c
    );
input  [0:0] DataB_c;
input  [0:0] DataA_c;
input  [7:1] DataOut_2_0;
input  [7:1] DataOut_2;
output AGEB_c;

    wire le_OUT, AND3_0_Y, AO1D_0_Y, NAND3A_0_Y, U1, XNOR2_1_Y, 
        OR2A_1_Y, NOR3A_0_Y, OR2A_2_Y, NAND3A_1_Y, U2, XNOR2_2_Y, 
        XNOR2_0_Y, AO1C_1_Y, AO1C_0_Y, NOR2A_0_Y, OR2A_3_Y, OR2A_0_Y, 
        AO1C_4_Y, AO1C_2_Y, AO1C_5_Y, AO1C_3_Y, GND, VCC, GND_0, VCC_0;
    
    AO1C AO1C_3 (.A(DataOut_2_0[3]), .B(DataOut_2[3]), .C(NOR2A_0_Y), 
        .Y(AO1C_3_Y));
    AO1C AO1C_2 (.A(DataOut_2[3]), .B(DataOut_2_0[3]), .C(AO1C_3_Y), 
        .Y(AO1C_2_Y));
    AO1C AO1C_5 (.A(DataOut_2_0[5]), .B(DataOut_2[5]), .C(
        DataOut_2_0[4]), .Y(AO1C_5_Y));
    NOR3A NOR3A_0 (.A(OR2A_3_Y), .B(AO1C_5_Y), .C(DataOut_2[4]), .Y(
        NOR3A_0_Y));
    GND GND_i_0 (.Y(GND_0));
    AO1D AO1D_0 (.A(AO1C_1_Y), .B(AO1C_4_Y), .C(AO1C_2_Y), .Y(AO1D_0_Y)
        );
    AND2A AND_SIGN (.A(DataOut_2[7]), .B(DataOut_2_0[7]), .Y(U2));
    AO1C AO1C_0 (.A(DataA_c[0]), .B(DataB_c[0]), .C(OR2A_1_Y), .Y(
        AO1C_0_Y));
    AND3 AND3_0 (.A(XNOR2_1_Y), .B(XNOR2_0_Y), .C(XNOR2_2_Y), .Y(
        AND3_0_Y));
    VCC VCC_i (.Y(VCC));
    AO1C AO1C_4 (.A(DataOut_2_0[2]), .B(DataOut_2[2]), .C(OR2A_0_Y), 
        .Y(AO1C_4_Y));
    OR2A OR2A_0 (.A(DataOut_2[1]), .B(DataOut_2_0[1]), .Y(OR2A_0_Y));
    NAND3A NAND3A_1 (.A(DataOut_2[5]), .B(DataOut_2_0[5]), .C(OR2A_3_Y)
        , .Y(NAND3A_1_Y));
    OR2A OR2A_3 (.A(DataOut_2[6]), .B(DataOut_2_0[6]), .Y(OR2A_3_Y));
    NOR2A NOR2A_0 (.A(DataOut_2_0[2]), .B(DataOut_2[2]), .Y(NOR2A_0_Y));
    GND GND_i (.Y(GND));
    AO1C AO1C_1 (.A(DataOut_2_0[3]), .B(DataOut_2[3]), .C(AO1C_0_Y), 
        .Y(AO1C_1_Y));
    XNOR2 XNOR2_0 (.A(DataOut_2_0[5]), .B(DataOut_2[5]), .Y(XNOR2_0_Y));
    XNOR2 XNOR2_2 (.A(DataOut_2_0[6]), .B(DataOut_2[6]), .Y(XNOR2_2_Y));
    OR2A OR2A_2 (.A(DataOut_2_0[6]), .B(DataOut_2[6]), .Y(OR2A_2_Y));
    NAND3A NAND3A_0 (.A(NOR3A_0_Y), .B(OR2A_2_Y), .C(NAND3A_1_Y), .Y(
        NAND3A_0_Y));
    AO1 AND_AO21 (.A(le_OUT), .B(U1), .C(U2), .Y(AGEB_c));
    VCC VCC_i_0 (.Y(VCC_0));
    OR2A OR2A_1 (.A(DataOut_2_0[1]), .B(DataOut_2[1]), .Y(OR2A_1_Y));
    XNOR2 XNOR2_1 (.A(DataOut_2_0[4]), .B(DataOut_2[4]), .Y(XNOR2_1_Y));
    OR2A OR_SIGN (.A(DataOut_2[7]), .B(DataOut_2_0[7]), .Y(U1));
    AOI1 AOI1_le_OUT (.A(AND3_0_Y), .B(AO1D_0_Y), .C(NAND3A_0_Y), .Y(
        le_OUT));
    
endmodule


module XYF(
       DataA,
       DataB,
       AGEB
    );
input  [7:0] DataA;
input  [7:0] DataB;
output AGEB;

    wire \DataOut_2_0[1] , \DataOut_2_0[2] , \DataOut_2_0[3] , 
        \DataOut_2_0[4] , \DataOut_2_0[5] , \DataOut_2_0[6] , 
        \DataOut_2_0[7] , \DataOut_2[1] , \DataOut_2[2] , 
        \DataOut_2[3] , \DataOut_2[4] , \DataOut_2[5] , \DataOut_2[6] , 
        \DataOut_2[7] , GND, VCC, \DataA_c[0] , \DataA_c[1] , 
        \DataA_c[2] , \DataA_c[3] , \DataA_c[4] , \DataA_c[5] , 
        \DataA_c[6] , \DataA_c[7] , \DataB_c[0] , \DataB_c[1] , 
        \DataB_c[2] , \DataB_c[3] , \DataB_c[4] , \DataB_c[5] , 
        \DataB_c[6] , \DataB_c[7] , AGEB_c, GND_0, VCC_0;
    
    INBUF \DataA_pad[0]  (.PAD(DataA[0]), .Y(\DataA_c[0] ));
    INBUF \DataB_pad[5]  (.PAD(DataB[5]), .Y(\DataB_c[5] ));
    INBUF \DataB_pad[0]  (.PAD(DataB[0]), .Y(\DataB_c[0] ));
    OUTBUF AGEB_pad (.D(AGEB_c), .PAD(AGEB));
    GND GND_i_0 (.Y(GND_0));
    INBUF \DataB_pad[2]  (.PAD(DataB[2]), .Y(\DataB_c[2] ));
    INBUF \DataB_pad[7]  (.PAD(DataB[7]), .Y(\DataB_c[7] ));
    VCC VCC_i (.Y(VCC));
    INBUF \DataA_pad[4]  (.PAD(DataA[4]), .Y(\DataA_c[4] ));
    INBUF \DataA_pad[7]  (.PAD(DataA[7]), .Y(\DataA_c[7] ));
    INBUF \DataB_pad[6]  (.PAD(DataB[6]), .Y(\DataB_c[6] ));
    INBUF \DataA_pad[2]  (.PAD(DataA[2]), .Y(\DataA_c[2] ));
    GND GND_i (.Y(GND));
    INBUF \DataA_pad[6]  (.PAD(DataA[6]), .Y(\DataA_c[6] ));
    VCC VCC_i_0 (.Y(VCC_0));
    INBUF \DataB_pad[3]  (.PAD(DataB[3]), .Y(\DataB_c[3] ));
    INBUF \DataA_pad[3]  (.PAD(DataA[3]), .Y(\DataA_c[3] ));
    INBUF \DataA_pad[1]  (.PAD(DataA[1]), .Y(\DataA_c[1] ));
    Com_2C_Com_2C_1_1 Com_2C_0 (.DataOut_2({\DataOut_2[7] , 
        \DataOut_2[6] , \DataOut_2[5] , \DataOut_2[4] , \DataOut_2[3] , 
        \DataOut_2[2] , \DataOut_2[1] }), .DataA_c({\DataA_c[7] , 
        \DataA_c[6] , \DataA_c[5] , \DataA_c[4] , \DataA_c[3] , 
        \DataA_c[2] , \DataA_c[1] , \DataA_c[0] }));
    Com_2C_Com_2C_1 Com_2C_1 (.DataOut_2_0({\DataOut_2_0[7] , 
        \DataOut_2_0[6] , \DataOut_2_0[5] , \DataOut_2_0[4] , 
        \DataOut_2_0[3] , \DataOut_2_0[2] , \DataOut_2_0[1] }), 
        .DataB_c({\DataB_c[7] , \DataB_c[6] , \DataB_c[5] , 
        \DataB_c[4] , \DataB_c[3] , \DataB_c[2] , \DataB_c[1] , 
        \DataB_c[0] }));
    INBUF \DataA_pad[5]  (.PAD(DataA[5]), .Y(\DataA_c[5] ));
    cmp_2 cmp_2_0 (.DataB_c({\DataB_c[0] }), .DataA_c({\DataA_c[0] }), 
        .DataOut_2_0({\DataOut_2_0[7] , \DataOut_2_0[6] , 
        \DataOut_2_0[5] , \DataOut_2_0[4] , \DataOut_2_0[3] , 
        \DataOut_2_0[2] , \DataOut_2_0[1] }), .DataOut_2({
        \DataOut_2[7] , \DataOut_2[6] , \DataOut_2[5] , \DataOut_2[4] , 
        \DataOut_2[3] , \DataOut_2[2] , \DataOut_2[1] }), .AGEB_c(
        AGEB_c));
    INBUF \DataB_pad[1]  (.PAD(DataB[1]), .Y(\DataB_c[1] ));
    INBUF \DataB_pad[4]  (.PAD(DataB[4]), .Y(\DataB_c[4] ));
    
endmodule
