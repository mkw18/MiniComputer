library verilog;
use verilog.vl_types.all;
entity mux_M2R_vlg_check_tst is
    port(
        WriteData       : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_M2R_vlg_check_tst;
