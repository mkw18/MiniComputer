library verilog;
use verilog.vl_types.all;
entity aluCtl is
    port(
        ALUop           : in     vl_logic_vector(1 downto 0);
        func            : in     vl_logic_vector(5 downto 0);
        ALUCtl          : out    vl_logic_vector(3 downto 0);
        add             : out    vl_logic;
        sub             : out    vl_logic
    );
end aluCtl;
