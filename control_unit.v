`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2026 18:40:43
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input [2:0] opcode,
    output reg [2:0] alu_sel,
    output reg reg_write
);

always @(*) begin

case(opcode)

3'b000: begin
alu_sel = 3'b000;   // ADD
reg_write = 1;
end

3'b001: begin
alu_sel = 3'b001;   // SUB
reg_write = 1;
end

3'b010: begin
alu_sel = 3'b010;   // AND
reg_write = 1;
end

3'b011: begin
alu_sel = 3'b011;   // OR
reg_write = 1;
end

3'b100: begin
alu_sel = 3'b100;   // XOR
reg_write = 1;
end

3'b101: begin
alu_sel = 3'b101;   // NOT
reg_write = 1;
end

3'b110: begin
alu_sel = 3'b110;   // SHIFT LEFT
reg_write = 1;
end

3'b111: begin
alu_sel = 3'b111;   // SHIFT RIGHT
reg_write = 1;
end

default: begin
alu_sel = 3'b000;
reg_write = 0;
end

endcase

end

endmodule