`timescale 1ns/10ps
module tbWholeClock();
        reg clk; 
		reg on; //in
		reg enableDisplay; //in
		reg set; //in
		reg [3:0] button; //in
		reg [9:0] sw; //in
		reg minOrSec; //in
		reg [5:0] sec;
		reg [5:0] min;
		reg [4:0] hour;
		reg [4:0] hhour;
		reg [4:0] lhour;
		reg [4:0] hminsec;
		reg [4:0] lminsec;
		
		
        initial begin
                clk = 0;
			    forever #10 clk <= ~clk;
        end
		
		initial begin
				minOrSec = 0;
				forever #5 minOrSec <= ~minOrSec;
		end
		
		initial begin
				on = 0;
				enableDisplay = 0;
				set = 1;
				#50 on = 1;
				#50 set = 0;
				#50 enableDisplay = 1; 
				#100 enableDisplay = 0;
				#150 enableDisplay = 1;
		end
				
		
		uiLedBehavior uiLedBehavior_inst (
				.sec (sec), //clock
				.button,
				.sw,
				
				.on (on), //clock
				.enableDisplay (enableDisplay),
				.set (set), //clock
				.minOrSec (minOrSec), //timeToNumber
				.sethms (sethms), //clock
				.upDown (upDown), //clock
				.ledr (),
				.ledg ()		
		
		);
		
        clock clock_inst (
                .oneSecClk (clk),
				.on (on),
                .set (set),
                .hour (hour),
				.min (min),
				.sec (sec)
        );
		
		timeToNumber timeToNumber_instance (
				.hour (hour),
				.min (min),
				.sec (sec),
				.minOrSec (minOrSec),
				.hhour (hhour),
				.lhour (lhour),
				.hminsec (hminsec),
				.lminsec (lminsec)
        );
		
		sevenSegDisplay sevenSegDisplay_inst0 (
				.enable (~minOrSec && enableDisplay),
				.endot	(1),
				.number (hhour),
				.dot	(),
				.pattern ()
		);
		sevenSegDisplay sevenSegDisplay_inst1 (
				.enable (~minOrSec && enableDisplay),
				.endot	(clk),
				.number (lhour),
				.dot	(),
				.pattern ()
		);
		sevenSegDisplay sevenSegDisplay_inst2 (
				.enable (enableDisplay),
				.endot	(1),
				.number (hminsec),
				.dot	(),
				.pattern ()
		);
		sevenSegDisplay sevenSegDisplay_inst3 (
				.enable (enableDisplay),
				.endot	(1),
				.number (lminsec),
				.dot	(),
				.pattern ()
		);		
		
endmodule
