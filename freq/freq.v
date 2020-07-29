module freq (CLK,OCLK, CLK1, CLK2);
   input CLK;
   output OCLK;
   reg OCLK;
	output reg CLK1;//50Hz
	output reg CLK2;//10Hz
   reg [12:0]cnt1;
	reg [18:0] cnt2;
	reg [21:0] cnt3;
   
   initial
	   begin
      cnt1<=0;
		cnt2<=0;
		cnt3<=0;
		OCLK <= 0;
		CLK1 <= 0;
		CLK2 <= 0;
		end
	 
   always @ (posedge CLK)
      begin
	      cnt1 <= cnt1 + 1;
         if (cnt1 == 10)
	         begin
		      OCLK <= ~OCLK;
		      cnt1 <= 0;
		      end
			cnt2 <= cnt2 + 1;
			if (cnt2 == 500000)
			begin
			   CLK1 <= ~CLK1;
				cnt2 <= 0;
			end
			cnt3 <= cnt3 + 1;
			if (cnt3 == 2500000)
			begin
			   CLK2 = ~CLK2;
				cnt3 <=0;
			end
		end

endmodule
	