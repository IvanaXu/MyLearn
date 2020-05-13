library verilog;
use verilog.vl_types.all;
entity Com_2C is
    port(
        DataA           : in     vl_logic_vector(7 downto 0);
        DataOut         : out    vl_logic_vector(7 downto 0)
    );
end Com_2C;
