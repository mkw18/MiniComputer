library verilog;
use verilog.vl_types.all;
entity mainCtl_vlg_sample_tst is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end mainCtl_vlg_sample_tst;
