library verilog;
use verilog.vl_types.all;
entity HC194 is
    port(
        MR              : in     vl_logic;
        S               : in     vl_logic_vector(1 downto 0);
        CP              : in     vl_logic;
        DSR             : in     vl_logic;
        DSL             : in     vl_logic;
        D               : in     vl_logic_vector(0 to 3);
        Q               : out    vl_logic_vector(0 to 3)
    );
end HC194;
