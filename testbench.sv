`timescale 1ns/1ps

module elevator_fsm_tb;

reg clk;
reg reset;
reg [1:0] request_floor;
wire [1:0] current_floor;

// Instantiate DUT
elevator_fsm uut (
    .clk(clk),
    .reset(reset),
    .request_floor(request_floor),
    .current_floor(current_floor)
);

// Clock
always #5 clk = ~clk;

initial begin

    // Dump file for waveform
    $dumpfile("dump.vcd");
    $dumpvars;

    // Initialize
    clk = 0;
    reset = 1;
    request_floor = 2'b00;

    // Reset
    #10 reset = 0;

    // Go to floor 3
    #10 request_floor = 2'b11;

    // Go to floor 1
    #40 request_floor = 2'b01;

    // Go to floor 2
    #30 request_floor = 2'b10;

    // Return to floor 0
    #30 request_floor = 2'b00;

    #50 $finish;
end

endmodule