`timescale 1ns / 1ps
`default_nettype none

module falling_edge_detect_tb;

localparam CLK_PERIOD_50M   = 20;

logic clk = 0;
  
logic in;
logic pulse;

initial forever #(CLK_PERIOD_50M) clk = ~clk;

task wait_clk(int n = 1);
  repeat(n) @(posedge clk);
endtask

initial begin
  in = 0; wait_clk(4);
  
  repeat(10) begin
    in = ~in; 
    wait_clk(1 + $urandom % 10);
  end
  
  wait_clk(4);
  
  $stop;
end

falling_edge_detect 
  dut (
  .clk   (clk),
  .in    (in),
  .pulse (pulse)
);

endmodule

`default_nettype wire