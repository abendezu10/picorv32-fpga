`timescale 1ns / 1ps

module top_tb;

    reg clk;        // Declare clk as reg for driving in the testbench
    reg resetn;     // Declare resetn as reg for driving in the testbench
    wire [7:0] led; // led is the output of the DUT, so it is a wire

    // Instantiate the DUT (Device Under Test)
    top dut (
        .clk(clk),         // Connect the clk reg to the DUT input
        .resetn(resetn),   // Connect the resetn reg to the DUT input
        .led(led)          // Connect the DUT output to led wire
    );

    // Generate a clock signal
    initial begin
        clk = 0;           // Initialize clk to 0
        forever #5 clk = ~clk; // Toggle clk every 5 ns (100 MHz clock)
    end
    
    // Drive the reset signal
    initial begin
        resetn = 0;
        #100
        resetn = 1;
        #1000;             // Run simulation for 1000 ns
        $finish;           // End simulation
    end

endmodule

