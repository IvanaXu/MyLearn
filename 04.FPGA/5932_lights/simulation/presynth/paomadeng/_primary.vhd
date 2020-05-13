library verilog;
use verilog.vl_types.all;
entity paomadeng is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
end paomadeng;
