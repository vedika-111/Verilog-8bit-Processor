`timescale 1ns / 1ps

module processor_tb;

reg clk;
reg reset;

// instantiate processor
processor uut(
    .clk(clk),
    .reset(reset)
);

// clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    #200 $finish;
end

endmodule