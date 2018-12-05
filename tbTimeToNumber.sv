`timescale 1ns/10ps
module tbTimeToNumber();
        reg [5:0] data;
		reg minOrSec;
		
        initial begin
                data = 0;
			    forever #10 data <= data%60 + 1;
        end
		
		initial begin
				minOrSec = 0;
            	forever #5 minOrSec <= ~minOrSec;
		end


        timeToNumber timeToNumber_instance(
			.hour (data),
			.min (data),
			.sec (data),
			.minOrSec (minOrSec)
        );
		
endmodule
