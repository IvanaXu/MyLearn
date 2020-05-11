library verilog;
use verilog.vl_types.all;
entity HC74 is
    port(
        D               : in     vl_logic_vector(1 to 2);
        Clk             : in     vl_logic_vector(1 to 2);
        Q               : out    vl_logic_vector(1 to 2);
        SD              : in     vl_logic_vector(1 to 2);
        RD              : in     vl_logic_vector(1 to 2);
        QN              : out    vl_logic_vector(1 to 2)
    );
end HC74;
