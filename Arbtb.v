`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:39:03 05/21/2022
// Design Name:   fcfs
// Module Name:   D:/fcfs11/Arbtb.v
// Project Name:  fcfs11
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fcfs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Arbtb;

	// Inputs
	reg Rqst0;
	reg Rqst1;
	reg Rqst2;
	reg Rqst3;
	reg clk;
	reg resetn;

	// Outputs
	wire Grant0;
	wire Grant1;
	wire Grant2;
	wire Grant3;

	// Instantiate the Unit Under Test (UUT)
	Arbiter uut (
		.Rqst0(Rqst0), 
		.Rqst1(Rqst1), 
		.Rqst2(Rqst2), 
		.Rqst3(Rqst3), 
		.clk(clk), 
		.resetn(resetn), 
		.Grant0(Grant0), 
		.Grant1(Grant1), 
		.Grant2(Grant2), 
		.Grant3(Grant3)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin #5 clk = ~clk; end
	
	always begin
	resetn = 0;
	#10
	resetn = 1;
	{Rqst3,Rqst2,Rqst1,Rqst0} = $random % 16;
	#1000;
	end
      
endmodule

