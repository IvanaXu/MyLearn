library verilog;
use verilog.vl_types.all;
entity HC4511 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        Seg             : out    vl_logic_vector(7 downto 0);
        LT_N            : in     vl_logic;
        BI_N            : in     vl_logic;
        LE              : in     vl_logic
    );
end HC4511;
