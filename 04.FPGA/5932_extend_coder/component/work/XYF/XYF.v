`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module XYF(
       EI,
       Y,
       DataIn,
       DataIn_0,
       Seg
    );
input  EI;
output Y;
input  [7:0] DataIn;
input  [7:0] DataIn_0;
output [7:0] Seg;

    wire AND2_0_Y, INV_0_Y, AND2_1_Y, INV_1_Y, AND2_2_Y, INV_2_Y, 
        HC148_0_Dataout0to0, HC148_0_Dataout1to1, HC148_0_Dataout2to2, 
        HC148_0_GS, HC148_1_Dataout0to0, HC148_1_Dataout1to1, 
        HC148_1_Dataout2to2, HC148_1_EO, HC148_1_GS, HC85_0_QASB, 
        GND_net, VCC_net;
    
    HC148 HC148_1 (.EO(HC148_1_EO), .EI(EI), .GS(HC148_1_GS), .DataIn({
        DataIn_0[7], DataIn_0[6], DataIn_0[5], DataIn_0[4], 
        DataIn_0[3], DataIn_0[2], DataIn_0[1], DataIn_0[0]}), .Dataout({
        HC148_1_Dataout2to2, HC148_1_Dataout1to1, HC148_1_Dataout0to0})
        );
    GND GND (.Y(GND_net));
    INV INV_2 (.A(INV_2_Y), .Y(AND2_2_Y));
    HC148 HC148_0 (.EO(), .EI(HC148_1_EO), .GS(HC148_0_GS), .DataIn({
        DataIn[7], DataIn[6], DataIn[5], DataIn[4], DataIn[3], 
        DataIn[2], DataIn[1], DataIn[0]}), .Dataout({
        HC148_0_Dataout2to2, HC148_0_Dataout1to1, HC148_0_Dataout0to0})
        );
    VCC VCC (.Y(VCC_net));
    INV INV_1 (.A(INV_1_Y), .Y(AND2_1_Y));
    AND2 AND2_1 (.A(HC148_1_Dataout1to1), .B(HC148_0_Dataout1to1), .Y(
        INV_1_Y));
    INV INV_0 (.A(INV_0_Y), .Y(AND2_0_Y));
    HC85 HC85_0 (.QAGB(), .QASB(HC85_0_QASB), .QAEB(), .IAGB(GND_net), 
        .IASB(GND_net), .IAEB(VCC_net), .A({HC148_1_EO, AND2_2_Y, 
        AND2_1_Y, AND2_0_Y}), .B({VCC_net, GND_net, VCC_net, GND_net}));
    AND2 AND2_G (.A(HC148_1_GS), .B(HC148_0_GS), .Y(Y));
    AND2 AND2_0 (.A(HC148_1_Dataout0to0), .B(HC148_0_Dataout0to0), .Y(
        INV_0_Y));
    AND2 AND2_2 (.A(HC148_1_Dataout2to2), .B(HC148_0_Dataout2to2), .Y(
        INV_2_Y));
    HC4511 HC4511_0 (.LT_N(VCC_net), .BI_N(HC85_0_QASB), .LE(GND_net), 
        .A({HC148_1_EO, AND2_2_Y, AND2_1_Y, AND2_0_Y}), .Seg({Seg[7], 
        Seg[6], Seg[5], Seg[4], Seg[3], Seg[2], Seg[1], Seg[0]}));
    
endmodule
