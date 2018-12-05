onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/sec
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/button
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/sw
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/on
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/set
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/minOrSec
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/enableDisplay
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/sethms
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/upDown
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/ledr
add wave -noupdate /tbWholeClock/uiLedBehavior_inst/ledg
add wave -noupdate /tbWholeClock/clock_inst/oneSecClk
add wave -noupdate /tbWholeClock/clock_inst/on
add wave -noupdate /tbWholeClock/clock_inst/set
add wave -noupdate /tbWholeClock/clock_inst/sethms
add wave -noupdate /tbWholeClock/clock_inst/upDown
add wave -noupdate -radix unsigned /tbWholeClock/clock_inst/hour
add wave -noupdate -radix unsigned /tbWholeClock/clock_inst/min
add wave -noupdate -radix unsigned /tbWholeClock/clock_inst/sec
add wave -noupdate /tbWholeClock/timeToNumber_instance/minOrSec
add wave -noupdate -radix unsigned /tbWholeClock/timeToNumber_instance/hhour
add wave -noupdate -radix unsigned /tbWholeClock/timeToNumber_instance/lhour
add wave -noupdate -radix unsigned /tbWholeClock/timeToNumber_instance/hminsec
add wave -noupdate -radix unsigned /tbWholeClock/timeToNumber_instance/lminsec
add wave -noupdate -expand -group display0 /tbWholeClock/sevenSegDisplay_inst0/enable
add wave -noupdate -expand -group display0 /tbWholeClock/sevenSegDisplay_inst0/endot
add wave -noupdate -expand -group display0 -radix decimal /tbWholeClock/sevenSegDisplay_inst0/number
add wave -noupdate -expand -group display0 /tbWholeClock/sevenSegDisplay_inst0/dot
add wave -noupdate -expand -group display0 /tbWholeClock/sevenSegDisplay_inst0/pattern
add wave -noupdate -expand -group display1 /tbWholeClock/sevenSegDisplay_inst1/enable
add wave -noupdate -expand -group display1 /tbWholeClock/sevenSegDisplay_inst1/endot
add wave -noupdate -expand -group display1 -radix decimal /tbWholeClock/sevenSegDisplay_inst1/number
add wave -noupdate -expand -group display1 /tbWholeClock/sevenSegDisplay_inst1/dot
add wave -noupdate -expand -group display1 /tbWholeClock/sevenSegDisplay_inst1/pattern
add wave -noupdate -expand -group display2 /tbWholeClock/sevenSegDisplay_inst2/enable
add wave -noupdate -expand -group display2 /tbWholeClock/sevenSegDisplay_inst2/endot
add wave -noupdate -expand -group display2 -radix decimal /tbWholeClock/sevenSegDisplay_inst2/number
add wave -noupdate -expand -group display2 /tbWholeClock/sevenSegDisplay_inst2/dot
add wave -noupdate -expand -group display2 /tbWholeClock/sevenSegDisplay_inst2/pattern
add wave -noupdate -expand -group dispaly3 /tbWholeClock/sevenSegDisplay_inst3/enable
add wave -noupdate -expand -group dispaly3 /tbWholeClock/sevenSegDisplay_inst3/endot
add wave -noupdate -expand -group dispaly3 -radix decimal /tbWholeClock/sevenSegDisplay_inst3/number
add wave -noupdate -expand -group dispaly3 /tbWholeClock/sevenSegDisplay_inst3/dot
add wave -noupdate -expand -group dispaly3 /tbWholeClock/sevenSegDisplay_inst3/pattern
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2640905220 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 298
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {2640480080 ps} {2641209090 ps}
