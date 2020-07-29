library verilog;
use verilog.vl_types.all;
entity mainCtl is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        RegDst          : out    vl_logic;
        Branch          : out    vl_logic;
        jump            : out    vl_logic;
        MemRead         : out    vl_logic;
        M2R             : out    vl_logic;
        ALUop           : out    vl_logic_vector(1 downto 0);
        MemWrite        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        RegWrite        : out    vl_logic
    );
end mainCtl;
