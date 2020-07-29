`timescale 10 ns / 1 ns

module regFile_test;
   reg CLK, reset, regWr;
	reg [4:0] RsAddr, RtAddr, WriteAddr;
	reg [31:0] WriteData;
	
	wire [31:0] RsData, RtData;
	
	regFile rw(CLK, reset, regWr, RsAddr, RtAddr, WriteAddr, WriteData, RsData, RtData);
	
	always #10
	CLK = ~CLK;
	
	initial
	begin
	   CLK = 0;
		reset = 1;
		regWr = 0;
		RsAddr = 5'b00000;
		RtAddr = 5'b00001;
		#100 RsAddr = 5'b10000;
		RtAddr = 5'b00100;
		#100 regWr = 1;
		WriteAddr = 5'b00000;
		WriteData = 32'h1234fac9;
		#100 WriteAddr = 5'b00001;
		WriteData = 32'h00ab3591;
		#100 WriteAddr = 5'b00100;
		WriteData = 32'h98765432;
		#100 WriteAddr = 5'b10000;
		WriteData = 32'h7632abcf;
		#100 regWr = 0;
		RsAddr = 5'b00000;
		RtAddr = 5'b00001;
		#100 RsAddr = 5'b10000;
		RtAddr = 5'b00100;
		#100 reset = 0;
		#100;
	end
endmodule
