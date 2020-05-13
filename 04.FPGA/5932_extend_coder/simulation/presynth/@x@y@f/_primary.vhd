library verilog;
use verilog.vl_types.all;
entity XYF is
    port(
        EI              : in     vl_logic;
        Y               : out    vl_logic;
        DataIn          : in     vl_logic_vector(7 downto 0);
        DataIn_0        : in     vl_logic_vector(7 downto 0);
        Seg             : out    vl_logic_vector(7 downto 0)
    );
end XYF;
