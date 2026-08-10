`timescale 1ns/1ps

module synchronous_counter_tb;

reg clk;
reg reset;
wire [3:0] count;

synchronous_counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #100;
    $finish;
end

initial begin
    $monitor("Time = %0t | Reset = %b | Count = %b (%d)",
             $time, reset, count, count);
end

endmodule