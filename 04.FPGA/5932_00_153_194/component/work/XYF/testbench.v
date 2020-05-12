//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Tue Dec 31 13:30:07 2013
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module testbench;

parameter SYSCLK_PERIOD = 100; // 10MHz

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// 10MHz Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  XYF
//////////////////////////////////////////////////////////////////////
XYF XYF_0 (
    // Inputs
    .A({4{1'b0}}),
    .B({4{1'b0}}),
    .I1({4{1'b0}}),
    .I2({4{1'b0}}),
    .S1({1{1'b0}}),
    .S2({1{1'b0}}),
    .E1N({1{1'b0}}),
    .E2N({1{1'b0}}),
    .MR({1{1'b0}}),
    .D({4{1'b0}}),
    .DSR({1{1'b0}}),
    .S({2{1'b0}}),
    .DSL({1{1'b0}}),
    .CP({1{1'b0}}),

    // Outputs
    .Q( ),
    .Y( ),
    .Y1( ),
    .Y2( )

    // Inouts

);

endmodule

