`timescale 1 ns / 1 ns

module imm_PC_test;
   reg CLK, reset, Jump, Bzero;
	reg [31:0] Instr, imm;
	
	wire [31:0] PC, jumpPC, newPC, Bimm;
	
	imm_PC immpc(CLK, reset, Instr, Jump, Bzero, imm, PC, jumpPC, newPC, Bimm);
	
	always #10
	   CLK =~CLK;
		
	initial begin
	   CLK = 0;
		reset = 1;
		Instr = 32'h12345678;
		Jump = 0;
		Bzero = 0;
		imm = 32'h00009876;
		#100 Jump = 1;
		#100 Jump = 0;
		Bzero = 1;
		#100;
	end
	
	initial begin
	   $monitor("Instr = %h Jump = %b Bzero = %b imm = %h PC = %h", Instr, Jump, Bzero, imm, PC);
		#400;
		$finish;
	end
endmodule
