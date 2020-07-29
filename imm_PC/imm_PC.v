module imm_PC(CLK, reset, Instr, Jump, Bzero, imm, PC, jumpPC, newPC, Bimm);
   input CLK, reset, Jump, Bzero;
	input [31:0] Instr, imm;
	output reg [31:0] PC;
	
	output reg [31:0] jumpPC, newPC, Bimm;
	
	initial begin
	   PC = 0;
		jumpPC = 0;
		newPC = 0;
		Bimm = 0;
	end
	
	always @ (posedge CLK) begin
	   if (reset == 0) begin
		   PC = 0;
			jumpPC = 0;
			newPC = 0;
			Bimm = 0;
		end
		if (Jump == 1) begin
		   jumpPC = Instr;
			jumpPC = jumpPC << 6;
			jumpPC = jumpPC >> 4;
			newPC = PC;
			newPC = newPC >> 28;
			newPC = newPC << 28;
			jumpPC = jumpPC + newPC;
			PC = jumpPC;
		end
		else if (Bzero == 1) begin
		   PC = PC + 4;
			Bimm = imm;
			Bimm = Bimm << 2;
		   PC = PC + Bimm;
		end
		else begin
		   PC = PC + 4;
		end
	end
endmodule
