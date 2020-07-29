library verilog;
use verilog.vl_types.all;
entity mainCtl_vlg_check_tst is
    port(
        ALUSrc          : in     vl_logic;
        ALUop           : in     vl_logic_vector(1 downto 0);
        Branch          : in     vl_logic;
        M2R             : in     vl_logic;
        MemRead         : in     vl_logic;
        MemWrite        : in     vl_logic;
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        jump            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end mainCtl_vlg_check_tst;
