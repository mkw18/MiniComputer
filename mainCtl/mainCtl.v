module mainCtl(opcode, RegDst, Branch, jump, MemRead, M2R, ALUop, MemWrite, ALUSrc, RegWrite);
	input [5:0] opcode;
	output reg RegDst, Branch, jump, MemRead, M2R, MemWrite, ALUSrc, RegWrite;
	output reg [1:0] ALUop;
	
	always @ (opcode)
	begin
	   RegDst = (opcode == 0);
	   Branch = (opcode == 4);
		jump = (opcode == 2);
		MemRead = (opcode == 35); //35和43置数时错乱
		M2R = (opcode == 35);
		ALUop[1] = (opcode == 0);
		ALUop[0] = (opcode == 4);
		MemWrite = (opcode == 43);
		ALUSrc = ((opcode == 35) | (opcode == 43));
		RegWrite = ((opcode == 0) | (opcode == 35));
	end
	
/*	assign RegDst = (opcode == 0);
	assign Branch = (opcode == 4);
	assign jump = (opcode == 2);
	assign MemRead = (opcode == 35); //35和43置数时错乱
	assign M2R = (opcode == 35);
	assign ALUop[1] = (opcode == 0);
	assign ALUop[0] = (opcode == 4);
	assign MemWrite = (opcode == 43);
	assign ALUSrc = ((opcode == 35) || (opcode == 43));
	assign RegWrite = ((opcode == 0) || (opcode == 35));
	*/
endmodule
