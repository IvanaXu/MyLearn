library verilog;
use verilog.vl_types.all;
entity HC283 is
    port(
        sum             : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        cin             : in     vl_logic;
        shiftedcarry    : out    vl_logic_vector(4 downto 0)
    );
end HC283;
