library verilog;
use verilog.vl_types.all;
entity HC00 is
    port(
        A               : in     vl_logic_vector(4 downto 1);
        B               : in     vl_logic_vector(4 downto 1);
        Y               : out    vl_logic_vector(4 downto 1)
    );
end HC00;
