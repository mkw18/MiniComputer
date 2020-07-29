library verilog;
use verilog.vl_types.all;
entity signExt_vlg_sample_tst is
    port(
        Imm16           : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end signExt_vlg_sample_tst;
