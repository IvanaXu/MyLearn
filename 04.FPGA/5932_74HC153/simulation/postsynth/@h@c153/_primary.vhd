library verilog;
use verilog.vl_types.all;
entity HC153 is
    port(
        I1              : in     vl_logic_vector(0 to 3);
        I2              : in     vl_logic_vector(0 to 3);
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        E1N             : in     vl_logic;
        E2N             : in     vl_logic;
        Y1              : out    vl_logic;
        Y2              : out    vl_logic
    );
end HC153;
