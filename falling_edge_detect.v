
module falling_edge_detect (
  input  wire clk,
  input  wire in,
  output wire pulse
);
	reg a; 
	initial begin
		a= 0;
	end

	assign pulse = !a&&!in;	

	always @(posedge clk)
	begin
		if(!in)
			a=1;
		else
			a=0;
	end

endmodule
