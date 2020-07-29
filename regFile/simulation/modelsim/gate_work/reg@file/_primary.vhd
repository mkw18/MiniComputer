library verilog;
use verilog.vl_types.all;
entity regFile is
    port(
        CLK             : in     vl_logic;
        reset           : in     vl_logic;
        regWr           : in     vl_logic;
        RsAddr          : in     vl_logic_vector(4 downto 0);
        RtAddr          : in     vl_logic_vector(4 downto 0);
        WriteAddr       : in     vl_logic_vector(4 downto 0);
        WriteData       : in     vl_logic_vector(31 downto 0);
        RsData          : out    vl_logic_vector(31 downto 0);
        RtData          : out    vl_logic_vector(31 downto 0)
    );
end regFile;
