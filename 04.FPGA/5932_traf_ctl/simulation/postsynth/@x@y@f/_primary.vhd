library verilog;
use verilog.vl_types.all;
entity XYF is
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Red1            : out    vl_logic;
        Yellow1         : out    vl_logic;
        Green1          : out    vl_logic;
        Red2            : out    vl_logic;
        Yellow2         : out    vl_logic;
        Green2          : out    vl_logic;
        Seg             : out    vl_logic_vector(7 downto 0);
        Sl              : out    vl_logic_vector(3 downto 0)
    );
end XYF;
