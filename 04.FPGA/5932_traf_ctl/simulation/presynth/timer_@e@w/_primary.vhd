library verilog;
use verilog.vl_types.all;
entity timer_EW is
    generic(
        red_NS          : integer := 59;
        green_NS        : integer := 54;
        yellow_NS       : integer := 4;
        St0             : integer := 1;
        St1             : integer := 2;
        St2             : integer := 4;
        St3             : integer := 8
    );
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Ld              : in     vl_logic;
        En              : in     vl_logic;
        State           : in     vl_logic_vector(3 downto 0);
        Q_NS            : out    vl_logic_vector(7 downto 0);
        Done_NS         : out    vl_logic
    );
end timer_EW;
