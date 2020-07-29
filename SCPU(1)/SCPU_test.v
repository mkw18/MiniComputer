`timescale 10 ns / 1 ns

module SCPU_test;
   reg CLK, reset;
	wire jump, Branch, zero, Bzero, RegDst, M2R, MemWr, ALUSrc, regWr, MemRead, OCLK;
	wire [1:0] ALUop;
	wire [3:0] ALUctl;
	wire [4:0] WriteAddr;
	wire [31:0] jumpPC, newPC, Bimm, ALUOut, PC, Instr, WriteData, DataB, RsData, RtData, Mem, Imm32;
	
	SCPU cpu(
	jump,
	Instr,
	OCLK,
	CLK,
	PC,
	reset,
	Bzero,
	zero,
	RsData,
	regWr,
	WriteAddr,
	RegDst,
	WriteData,
	M2R,
	ALUOut,
	Mem,
	MemWr,
	MemRead,
	RtData,
	ALUctl,
	ALUop,
	DataB,
	ALUSrc,
	Imm32,
	Branch,
	Bimm,
	jumpPC,
	newPC);
	
	always #10
	   CLK = ~CLK;
		
	initial begin
	   CLK = 0;
	   reset = 1;
		#3000;
	end
endmodule
