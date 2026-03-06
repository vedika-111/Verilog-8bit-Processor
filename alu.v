`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2026 21:44:49
// Design Name: 
// Module Name: alu
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


module alu(
    input [7:0] A,
    input [7:0] B,
    input [2:0] Sel,
    output reg [7:0] Result,
    output reg Carry,
    output reg zero
);

always @(*) begin
        Carry=0;
    case(Sel)
        3'b000: {Carry, Result} = A + B;       // Addition
        3'b001: {Carry, Result} = A - B;       // Subtraction
        3'b010: Result = A & B;                // AND
        3'b011: Result = A | B;                // OR
        3'b100: Result = A ^ B;                // XOR
        3'b101: Result = ~A;                   // NOT
        3'b110: Result = A << 1;               // Left Shift
        3'b111: Result = A >> 1;               // Right Shift
        default: Result = 8'b00000000;
        
        
     
    endcase
    
    zero =(Result==8'b00000000);
    
    
end

endmodule
