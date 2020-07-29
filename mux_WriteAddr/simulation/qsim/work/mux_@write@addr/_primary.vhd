library verilog;
use verilog.vl_types.all;
entity mux_WriteAddr is
    port(
        RegDst          : in     vl_logic;
        RtAddr          : in     vl_logic_vector(4 downto 0);
        RdAddr          : in     vl_logic_vector(4 downto 0);
        WriteAddr       : out    vl_logic_vector(4 downto 0)
    );
end mux_WriteAddr;
