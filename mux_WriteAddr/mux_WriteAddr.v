module mux_WriteAddr(RegDst, RtAddr, RdAddr, WriteAddr);
	input RegDst;
	input [4:0] RtAddr, RdAddr;
	output reg [4:0] WriteAddr;
	
	always if (RegDst == 0) WriteAddr = RtAddr;
		else WriteAddr = RdAddr;
		
endmodule
