module clock(
	input wire oneSecClk,
	input wire on,
	input wire set,
	input wire [1:0] sethms,
	input wire [1:0] upDown,
	output reg [4:0] hour,
	output reg [5:0] min,
	output reg [5:0] sec
);
	initial begin 
		hour = 0;
		min = 0;
		sec = 0; 
	end
	
	always @(posedge oneSecClk)
		begin : CLOCK
		
		if(set) 
		begin
 			case (sethms)
				2'b00: begin 
					if(upDown == 2'b01) begin
						if(hour >= 23)
							hour <= 5'b00000;
						else
							hour <= hour + 1;
					end		
					else if(upDown == 2'b10) begin
						if(hour == 0)
							hour <= 5'b10111;
						else
						hour <= hour - 1;
					end
				end 
				2'b01: begin 
					if(upDown == 2'b01) begin 
						if(min >= 59)
							min <= 6'b000000;
						else
							min <= min + 1;
					end		
					else if(upDown == 2'b10) begin
						if(min == 0)
							min <= 6'b111011;
						else
						min <= min - 1;
					end	
				end  
				2'b10: begin 
					if(upDown == 2'b01) 
						sec <= 6'b000000;
					else if(upDown == 2'b10)
						sec <= 6'b000000;
				end
			endcase
		end
		
		else if (on) begin
				sec = sec + 1;
				if(sec == 60) begin
					sec = 0;
					min = min + 1;
					if(min == 60) begin
						min = 0;
						hour = hour + 1;
						if(hour == 24) begin
							hour = 0;
						end
					end
				end
			end
		end
endmodule