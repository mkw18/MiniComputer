module imm_PC(CLK, reset, Instr, Jump, Bzero, imm, PC);
   input CLK, reset, Jump, Bzero;
	input [31:0] Instr;
	output reg [31:0] PC, imm;
	
	reg [31:0] jumpPC;
	
	initial begin
	   PC = 0;
		jumpPC = 0;
		imm = 0;
	end
	
	always @ (posedge CLK) begin
	   if (reset == 0) begin
		   PC = 0;
			jumpPC = 0;
		end
		if (Instr[15] == 0) begin
		   imm = Instr[15:0];
		end
		else imm = Instr[15:0] + 32'hffff0000;
		if (Jump == 1) begin
		   jumpPC = Instr;
			jumpPC = jumpPC << 6;
			jumpPC = jumpPC >> 4;
			PC = PC >> 28;
			PC = PC << 28;
			PC = jumpPC + PC;
		end
		else if (Bzero == 1) begin
		   PC = PC + 4;
			jumpPC = imm;
			jumpPC = jumpPC << 2;
		   PC = PC + jumpPC;
		end
		else begin
		   PC = PC + 4;
		end
	end
endmodule
