
module counter_modulo #(
  parameter N = 10
) (
  input wire clk,
  input wire reset,
  
  input wire enable,
  
  output reg  [31:0] cnt,
  output reg         tick

);

	initial begin
		cnt = 32'h00000000;
		tick = 0;
	end

	always @(posedge clk, posedge reset) begin
		if(reset) begin
			cnt <= 32'h00000000;
			tick <= 0;		
		end else if (enable && N-1>cnt) begin
			tick <= 0;			
			cnt <= cnt + 1;
		end else if(enable) begin
			cnt <= 0;
			tick <= 1;
		end else
			tick <=0;		
	end
  
endmodule
