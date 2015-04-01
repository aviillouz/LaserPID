library verilog;
use verilog.vl_types.all;
entity deserializer_vlg_check_tst is
    port(
        parallel_data_out: in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end deserializer_vlg_check_tst;
