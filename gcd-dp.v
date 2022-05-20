`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:52 03/21/2022 
// Design Name: 
// Module Name:    gcd-dp 
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
module gcd_dp(gt,lt,eq,ldA,ldB,sel1,sel2,sel_in,data_in,clk);
input ldA,ldB,sel1,sel2,sel_in,clk;
input [15:0] data_in;
output gt,eq,lt;
wire [15:0] Aout,Bout,X,Y,bus,subout;
PIPO A (Aout,bus,ldA,clk);
PIPO B (Bout,bus,ldb,clk);
MUX MUX_in1 (X,Aout,Bout,sel1);
MUX MUX_in2 (Y,Aout,Bout,sel2);
MUX MUX_load (bus,subout,data_in,sel_in); 
SUB SB (subout,X,Y);
COMPARE COMP(lt,gt,eq,Aout,Bout); 
endmodule
  