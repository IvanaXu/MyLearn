library verilog;
use verilog.vl_types.all;
entity dymamic_led is
    port(
        Seg             : out    vl_logic_vector(7 downto 0);
        Sl              : out    vl_logic_vector(3 downto 0);
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        c               : in     vl_logic_vector(3 downto 0);
        d               : in     vl_logic_vector(3 downto 0)
    );
end dymamic_led;
