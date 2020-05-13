library verilog;
use verilog.vl_types.all;
entity HC148 is
    port(
        DataIn          : in     vl_logic_vector(7 downto 0);
        EO              : out    vl_logic;
        Dataout         : out    vl_logic_vector(2 downto 0);
        EI              : in     vl_logic;
        GS              : out    vl_logic
    );
end HC148;
