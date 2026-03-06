`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2026 10:04:54
// Design Name: 
// Module Name: processor
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



module processor(
input clk,
input reset
);

// wires
wire [7:0] pc_out;
wire [7:0] instruction;

wire [2:0] opcode;
wire [2:0] rs1;
wire [2:0] rs2;

wire [2:0] alu_sel;
wire reg_write;

wire [7:0] read_data1;
wire [7:0] read_data2;
wire [7:0] alu_result;
wire carry;
wire zero;

// instruction decode
assign opcode = instruction[7:5];
assign rs1 = instruction[4:2];
assign rs2 = {1'b0, instruction[1:0]};   // fixed

// PROGRAM COUNTER
pc pc1(
.clk(clk),
.reset(reset),
.pc_out(pc_out)
);

// INSTRUCTION MEMORY
insrt_memo im1(
.address(pc_out[3:0]),
.instruction(instruction)
);

// CONTROL UNIT
control_unit cu1(
.opcode(opcode),
.alu_sel(alu_sel),
.reg_write(reg_write)
);

// REGISTER FILE
register rf1(
.clk(clk),
.we(reg_write),
.read_addr1(rs1),
.read_addr2(rs2),
.write_addr(rs1),
.write_data(alu_result),
.read_data1(read_data1),
.read_data2(read_data2)
);

// ALU
alu alu1(
.A(read_data1),
.B(read_data2),
.Sel(alu_sel),
.Result(alu_result),
.Carry(carry),
.zero(zero)
);

endmodule


