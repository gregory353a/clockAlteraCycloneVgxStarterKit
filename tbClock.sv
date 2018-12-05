`timescale 1ns/10ps
module tbClock();
        reg clk;
		reg on;
        reg set;
		reg click;
		
        initial begin
                clk = 0;
                forever #10 clk <= ~clk;
        end

        initial begin
                set = 1;
				on = 0;
                #50 set = 0;
				#50 on = 1;
        end

        clock clock_inst (
                .oneSecClk (clk),
				.on (on),
                .set (set),
                .hour (),
				.min (),
				.sec ()
        );
		
endmodule
