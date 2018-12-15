`timescale 1ns / 1ps
`default_nettype none

module counter_modulo_tb;

localparam CLK_PERIOD_50M   = 20;

logic clk = 0;
logic reset;
  
logic enable;
  
logic [31:0] cnt;
logic        tick;

initial forever #(CLK_PERIOD_50M) clk = ~clk;

task wait_clk(int n = 1);
  repeat(n) @(posedge clk);
endtask

initial begin
  enable = 0;
  reset = 1;
  
  #100 reset = 0;
  
  wait_clk(10);
  enable = 1;
  
  wait_clk(100);
  enable = 0;
  
  wait_clk(4);
  enable = 1;
  
  wait_clk(5);
  enable = 0;

  wait_clk(4);
  enable = 1;
  
  $stop;
end

counter_modulo #(
  .N     (10)
) dut (
  .clk   (clk),
  .reset (reset),
  
  .enable(enable),
  
  .cnt   (cnt),
  .tick  (tick)
);

endmodule

`default_nettype wire