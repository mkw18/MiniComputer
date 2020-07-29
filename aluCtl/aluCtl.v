module aluCtl(ALUop, func, ALUCtl, add, sub);
   input [1:0] ALUop;
	input [5:0] func;
	output reg [3:0] ALUCtl;
	output reg add, sub;
	
	always @ (ALUop, func)
	begin
	   case (ALUop)
			0: ALUCtl <= 2;
			1: ALUCtl <= 6;
			2: case (func)
					32: ALUCtl <= 2;
					34: ALUCtl <= 6;
					36: ALUCtl <= 0;
					37: ALUCtl <= 1;
					39: ALUCtl <= 12;
					42: ALUCtl <= 7;
					default: ALUCtl <= 15;
				endcase
			default: ALUCtl <= 15;
		endcase
		add = ((ALUop == 2) & (func == 32));
		sub = ((ALUop == 2) & (func == 34));
	end
endmodule
