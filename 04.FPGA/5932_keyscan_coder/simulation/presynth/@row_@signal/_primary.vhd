library verilog;
use verilog.vl_types.all;
entity Row_Signal is
    port(
        row             : out    vl_logic_vector(3 downto 0);
        key             : in     vl_logic_vector(15 downto 0);
        col             : in     vl_logic_vector(3 downto 0)
    );
end Row_Signal;
