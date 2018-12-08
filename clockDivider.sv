module clockDivider(
	input wire clk,
	output reg second
);
	reg [24:0] counter;
	
	initial begin
		counter = 25'b0011111010111100001000000;
		second = 0;
	end
	
	always @(posedge clk)
		begin : clockDivider
			counter = counter + 1;
			if (counter == 0) begin
				counter = 25'b0011111010111100001000000;
				second = ~second;
			end	
		end
	
endmodule