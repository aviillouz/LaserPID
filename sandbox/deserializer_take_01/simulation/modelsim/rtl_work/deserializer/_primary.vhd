library verilog;
use verilog.vl_types.all;
entity deserializer is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        serial_data_in  : in     vl_logic;
        parallel_data_out: out    vl_logic_vector(7 downto 0)
    );
end deserializer;
