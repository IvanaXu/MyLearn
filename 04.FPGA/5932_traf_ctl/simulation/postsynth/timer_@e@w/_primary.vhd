library verilog;
use verilog.vl_types.all;
entity timer_EW is
    port(
        current_state   : in     vl_logic_vector(0 downto 0);
        Q_NS            : out    vl_logic_vector(7 downto 0);
        Clk_c           : in     vl_logic;
        timer_EW_Done_NS: out    vl_logic;
        Red1_c          : in     vl_logic;
        Q_NSlde_i_o2tt_m1_0_a2: in     vl_logic;
        one_seond_clk_0_Cout: in     vl_logic;
        Reset_c         : in     vl_logic;
        Ld_i            : in     vl_logic;
        Green2_c        : in     vl_logic;
        N_16            : in     vl_logic;
        N_60            : out    vl_logic
    );
end timer_EW;
