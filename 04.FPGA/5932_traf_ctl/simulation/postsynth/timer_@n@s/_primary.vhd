library verilog;
use verilog.vl_types.all;
entity timer_NS is
    port(
        current_state   : in     vl_logic_vector(0 downto 0);
        Q_NS_0          : out    vl_logic_vector(7 downto 0);
        Clk_c           : in     vl_logic;
        Red1_c          : in     vl_logic;
        Yellow1_c       : in     vl_logic;
        Q_NSlde_i_o2tt_m1_0_a2: out    vl_logic;
        N_60_0          : in     vl_logic;
        Ld_i            : in     vl_logic;
        Reset_c         : in     vl_logic;
        timer_NS_0_Done_NS: out    vl_logic;
        one_seond_clk_0_Cout: in     vl_logic;
        N_16            : out    vl_logic
    );
end timer_NS;
