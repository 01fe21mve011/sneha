`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:45 04/08/2022 
// Design Name: 
// Module Name:    MUX41_D 
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
module MUX41_D(in,sel,out);
input [3:0]in;
input [1:0]sel;
output out;
assign out= sel[1] ? (sel[0]? in[3]: in[2]) : (sel[0] ? in[1]: in[0]);
endmodule

