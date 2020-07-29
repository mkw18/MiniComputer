library verilog;
use verilog.vl_types.all;
entity ioRead is
    port(
        ioRes           : out    vl_logic_vector(7 downto 0);
        sign            : in     vl_logic;
        switch          : in     vl_logic_vector(7 downto 0)
    );
end ioRead;
