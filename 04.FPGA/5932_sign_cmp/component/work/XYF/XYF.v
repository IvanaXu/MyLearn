`timescale 1 ns/100 ps
// Version: 9.1 9.1.0.18


module XYF(
       DataA,
       DataB,
       AGEB
    );
input  [7:0] DataA;
input  [7:0] DataB;
output AGEB;

    wire \Com_2C_0_DataOut_[7] , \Com_2C_0_DataOut_[6] , 
        \Com_2C_0_DataOut_[5] , \Com_2C_0_DataOut_[4] , 
        \Com_2C_0_DataOut_[3] , \Com_2C_0_DataOut_[2] , 
        \Com_2C_0_DataOut_[1] , \Com_2C_0_DataOut_[0] , 
        \Com_2C_1_DataOut_[7] , \Com_2C_1_DataOut_[6] , 
        \Com_2C_1_DataOut_[5] , \Com_2C_1_DataOut_[4] , 
        \Com_2C_1_DataOut_[3] , \Com_2C_1_DataOut_[2] , 
        \Com_2C_1_DataOut_[1] , \Com_2C_1_DataOut_[0] , GND_net, 
        VCC_net;
    
    Com_2C Com_2C_1 (.DataA({DataB[7], DataB[6], DataB[5], DataB[4], 
        DataB[3], DataB[2], DataB[1], DataB[0]}), .DataOut({
        \Com_2C_1_DataOut_[7] , \Com_2C_1_DataOut_[6] , 
        \Com_2C_1_DataOut_[5] , \Com_2C_1_DataOut_[4] , 
        \Com_2C_1_DataOut_[3] , \Com_2C_1_DataOut_[2] , 
        \Com_2C_1_DataOut_[1] , \Com_2C_1_DataOut_[0] }));
    VCC VCC (.Y(VCC_net));
    cmp_2 cmp_2_0 (.DataA({\Com_2C_0_DataOut_[7] , 
        \Com_2C_0_DataOut_[6] , \Com_2C_0_DataOut_[5] , 
        \Com_2C_0_DataOut_[4] , \Com_2C_0_DataOut_[3] , 
        \Com_2C_0_DataOut_[2] , \Com_2C_0_DataOut_[1] , 
        \Com_2C_0_DataOut_[0] }), .DataB({\Com_2C_1_DataOut_[7] , 
        \Com_2C_1_DataOut_[6] , \Com_2C_1_DataOut_[5] , 
        \Com_2C_1_DataOut_[4] , \Com_2C_1_DataOut_[3] , 
        \Com_2C_1_DataOut_[2] , \Com_2C_1_DataOut_[1] , 
        \Com_2C_1_DataOut_[0] }), .AGEB(AGEB));
    GND GND (.Y(GND_net));
    Com_2C Com_2C_0 (.DataA({DataA[7], DataA[6], DataA[5], DataA[4], 
        DataA[3], DataA[2], DataA[1], DataA[0]}), .DataOut({
        \Com_2C_0_DataOut_[7] , \Com_2C_0_DataOut_[6] , 
        \Com_2C_0_DataOut_[5] , \Com_2C_0_DataOut_[4] , 
        \Com_2C_0_DataOut_[3] , \Com_2C_0_DataOut_[2] , 
        \Com_2C_0_DataOut_[1] , \Com_2C_0_DataOut_[0] }));
    
endmodule
