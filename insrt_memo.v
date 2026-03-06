`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 18:29:53
// Design Name: 
// Module Name: insrt_memo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module insrt_memo(
    input [3:0] address,
    output [7:0] instruction
);

reg [7:0] memory [15:0];   // 16 instructions

initial begin
    memory[0] = 8'b00001100;
    memory[1] = 8'b00101100;
    memory[2] = 8'b01001100;
    memory[3] = 8'b01101100;

    memory[4] = 8'b10001101;
    memory[5] = 8'b10101111;
    memory[6] = 8'b11001100;
    memory[7] = 8'b11101100;
end

assign instruction = memory[address];

endmodule