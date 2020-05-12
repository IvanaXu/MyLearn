library verilog;
use verilog.vl_types.all;
entity HC194 is
    port(
        D_c             : in     vl_logic_vector(3 downto 0);
        Q_c             : out    vl_logic_vector(3 downto 0);
        S_c             : in     vl_logic_vector(1 downto 0);
        MR_c            : in     vl_logic;
        CP_c            : in     vl_logic;
        DSR_c           : in     vl_logic;
        DSL_c           : in     vl_logic
    );
end HC194;
