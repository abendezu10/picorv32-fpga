module clk_test (
    input clk,
    output reg leds
);
    reg [23:0] counter;

    always @(posedge clk) begin
        counter <= counter + 1;
        leds <= counter[23];  // Toggle LED every ~0.5 seconds
    end
endmodule
