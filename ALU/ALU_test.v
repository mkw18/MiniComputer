`timescale 10 ns / 1 ns

module ALU_test;
   
	reg [3:0] ALUctl;
	reg [31:0] A;
	reg [31:0] B;
	
	wire [31:0] ALUOut;
	wire zero;
	
	ALU alu(ALUctl, A, B, ALUOut, zero);
	
	initial
	begin
		ALUctl = 4'b1111; //初始状态1111
		#10;//普通加法
		ALUctl = 4'b0010;
		A = 32'h123f00ab;
		B = 32'h4c5a6789;
		#10;//有溢出加法
		A = 32'hf23f00ab;
		#10;//普通减法
		ALUctl = 4'b0110;
		#10;//有溢出减法
		A = 32'h123f00ab;
		#10;//为零减法
		B = 32'h123f00ab;
		#10;//与
		ALUctl = 4'b0000;
		B = 32'h4c5a6789;
		#10;//或
		ALUctl = 4'b0001;
		#10;//比较
		ALUctl = 4'b0111;
		#10;//或非
		ALUctl = 4'b1100;
		#20;
	end
	
	initial
	begin
	   $monitor("ALUctl = %b A = %h B = %h ALUOut = %h zero = %b", ALUctl, A, B, ALUOut, zero);
		#200
		$finish;
	end
	
endmodule
