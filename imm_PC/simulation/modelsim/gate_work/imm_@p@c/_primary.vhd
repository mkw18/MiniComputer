library verilog;
use verilog.vl_types.all;
entity imm_PC is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        Instr           : in     vl_logic_vector(31 downto 0);
        Jump            : in     vl_logic;
        Bzero           : in     vl_logic;
        imm             : in     vl_logic_vector(31 downto 0);
        PC              : out    vl_logic_vector(31 downto 0);
        jumpPC          : out    vl_logic_vector(31 downto 0);
        newPC           : out    vl_logic_vector(31 downto 0);
        Bimm            : out    vl_logic_vector(31 downto 0)
    );
end imm_PC;
