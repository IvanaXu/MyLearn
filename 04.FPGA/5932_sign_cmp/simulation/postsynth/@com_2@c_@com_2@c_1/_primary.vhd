library verilog;
use verilog.vl_types.all;
entity Com_2C_Com_2C_1 is
    port(
        DataOut_2_0     : out    vl_logic_vector(7 downto 1);
        DataB_c         : in     vl_logic_vector(7 downto 0)
    );
end Com_2C_Com_2C_1;
