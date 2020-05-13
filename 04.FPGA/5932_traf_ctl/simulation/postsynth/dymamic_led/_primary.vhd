library verilog;
use verilog.vl_types.all;
entity dymamic_led is
    port(
        SM_8S_1_i_0     : out    vl_logic_vector(1 downto 1);
        SM_8S_1_i_0_a3_0: out    vl_logic_vector(0 downto 0);
        Seg_c           : out    vl_logic_vector(6 downto 4);
        Q_NS            : in     vl_logic_vector(0 downto 0);
        Q_NS_0          : in     vl_logic_vector(0 downto 0);
        un1_BIN_to_BCD_1_1: in     vl_logic_vector(3 downto 0);
        un1_BIN_to_BCD_0_1: in     vl_logic_vector(3 downto 0);
        un1_BIN_to_BCD_1: in     vl_logic_vector(3 downto 1);
        un1_BIN_to_BCD_0: in     vl_logic_vector(3 downto 1);
        N_6             : out    vl_logic;
        N_21_i_0        : out    vl_logic;
        Reset_c         : in     vl_logic;
        Clk_c           : in     vl_logic;
        Disp_dat8       : out    vl_logic;
        Disp_dat7       : out    vl_logic;
        Disp_dat6       : out    vl_logic;
        Disp_dat9       : out    vl_logic
    );
end dymamic_led;
