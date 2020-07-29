module show (CLK,num,seg);
	input CLK;
   input [4:0]num;
	output reg [6:0] seg;
	
	always @ (posedge CLK)
	begin
	   case (num)
		   5'h0 :
				seg <= 7'b0111111;
			5'h1 :
				seg <= 7'b0000110;
			5'h2 :
				seg <= 7'b1011011;
			5'h3 :
				seg <= 7'b1001111;
			5'h4 :
				seg <= 7'b1100110;
			5'h5 :
				seg <= 7'b1101101;
			5'h6 :
				seg <= 7'b1111101;
			5'h7 :
				seg <= 7'b0000111;
			5'h8 :
				seg <= 7'b1111111;
			5'h9 :
				seg <= 7'b1101111;
			5'ha :
			   seg <= 7'b1011111;
			5'hb :
			   seg <= 7'b1111100;
			5'hc :
			   seg <= 7'b0111001;
			5'hd :
			   seg <= 7'b1011110;
			5'he :
			   seg <= 7'b1111011;
			5'hf :
			   seg <= 7'b1110001;
			default : 
				seg <= 7'b0000000;
		endcase
	end
endmodule