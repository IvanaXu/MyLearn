library verilog;
use verilog.vl_types.all;
entity HC138 is
    port(
        DataIn          : in     vl_logic_vector(2 downto 0);
        Dataout         : out    vl_logic_vector(7 downto 0);
        G1              : in     vl_logic;
        G2AN            : in     vl_logic;
        G2BN            : in     vl_logic
    );
end HC138;
