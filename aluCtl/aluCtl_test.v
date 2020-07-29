`timescale 10 ns / 1 ns

module aluCtl_test;
   reg [1:0] ALUop;
	reg [5:0] func;
	wire [3:0] ALUCtl;
	wire add, sub;
	
	aluCtl ctl(ALUop, func, ALUCtl, add, sub);
	
	initial
	begin
	   ALUop = 0;
		func = 32;
		#10 ALUop = 1;
		#10 ALUop = 2;
		#10 func = 34;
		#10 func = 36;
		#10 func = 37;
		#10 func = 39;
		#10 func = 42;
		#10 func = 10;
		#10 func = 32;
		#10 ALUop = 3;
		#20;
	end
	
	initial
	begin
	   $monitor("ALUop = %b func = %d ALUCtl = %d", ALUop, func, ALUCtl);
		#200;
		$finish;
	end
endmodule
