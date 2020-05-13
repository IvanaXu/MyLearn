library verilog;
use verilog.vl_types.all;
entity HC112 is
    port(
        J               : in     vl_logic_vector(1 to 2);
        K               : in     vl_logic_vector(1 to 2);
        Clk             : in     vl_logic_vector(1 to 2);
        SD              : in     vl_logic_vector(1 to 2);
        RD              : in     vl_logic_vector(1 to 2);
        Q               : out    vl_logic_vector(1 to 2);
        QN              : out    vl_logic_vector(1 to 2)
    );
end HC112;
