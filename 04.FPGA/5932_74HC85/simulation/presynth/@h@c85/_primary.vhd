library verilog;
use verilog.vl_types.all;
entity HC85 is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        QAGB            : out    vl_logic;
        QASB            : out    vl_logic;
        QAEB            : out    vl_logic;
        IAGB            : in     vl_logic;
        IASB            : in     vl_logic;
        IAEB            : in     vl_logic
    );
end HC85;
