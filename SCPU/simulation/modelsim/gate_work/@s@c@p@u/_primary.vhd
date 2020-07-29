library verilog;
use verilog.vl_types.all;
entity SCPU is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        jump            : out    vl_logic;
        Instr           : out    vl_logic_vector(31 downto 0);
        OCLK            : out    vl_logic;
        CLK             : in     vl_logic;
        PC              : out    vl_logic_vector(31 downto 0);
        reset           : in     vl_logic;
        Bzero           : out    vl_logic;
        zero            : out    vl_logic;
        RsData          : out    vl_logic_vector(31 downto 0);
        regWr           : out    vl_logic;
        WriteAddr       : out    vl_logic_vector(4 downto 0);
        RegDst          : out    vl_logic;
        WriteData       : out    vl_logic_vector(31 downto 0);
        M2R             : out    vl_logic;
        ALUOut          : out    vl_logic_vector(31 downto 0);
        Mem             : out    vl_logic_vector(31 downto 0);
        MemWr           : out    vl_logic;
        MemRead         : out    vl_logic;
        RtData          : out    vl_logic_vector(31 downto 0);
        ALUctl          : out    vl_logic_vector(3 downto 0);
        ALUop           : out    vl_logic_vector(1 downto 0);
        DataB           : out    vl_logic_vector(31 downto 0);
        ALUSrc          : out    vl_logic;
        Imm32           : out    vl_logic_vector(31 downto 0);
        Branch          : out    vl_logic;
        Bimm            : out    vl_logic_vector(31 downto 0);
        jumpPC          : out    vl_logic_vector(31 downto 0);
        newPC           : out    vl_logic_vector(31 downto 0)
    );
end SCPU;
