library verilog;
use verilog.vl_types.all;
entity HC04 is
    port(
        A               : in     vl_logic_vector(6 downto 1);
        Y               : out    vl_logic_vector(6 downto 1)
    );
end HC04;
