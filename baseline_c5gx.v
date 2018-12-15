//--------------------------------------------------------------------------//
// Title:        baseline_pinout.v                                          //
// Rev:          Rev 1.0                                                    //
// Last Revised: 10/13/2015 by Geraldine Baniqued                           //
//--------------------------------------------------------------------------//
// Description: Baseline design file contains Cyclone V GX Starter Kit    	//
//              Board pins and I/O Standards.                               //
//--------------------------------------------------------------------------//
//Copyright 2012 Altera Corporation. All rights reserved.  Altera products
//are protected under numerous U.S. and foreign patents, maskwork rights,
//copyrights and other intellectual property laws.
//                 
//This reference design file, and your use thereof, is subject to and
//governed by the terms and conditions of the applicable Altera Reference
//Design License Agreement.  By using this reference design file, you
//indicate your acceptance of such terms and conditions between you and
//Altera Corporation.  In the event that you do not agree with such terms and
//conditions, you may not use the reference design file. Please promptly                         
//destroy any copies you have made.
//
//This reference design file being provided on an "as-is" basis and as an
//accommodation and therefore all warranties, representations or guarantees
//of any kind (whether express, implied or statutory) including, without
//limitation, warranties of merchantability, non-infringement, or fitness for
//a particular purpose, are specifically disclaimed.  By making this
//reference design file available, Altera expressly does not recommend,
//suggest or require that this reference design file be used in combination 
//with any other product not provided by Altera
//----------------------------------------------------------------------------


//`define ENABLE_DDR2LP
//`define ENABLE_HSMC_XCVR
//`define ENABLE_SMA
//`define ENABLE_REFCLK
//`define ENABLE_GPIO

module baseline_c5gx(

      ///////// ADC ///////// 1.2 V ///////
      output             ADC_CONVST,
      output             ADC_SCK,
      output             ADC_SDI,
      input              ADC_SDO,

      ///////// AUD ///////// 2.5 V ///////
      input              AUD_ADCDAT,
      inout              AUD_ADCLRCK,
      inout              AUD_BCLK,
      output             AUD_DACDAT,
      inout              AUD_DACLRCK,
      output             AUD_XCK,

      ///////// CLOCK /////////
      input              CLOCK_125_p, ///LVDS
      input              CLOCK_50_B5B, ///3.3-V LVTTL
      input              CLOCK_50_B6A,
      input              CLOCK_50_B7A, ///2.5 V
      input              CLOCK_50_B8A,

      ///////// CPU /////////
      input              CPU_RESET_n, ///3.3V LVTTL

`ifdef ENABLE_DDR2LP
      ///////// DDR2LP ///////// 1.2-V HSUL ///////
      output      [9:0]  DDR2LP_CA,
      output      [1:0]  DDR2LP_CKE,
      output             DDR2LP_CK_n, ///DIFFERENTIAL 1.2-V HSUL
      output             DDR2LP_CK_p, ///DIFFERENTIAL 1.2-V HSUL
      output      [1:0]  DDR2LP_CS_n,
      output      [3:0]  DDR2LP_DM,
      inout       [31:0] DDR2LP_DQ,
      inout       [3:0]  DDR2LP_DQS_n, ///DIFFERENTIAL 1.2-V HSUL
      inout       [3:0]  DDR2LP_DQS_p, ///DIFFERENTIAL 1.2-V HSUL
      input              DDR2LP_OCT_RZQ, ///1.2 V
`endif /*ENABLE_DDR2LP*/

`ifdef ENABLE_GPIO
      ///////// GPIO ///////// 3.3-V LVTTL ///////
      inout       [35:0] GPIO,
`else	
      ///////// HEX2 ///////// 1.2 V ///////
      output      [6:0]  HEX2,

      ///////// HEX3 ///////// 1.2 V ///////
      output      [6:0]  HEX3,		
		
		
`endif /*ENABLE_GPIO*/

      ///////// HDMI /////////
      output             HDMI_TX_CLK,
      output      [23:0] HDMI_TX_D,
      output             HDMI_TX_DE,
      output             HDMI_TX_HS,
      input              HDMI_TX_INT,
      output             HDMI_TX_VS,

      ///////// HEX0 /////////
      output      [6:0]  HEX0,

      ///////// HEX1 /////////
      output      [6:0]  HEX1,


      ///////// HSMC ///////// 2.5 V ///////
      input              HSMC_CLKIN0,
      input       [2:1]  HSMC_CLKIN_n,
      input       [2:1]  HSMC_CLKIN_p,
      output             HSMC_CLKOUT0,
      output      [2:1]  HSMC_CLKOUT_n,
      output      [2:1]  HSMC_CLKOUT_p,
      inout       [3:0]  HSMC_D,
`ifdef ENABLE_HSMC_XCVR		
      input       [3:0]  HSMC_GXB_RX_p, /// 1.5-V PCML
      output      [3:0]  HSMC_GXB_TX_p, /// 1.5-V PCML
`endif /*ENABLE_HSMC_XCVR*/		
      inout       [16:0] HSMC_RX_n,
      inout       [16:0] HSMC_RX_p,
      inout       [16:0] HSMC_TX_n,
      inout       [16:0] HSMC_TX_p,


      ///////// I2C ///////// 2.5 V ///////
      output             I2C_SCL,
      inout              I2C_SDA,

      ///////// KEY ///////// 1.2 V ///////
      input       [3:0]  KEY,

      ///////// LEDG ///////// 2.5 V ///////
      output      [7:0]  LEDG,

      ///////// LEDR ///////// 2.5 V ///////
      output      [9:0]  LEDR,

`ifdef ENABLE_REFCLK
      ///////// REFCLK ///////// 1.5-V PCML ///////
      input              REFCLK_p0,
      input              REFCLK_p1,
`endif /*ENABLE_REFCLK*/

      ///////// SD ///////// 3.3-V LVTTL ///////
      output             SD_CLK,
      inout              SD_CMD,
      inout       [3:0]  SD_DAT,

`ifdef ENABLE_SMA
      ///////// SMA ///////// 1.5-V PCML ///////
      input              SMA_GXB_RX_p,
      output             SMA_GXB_TX_p,
`endif /*ENABLE_SMA*/

      ///////// SRAM ///////// 3.3-V LVTTL ///////
      output      [17:0] SRAM_A,
      output             SRAM_CE_n,
      inout       [15:0] SRAM_D,
      output             SRAM_LB_n,
      output             SRAM_OE_n,
      output             SRAM_UB_n,
      output             SRAM_WE_n,

      ///////// SW ///////// 1.2 V ///////
      input       [9:0]  SW,

      ///////// UART ///////// 2.5 V ///////
      input              UART_RX,
      output             UART_TX


);
      wire clk; 
		wire on; //in
		wire enableDisplay; //in
		wire set; //in
		wire minOrSec; //in
		wire toggleEnable;
		wire pulse_from_key3;
		wire tick10ms;
		wire tick0;
		wire tick1;
		wire tick2;
		wire tick3;
		wire [3:0] stopwatch0; //redy for disp
		wire [3:0] stopwatch1; //redy for disp
		wire [3:0] stopwatch2; //redy for disp
		wire [3:0] stopwatch3; //redy for disp
		wire [1:0] sethms;
		wire [1:0] upDown;
		wire [5:0] sec;
		wire [5:0] min;
		wire [4:0] hour;
		wire [3:0] hhour;
		wire [3:0] lhour;
		wire [3:0] hminsec;
		wire [3:0] lminsec;
		
		wire [1:0] sourceSelect;
		wire [3:0] toHex;
		wire [3:0] toHex3; //redy for disp
		wire [3:0] toHex2; //redy for disp
		wire [3:0] toHex1; //redy for disp
		wire [3:0] toHex0; //redy for disp

			
		falling_edge_detect falling_edge_detect_inst3(
				.clk (CLOCK_50_B7A),
				.in (KEY[3]),
				.pulse (pulse_from_key3)
		);
		
		toggle toggle_inst(
				.clk (CLOCK_50_B7A),
				.in (pulse_from_key3),
				.reset (!CPU_RESET_n),
				.enable (toggleEnable)				
		);
		
		counter_modulo #(.N(500000)) counter_modulo10ms(
				 .clk (CLOCK_50_B7A),
				 .reset (!CPU_RESET_n),
				 .enable (toggleEnable),
				 .cnt (),
             .tick (tick10ms)
		);
		
		counter_modulo counter_modulo0(
				 .clk (tick10ms),
				 .reset (!CPU_RESET_n),
				 .enable (toggleEnable),
				 .cnt (stopwatch0),
             .tick (tick0)
		);
		
		counter_modulo counter_modulo1(
				 .clk (tick0),
				 .reset (!CPU_RESET_n),
				 .enable (toggleEnable),
				 .cnt (stopwatch1),
             .tick (tick1)
		);
		
		counter_modulo counter_modulo2(
				 .clk (tick1),
				 .reset (!CPU_RESET_n),
				 .enable (toggleEnable),
				 .cnt (stopwatch2),
             .tick (tick2)
		);
		
		counter_modulo counter_modulo3(
				 .clk (tick2),
				 .reset (!CPU_RESET_n),
				 .enable (toggleEnable),
				 .cnt (stopwatch3),
             .tick (tick3)
		);
		
		
		
		clockDivider clockDivider_inst(
				.clk (CLOCK_50_B7A),
				.second (clk)
		);

		uiLedBehavior uiLedBehavior_instance (
				.sec (sec), //clock
				.button (KEY),
				.sw (SW),
				
				.on (on), //clock
				.enableDisplay (enableDisplay),
				.set (set), //clock
				.minOrSec (minOrSec), //timeToNumber
				.sourceSelect (sourceSelect), //source_selector
				.sethms (sethms), //clock
				.upDown (upDown), //clock
				.ledr (LEDR),
				.ledg (LEDG)
		);
      
		clock clock_inst (
            .oneSecClk (clk),
				.on (on),
            .set (set),
				.sethms (sethms),
				.upDown (upDown),
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
		  
		  source_selector source_selector_insance(
				.clk (CLOCK_50_B7A),
				.enable (enableDisplay),
		  
				.stopwatchsech (stopwatch3),
				.stopwatchsecl (stopwatch2),
				.stopwatchmsech (stopwatch1),
				.stopwatchmsecl (stopwatch0),

				.hourh (hhour),
				.hourl (lhour),
				.minh (hminsec), //torepair
				.minl (lminsec),

				.sech (hminsec),
				.secl (lminsec),
	
				.select (sourceSelect),

				.hex (toHex),
				.hex3 (toHex3),	
				.hex2 (toHex2),
				.hex1 (toHex1),
				.hex0 (toHex0)
		  );
		
		sevenSegDisplay sevenSegDisplay_inst0 (
				.enable (toHex[3]),
				.number (toHex3),
				.pattern (HEX3)
		);
		sevenSegDisplay sevenSegDisplay_inst1 (
				.enable (toHex[2]),
				.number (toHex2),
				.pattern (HEX2)
		);
		sevenSegDisplay sevenSegDisplay_inst2 (
				.enable (toHex[1]),
				.number (toHex1),
				.pattern (HEX1)
		);
		sevenSegDisplay sevenSegDisplay_inst3 (
				.enable (toHex[0]),
				.number (toHex0),
				.pattern (HEX0)
		);

		

endmodule
