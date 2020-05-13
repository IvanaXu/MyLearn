library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        clock_period    : integer := 20
    );
end testbench;
