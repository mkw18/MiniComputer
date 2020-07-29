library verilog;
use verilog.vl_types.all;
entity mux_WriteAddr_vlg_sample_tst is
    port(
        RdAddr          : in     vl_logic_vector(4 downto 0);
        RegDst          : in     vl_logic;
        RtAddr          : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_WriteAddr_vlg_sample_tst;
