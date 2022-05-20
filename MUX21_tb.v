`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:01 04/29/2022 
// Design Name: 
// Module Name:    MUX21_tb 
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
module MUX21_tb;

	// Inputs
	reg A;
	reg B;
	reg S;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	MUX21 uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.Y(Y)
	);

	initial begin
		
		A = 0;
		B = 0;
		S = 0;
		#100;
        
		A = 0;
		B = 1;
		S = 0;
		#100;
		
		A = 1;
		B = 0;
		S = 0;
		#100;
		
		A = 1;
		B = 1;
		S = 0;
		#100;
		
		A = 0;
		B = 0;
		S = 1;
		#100;
        
		A = 0;
		B = 1;
		S = 1;
		#100;
		
		A = 1;
		B = 0;
		S = 1;
		#100;
		
		A = 1;
		B = 1;
		S = 1;
		#100;

	end
      
endmodule


