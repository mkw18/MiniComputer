`timescale 10 ns / 1ns

module showall_test;
	reg CLK, add, sub;
	reg [7:0] ALUOut;
	
	wire [3:0] dig;
	wire [6:0] seg;
	wire [7:0] led;
	
	showall sh(CLK, add, sub, ALUOut, dig, seg, led);
	
	always #1
		CLK = ~CLK;
	
	initial 
	begin
		CLK = 0;
		add = 1;
		sub = 0;
		ALUOut = 0;
		#4;
		for (ALUOut = 20; ALUOut < 30; ALUOut = ALUOut + 1)//输出ALUOut
		begin
		   #8;
		end
		#4;
		add = 0;
		sub = 1;
		#4 for (ALUOut = 30; ALUOut < 40; ALUOut = ALUOut + 1)
		begin
		   #8;
		end
		#4 sub = 0;
		#10;
	end
	
	initial
	begin
	   $monitor("add = %b sub = %b ALUOut = %h dig = %b seg = %b led = %h", add, sub, ALUOut,dig,seg, led);
		#300
		$finish;
	end
endmodule