library verilog;
use verilog.vl_types.all;
entity mux_M2R is
    port(
        M2R             : in     vl_logic;
        ALUOut          : in     vl_logic_vector(31 downto 0);
        Mem             : in     vl_logic_vector(31 downto 0);
        WriteData       : out    vl_logic_vector(31 downto 0)
    );
end mux_M2R;
