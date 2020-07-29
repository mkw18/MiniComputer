library verilog;
use verilog.vl_types.all;
entity mux_WriteAddr_vlg_check_tst is
    port(
        WriteAddr       : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_WriteAddr_vlg_check_tst;
