`timescale 10 ns / 1 ns

module ioRead_test;
   reg [7:0] switch;
	reg sign;
	wire [7:0] ioRes;
	
	ioRead ior(
	ioRes,
	sign,
	switch);
	
	initial begin
	   sign = 0;
		switch = 7;
		#20 sign = 1;
		#20;
	end
endmodule
