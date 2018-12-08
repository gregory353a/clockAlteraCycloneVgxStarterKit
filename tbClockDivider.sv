`timescale 1us/100ns
module tbClockDivider();
        reg clk;
		
		
        initial begin
                clk = 0;
			    forever #1 clk <= ~clk;
        end
		
		clockDivider clockDivider_instance(
			.clk (clk),
			.second ()
		);
		
endmodule
