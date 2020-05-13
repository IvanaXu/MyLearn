library verilog;
use verilog.vl_types.all;
entity cmp_2 is
    port(
        DataB_c         : in     vl_logic_vector(0 downto 0);
        DataA_c         : in     vl_logic_vector(0 downto 0);
        DataOut_2_0     : in     vl_logic_vector(7 downto 1);
        DataOut_2       : in     vl_logic_vector(7 downto 1);
        AGEB_c          : out    vl_logic
    );
end cmp_2;
