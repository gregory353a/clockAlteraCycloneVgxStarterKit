module source_selector(
	input wire clk,
	input wire enable,

	input wire [3:0] stopwatchsech,
	input wire [3:0] stopwatchsecl,
	input wire [3:0] stopwatchmsech,
	input wire [3:0] stopwatchmsecl,

	input wire [3:0] hourh,
	input wire [3:0] hourl,
	input wire [3:0] minh,
	input wire [3:0] minl,

	input wire [3:0] sech,
	input wire [3:0] secl,
	
	input wire [1:0] select,

	output reg [3:0] hex,
	output reg [3:0] hex3,	
	output reg [3:0] hex2,
	output reg [3:0] hex1,
	output reg [3:0] hex0
);
	initial begin 
		hex = 4'h0;
		hex3 = 4'h0;
		hex2 = 4'h0;
		hex1 = 4'h0;
		hex0 = 4'h0; 
	end
	
	always @(posedge clk)
	begin : selector
		if(enable) begin
			case (select)
				2'b00: begin 
					hex = 4'hf;
					hex3 = hourh;
					hex2 = hourl;
					hex1 = minh;
					hex0 = minl;
				end 
				2'b01: begin 
					hex = 4'h3;
					hex3 = 4'h0;
					hex2 = 4'h0;
					hex1 = sech;
					hex0 = secl;
				end  
				2'b10: begin 
					hex = 4'hf;
					hex3 = stopwatchsech;
					hex2 = stopwatchsecl;
					hex1 = stopwatchmsech;
					hex0 = stopwatchmsecl;				
				end
				2'b11: begin
					hex =4'h0;
					hex3 = 4'h0;
					hex2 = 4'h0;
					hex1 = 4'h0;
					hex0 = 4'h0;
				end
			endcase
		end else begin
			hex =4'h0;
		end
	end
endmodule
