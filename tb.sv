`timescale 1ns/10ps
module tb();
        reg clk;
        reg reset;
        reg enable;
		reg [3:0] value;
		
        initial begin
                clk = 0;
                forever #10 clk <= ~clk;
        end

        initial begin
                reset = 1;
                enable = 0;
                #50 reset = 0;
                #50 enable = 1;
        end

        my_counter my_counter_inst (
                .clock (clk),
                .reset (reset),
                .enable (enable),
                .counter_out (value)
        );
		
		sevenSegDisplay sevenSegDisplay_inst (
				.enable (enable),
				.endot	(clk),
				.number (value),
				.dot	(),
				.pattern ()
		);
endmodule
