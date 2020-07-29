library verilog;
use verilog.vl_types.all;
entity mux_data_vlg_check_tst is
    port(
        DataB           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_data_vlg_check_tst;
