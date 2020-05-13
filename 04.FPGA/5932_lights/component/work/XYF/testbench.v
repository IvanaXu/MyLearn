//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Sat Jan 04 08:28:19 2014
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
    .sel_0({2{1'b0}}),
    .sel_1({2{1'b0}}),
    .sel_2({2{1'b0}}),
    .rst(NSYSRESET),
    .clk(SYSCLK),

    // Outputs
    .led_0( ),
    .led_1( ),
    .led_2( )

    // Inouts

);

endmodule

