library verilog;
use verilog.vl_types.all;
entity mux_data is
    port(
        ALUSrc          : in     vl_logic;
        RtData          : in     vl_logic_vector(31 downto 0);
        Imm32           : in     vl_logic_vector(31 downto 0);
        DataB           : out    vl_logic_vector(31 downto 0)
    );
end mux_data;
