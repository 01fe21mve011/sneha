`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:52 04/18/2022 
// Design Name: 
// Module Name:    top 
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
module TOP(input CLK,Enable,
input [255:0]Ain,Bin,
input [7:0]ALU_SEL,
output [255:0]ALU_OUT,
output CARRYOUT 
    );
	 wire EN,GCLK;
DFF D_FF(.clk(CLK),.enable(Enable),.Q(EN));
LOGIC Logic_Gate(.a(CLK),.b(EN),.c(GCLK));
ALU ALU_UNIT(.clk(GCLK),.A(Ain),.B(Bin),.ALU_Sel(ALU_SEL),.ALU_Out(ALU_OUT),.CarryOut(CARRYOUT));

endmodule