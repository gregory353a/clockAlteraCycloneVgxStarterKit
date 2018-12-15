module sevenSegDisplay(
	input wire enable,
//	input wire endot,
	input wire [3:0] number,
//	output reg dot,
	output reg [6:0] pattern
);

	always @(*)
		begin : DISPLAY
			if (enable) begin
				case(number)
				0: pattern = 	7'b1000000;
				1: pattern = 	7'b1111001; //1001111;
				2: pattern = 	7'b0100100; //0010010;
				3: pattern = 	7'b0110000; //0000110;
				4: pattern = 	7'b0011001; //1001100;
				5: pattern = 	7'b0010010; //0100100;
				6: pattern = 	7'b0000010; //0100000;
				7: pattern = 	7'b1111000; //0001111;
				8: pattern = 	7'b0000000;
				9: pattern = 	7'b0010000; //0000100;
				10: pattern =	7'b0100000; //0000010;
				11: pattern =	7'b0000011; //1100000;
				12: pattern =	7'b1000110; //0110001;
				13: pattern =	7'b0100001; //1000010;
				14: pattern =	7'b0000110; //0110000;
				15: pattern =	7'b0001110; //0111000;
				default:
					pattern = 7'b1111111;
				endcase
//				if (endot)
//					dot = 0;
//				else
//					dot = 1;
			end
			else begin
				pattern = 7'b1111111;
//				dot = 1;
			end
		end
endmodule
