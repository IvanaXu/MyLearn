library verilog;
use verilog.vl_types.all;
entity trattic_control is
    generic(
        S0              : integer := 1;
        S1              : integer := 2;
        S2              : integer := 4;
        S3              : integer := 8
    );
    port(
        Clk             : in     vl_logic;
        Reset           : in     vl_logic;
        Done_NS         : in     vl_logic;
        Done_EW         : in     vl_logic;
        Red1            : out    vl_logic;
        Yellow1         : out    vl_logic;
        Green1          : out    vl_logic;
        Red2            : out    vl_logic;
        Yellow2         : out    vl_logic;
        Green2          : out    vl_logic;
        Sload_NS        : out    vl_logic;
        Sload_EW        : out    vl_logic;
        State_cnt       : out    vl_logic_vector(3 downto 0)
    );
end trattic_control;
