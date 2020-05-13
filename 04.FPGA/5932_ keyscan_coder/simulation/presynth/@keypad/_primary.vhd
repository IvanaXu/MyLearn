library verilog;
use verilog.vl_types.all;
entity Keypad is
    generic(
        S0              : integer := 1;
        S1              : integer := 2;
        S2              : integer := 4;
        S3              : integer := 8;
        S4              : integer := 16;
        S5              : integer := 32
    );
    port(
        Code            : out    vl_logic_vector(3 downto 0);
        Col             : out    vl_logic_vector(3 downto 0);
        Valid           : out    vl_logic;
        Row             : in     vl_logic_vector(3 downto 0);
        S_Row           : in     vl_logic;
        Clk             : in     vl_logic;
        Reset           : in     vl_logic
    );
end Keypad;
