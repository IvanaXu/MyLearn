library verilog;
use verilog.vl_types.all;
entity HC153 is
    port(
        I2_c            : in     vl_logic_vector(3 downto 0);
        I1_c            : in     vl_logic_vector(3 downto 0);
        S2_c            : in     vl_logic;
        N_6             : out    vl_logic;
        N_4             : out    vl_logic;
        E2N_c           : in     vl_logic;
        E1N_c           : in     vl_logic;
        S1_c            : in     vl_logic
    );
end HC153;
