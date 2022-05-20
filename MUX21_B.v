`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:59:18 04/29/2022 
// Design Name: 
// Module Name:    MUX21_B 
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
module MUX21_B(
    input A,
    input B,
    input S,
    output  reg Y
    );
always@(A,B,S)
begin
 Y=A&(~S)|B&S;
end

endmodule


