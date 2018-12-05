module uiLedBehavior(
	input wire [5:0] sec, //clock
	input wire [3:0] button,
	input wire [9:0] sw,
	output reg on, //clock
	output reg set, //clock
	output reg minOrSec, //timeToNumber
	output reg enableDisplay,
	output reg [1:0] sethms, //clock
	output reg [1:0] upDown, //clock
	output reg [9:0] ledr,
	output reg [7:0] ledg
);

	assign ledr = sw;
	assign ledg[7:6] = 0;
	assign ledg[5:0] = sec;
	assign on = sw[8];
	assign enableDisplay = sw[9];
	assign set = sw[2];
	assign minOrSec = sw[7];
	assign sethms[1:0] = sw[1:0];
	assign upDown[1:0] = button[1:0];


endmodule