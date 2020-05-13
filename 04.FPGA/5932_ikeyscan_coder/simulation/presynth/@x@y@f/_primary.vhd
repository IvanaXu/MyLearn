library verilog;
use verilog.vl_types.all;
entity XYF is
    port(
        Reset           : in     vl_logic;
        Row             : in     vl_logic_vector(3 downto 0);
        Clk             : in     vl_logic;
        Valid           : out    vl_logic;
        Col             : out    vl_logic_vector(3 downto 0);
        Code            : out    vl_logic_vector(3 downto 0)
    );
end XYF;
