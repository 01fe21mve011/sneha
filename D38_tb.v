`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:45 04/11/2022 
// Design Name: 
// Module Name:    D38_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module D38_tb(
Data_in,
Data_out
    );
input [2:0] Data_in;
output [7:0] Data_out;
reg [7:0] Data_out;
always @(Data_in)
    case (Data_in)   
        3'b000 : Data_out = 8'b00000001;
        3'b001 : Data_out = 8'b00000010;
        3'b010 : Data_out = 8'b00000100;
        3'b011 : Data_out = 8'b00001000;
        3'b100 : Data_out = 8'b00010000;
        3'b101 : Data_out = 8'b00100000;
        3'b110 : Data_out = 8'b01000000;
        3'b111 : Data_out = 8'b10000000;
        
        default : Data_out = 8'b00000000; 
    endcase
endmodule

