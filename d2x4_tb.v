`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:17:05 04/06/2022 
// Design Name: 
// Module Name:    d2x4_tb 
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
module d2x4_tb;
    
	 // inputs
	 reg A;
	 reg B;
	 
	 // outputs
	 wire [3:0] D;
	 
	 // instantiate the unit under test (UUT)
    d2x4 uut (
	      .A(A),
			.B(B),
			.D(D)
	);
	
	initial begin
	   A = 0;
		B = 0;
		#10;
		
		A = 0;
		B = 1;
		#10;
		
		A = 1;
		B = 0;
		#10;
		
		A = 1;
		B = 1;
		#10;
		
		
		end
		
endmodule


