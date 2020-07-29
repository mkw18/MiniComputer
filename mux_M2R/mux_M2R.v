module mux_M2R(M2R, ALUOut, Mem, WriteData);
	input M2R;
	input [31:0] ALUOut, Mem;
	output reg [31:0] WriteData;
	
	always if (M2R == 0) WriteData = ALUOut;
		else WriteData = Mem;
		
endmodule
