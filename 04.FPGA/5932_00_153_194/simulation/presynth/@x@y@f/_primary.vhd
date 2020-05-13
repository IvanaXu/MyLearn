library verilog;
use verilog.vl_types.all;
entity XYF is
    port(
        A               : in     vl_logic_vector(4 downto 1);
        B               : in     vl_logic_vector(4 downto 1);
        I1              : in     vl_logic_vector(0 to 3);
        I2              : in     vl_logic_vector(0 to 3);
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        E1N             : in     vl_logic;
        E2N             : in     vl_logic;
        MR              : in     vl_logic;
        D               : in     vl_logic_vector(0 to 3);
        DSR             : in     vl_logic;
        S               : in     vl_logic_vector(1 downto 0);
        DSL             : in     vl_logic;
        CP              : in     vl_logic;
        Q               : out    vl_logic_vector(0 to 3);
        Y               : out    vl_logic_vector(4 downto 1);
        Y1              : out    vl_logic;
        Y2              : out    vl_logic
    );
end XYF;
