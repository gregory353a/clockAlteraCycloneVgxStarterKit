module timeToNumber(
	input wire [4:0] hour,
	input wire [5:0] min,
	input wire [5:0] sec,
	input wire minOrSec,
	output reg [4:0] hhour,
	output reg [4:0] lhour,
	output reg [4:0] hminsec,
	output reg [4:0] lminsec
);

	initial begin
		hhour = 0;
		lhour = 0;
		hminsec = 0;
		lminsec = 0;
	end
	
	always @(*)
		begin : CONVERT
			if(minOrSec) begin
				hhour = 0;
				lhour = 0;
				hminsec = sec/10;
				lminsec = sec%10;
			end
			else begin
				hhour = hour/10;
				lhour = hour%10;
				hminsec = min/10;
				lminsec = min%10;
			end
		end

endmodule	