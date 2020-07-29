module regFile(CLK, reset, regWr, RsAddr, RtAddr, WriteAddr, WriteData, RsData, RtData);
   input CLK, reset, regWr;
	input [4:0] RsAddr, RtAddr, WriteAddr;
	input [7:0] WriteData;
	output [31:0] RsData, RtData;
	
	reg [31:0] RF [5:0];
	integer i;
	
	assign RsData = RF[RsAddr];
	assign RtData = RF[RtAddr];
	
	initial begin
	   for (i = 0; i < 5; i = i + 1) RF[i] <= 1 + i;
	end
	
	always @ (posedge CLK)
	begin
	   if (reset == 0)
		begin
		   for (i = 0; i < 5; i = i + 1) RF[i] <= 0;
		end
		if (regWr) RF[WriteAddr] <= WriteData;
	end
	
//	always begin
//	   @ (posedge CLK) if (regWr) RF[WriteAddr] <= WriteData;
//	end
endmodule
