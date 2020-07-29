library verilog;
use verilog.vl_types.all;
entity mux_data_vlg_sample_tst is
    port(
        ALUSrc          : in     vl_logic;
        Imm32           : in     vl_logic_vector(31 downto 0);
        RtData          : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_data_vlg_sample_tst;
