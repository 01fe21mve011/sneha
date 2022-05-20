`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:11:05 04/08/2022 
// Design Name: 
// Module Name:    MUX41_tb 
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
module MUX41_tb;

  // Inputs
  reg [3:0] in;
  reg [1:0] sel;

  //Outputs
   wire out; 

  // Instantiate the unit under test (uut)
   MUX41_D uut (
    .in(in),
    .sel(sel),
    .out(out),
  );

   initial begin
   
	in=1000;
   sel=00;
   #100;

   in=0100;
   sel=01;
   #100;

   in=0010;
   sel=10;
   #100;

   in=0001;
   sel=11;
   #100;

   in=0111; 
   sel=00;
   #100;

   in=1011;
   sel=01;
   #100;

   in=1101;
   sel=10;
   #100;

   in=1110;
   sel=11;
   #100;

end

endmodule

