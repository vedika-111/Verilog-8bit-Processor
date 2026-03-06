`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2026 19:51:00
// Design Name: 
// Module Name: register
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


module register(
    input clk,
    input we,    //write enable
    input [2:0] read_addr1,
    input [2:0] read_addr2,
    input [2:0] write_addr,
    input [7:0] write_data,
    output [7:0] read_data1,
    output [7:0] read_data2
);

reg [7:0] regfile [7:0];

initial begin
    regfile[0] = 8'd5;
    regfile[1] = 8'd3;
    regfile[2] = 8'd7;
    regfile[3] = 8'd2;
    regfile[4] = 8'd1;
    regfile[5] = 8'd6;
    regfile[6] = 8'd9;
    regfile[7] = 8'd4;
end

assign read_data1 = regfile[read_addr1];
assign read_data2 = regfile[read_addr2];

always @(posedge clk) begin
    if (we)
        regfile[write_addr] <= write_data;
end

endmodule
