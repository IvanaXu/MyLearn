library verilog;
use verilog.vl_types.all;
entity XYF is
    port(
        sel_0           : in     vl_logic_vector(1 downto 0);
        led_0           : out    vl_logic_vector(7 downto 0);
        sel_1           : in     vl_logic_vector(1 downto 0);
        led_1           : out    vl_logic_vector(7 downto 0);
        sel_2           : in     vl_logic_vector(1 downto 0);
        led_2           : out    vl_logic_vector(7 downto 0);
        rst             : in     vl_logic;
        clk             : in     vl_logic
    );
end XYF;
