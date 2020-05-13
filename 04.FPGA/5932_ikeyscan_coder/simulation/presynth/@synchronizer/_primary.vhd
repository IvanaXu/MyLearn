library verilog;
use verilog.vl_types.all;
entity Synchronizer is
    port(
        S_Row           : out    vl_logic;
        Row             : in     vl_logic_vector(3 downto 0);
        Clk             : in     vl_logic;
        Reset           : in     vl_logic
    );
end Synchronizer;
