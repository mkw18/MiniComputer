module signExt(Imm16, Imm32);
	input [15:0] Imm16;
	output reg [31:0] Imm32;
	
	always case(Imm16[15])
		0: Imm32 <= Imm16;
		1: Imm32 <= Imm16 + 32'hffff0000;
		default: Imm32 <= Imm16;
	endcase
endmodule
