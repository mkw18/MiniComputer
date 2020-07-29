module showall(CLK, add, sub, ALUOut,dig,seg, led);
   input CLK, add, sub;
	input [7:0] ALUOut;
	output [3:0] dig;
	output [6:0] seg;
	output reg [7:0] led;
	wire [4:0] num;
	
	DigChoose dc(CLK, sub, ALUOut,dig,num);
	show sh(CLK,num,seg);
	
	always @ (add) begin
	   if (add == 1) led = ALUOut;
		else led = 0;
	end
	
endmodule
