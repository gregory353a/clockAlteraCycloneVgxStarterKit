module toggle (
  input  wire clk,
  input  wire in,
  output wire enable
);
	initial begin
		enable = 0;
	end

	always @(posedge in)
	begin
		enable = ~enable;
	end

endmodule
