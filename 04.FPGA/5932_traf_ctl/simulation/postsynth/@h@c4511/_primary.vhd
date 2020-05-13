library verilog;
use verilog.vl_types.all;
entity HC4511 is
    port(
        Seg_c           : out    vl_logic_vector(6 downto 4);
        SM_8S_1_i_0_a3_0_0: out    vl_logic;
        SM_8S_1_i_0     : out    vl_logic_vector(1 downto 1);
        Disp_dat        : in     vl_logic_vector(3 downto 0);
        N_21_i_0        : out    vl_logic;
        N_6             : out    vl_logic
    );
end HC4511;
