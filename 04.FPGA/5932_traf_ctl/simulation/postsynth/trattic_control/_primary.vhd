library verilog;
use verilog.vl_types.all;
entity trattic_control is
    port(
        State_i_0       : out    vl_logic_vector(3 downto 3);
        current_state   : out    vl_logic_vector(0 downto 0);
        Reset_c         : in     vl_logic;
        Clk_c           : in     vl_logic;
        timer_EW_Done_NS: in     vl_logic;
        Yellow1_c       : out    vl_logic;
        Red1_c_i        : out    vl_logic;
        Ld_i_0          : out    vl_logic;
        Green1_c        : out    vl_logic;
        timer_NS_0_Done_NS: in     vl_logic;
        Ld_i            : out    vl_logic;
        Red1_c          : out    vl_logic;
        Green2_c        : out    vl_logic
    );
end trattic_control;
