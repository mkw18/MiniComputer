module DigChoose (CLK, sub, ALUOut, dig, num);
   input CLK, sub;
	input [7:0] ALUOut;
	output reg [3:0] dig;
	output reg [4:0] num;
	
	
	initial
	   dig <= 4'b0001;
	
	always @ (posedge CLK)
	begin
	   if (sub == 1) begin
		   case(dig)
			   4'b0001:
				begin
					dig <= 4'b0010;
				   num <= 20;
				end
				4'b0010:
				begin
					dig <= 4'b0100;
				   num <= 20;
				end
				4'b0100:
				begin
					dig <= 4'b1000;
				   num <= ALUOut % 16;
				end
				4'b1000:
				begin
					dig <= 4'b0001;
					num <= (ALUOut >> 4);
				end
				default
				begin
					dig = 4'b0001;
					num = 20;
				end
			endcase
		end
		else begin
		   dig = 4'b0001;
			num = 20;
		end
	end
endmodule
