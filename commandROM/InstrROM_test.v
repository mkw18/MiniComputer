`timescale 10 ns / 1 ns

module InstrROM_test;
   reg [7:0] address;
	reg clock, clken;
	wire [31:0] q;
	integer i;
	
	comROM instr(q, clock, clken, address);
	
	always #10
	   clock = ~clock;
		
	initial begin
	   clock = 0;
		clken = 1;
		address = 0;
		for (i = 0; i < 10; i = i + 1) begin
		   #20 address = address + 1;
		end
		#20 clken = 0;
		address = 0;
		for (i = 0; i < 10; i = i + 1) begin
		   #20 address = address + 1;
		end
		#40;
	end
endmodule
