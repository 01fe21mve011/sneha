`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:32 04/29/2022 
// Design Name: 
// Module Name:    MUX21_S 
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
module MUX21_S(
    input A,
    input B,
    input S,
    output Y
    );
wire T1,T2,T3;
AND A1(T1,B,S);
NOT N1(T2,S);
AND A2(T3,A,T2);
OR O1(Y,T1,T3);
endmodule

