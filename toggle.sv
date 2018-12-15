module toggle (
  input  wire clk,
  input  wire in,
  input  wire reset,
  output wire enable
);
	initial begin
		enable = 0;
	end

	always @(posedge clk)
	begin
		if(reset)begin
			enable = 0;
		end else if(in) begin
			enable = ~enable;
		end
	end

endmodule
