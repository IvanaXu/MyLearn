library verilog;
use verilog.vl_types.all;
entity HC00 is
    port(
        A_c             : in     vl_logic_vector(4 downto 1);
        B_c             : in     vl_logic_vector(4 downto 1);
        un1_Y           : out    vl_logic_vector(3 downto 0)
    );
end HC00;
