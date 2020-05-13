library verilog;
use verilog.vl_types.all;
entity one_seond_clk is
    port(
        Clk_c           : in     vl_logic;
        one_seond_clk_0_Cout: out    vl_logic;
        Reset_c         : in     vl_logic
    );
end one_seond_clk;
