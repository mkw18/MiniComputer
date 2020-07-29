library verilog;
use verilog.vl_types.all;
entity signExt_vlg_check_tst is
    port(
        Imm32           : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end signExt_vlg_check_tst;
