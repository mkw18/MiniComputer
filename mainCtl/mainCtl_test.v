`timescale 10 ns / 1 ns

module mainCtl_test;
	reg [5:0] opcode;
	wire RegDst, Branch, jump, MemRead, M2R, MemWrite, ALUSrc, RegWrite;
	wire [1:0] ALUop;
	
	initial
	begin
		opcode = 0;
		#10 opcode = 2;
		#10 opcode = 4;
		#10 opcode = 35;
		#10 opcode = 43;
		#10;
	end
	
	initial
	begin
	   $monitor("opcode = %d RegDst = %b Branch = %b jump = %b MemRead = %b M2R = %b MemWrite = %b ALUSrc = %b RegWrite = %b", opcode, RegDst, Branch, jump, MemRead, M2R, MemWrite, ALUSrc, RegWrite);
		#60;
		$finish;
	end
	
endmodule
