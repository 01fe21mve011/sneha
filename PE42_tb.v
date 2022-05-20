`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:18:29 04/29/2022 
// Design Name: 
// Module Name:    PE42_tb 
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

module PE42_tb;
           // Inputs
           reg Y0;
           reg Y1;
           reg Y2;
           reg y3;

    // Outputs
wire A0;
wire A1;

// Instantiate the unit under test (uut)
PE42_D uut (
      .A0(A0),
      .A1(A1),
      .Y0(Y0),
      .Y1(Y1),
      .Y2(Y2),
     .Y3(Y3),
);

initial  begin

Y0=1;
Y1=0;
Y2=0;
Y3=0;
#100;


Y0=0;
Y1=1;
Y2=0;
Y3=0;
#100;


Y0=0;
Y1=0;
Y2=1;
Y3=0;
#100;


Y0=0;
Y1=0;
Y2=0;
Y3=1;
#100;



Y0=0;
Y1=0;
Y2=0;
Y3=0;	
#100;

end
endmodule



