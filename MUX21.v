`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:47 04/29/2022 
// Design Name: 
// Module Name:    MUX21 
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
module MUX21(
    input A,
    input B,
    input S,
    output Y
    );
assign Y=A&(~S)|B&S;

endmodule
