library verilog;
use verilog.vl_types.all;
entity BIN_to_BCD is
    port(
        Data            : in     vl_logic_vector(7 downto 0);
        \Units\         : out    vl_logic_vector(3 downto 0);
        Tens            : out    vl_logic_vector(3 downto 0);
        Hundreds        : out    vl_logic_vector(3 downto 0)
    );
end BIN_to_BCD;
