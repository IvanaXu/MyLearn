library verilog;
use verilog.vl_types.all;
entity cmp_2 is
    port(
        DataA           : in     vl_logic_vector(7 downto 0);
        DataB           : in     vl_logic_vector(7 downto 0);
        AGEB            : out    vl_logic
    );
end cmp_2;
