library verilog;
use verilog.vl_types.all;
entity one_seond_clk is
    port(
        Reset           : in     vl_logic;
        Clk             : in     vl_logic;
        Count           : out    vl_logic_vector(9 downto 0);
        Cout            : out    vl_logic
    );
end one_seond_clk;
