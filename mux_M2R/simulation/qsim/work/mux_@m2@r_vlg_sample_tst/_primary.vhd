library verilog;
use verilog.vl_types.all;
entity mux_M2R_vlg_sample_tst is
    port(
        ALUOut          : in     vl_logic_vector(31 downto 0);
        M2R             : in     vl_logic;
        Mem             : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_M2R_vlg_sample_tst;
