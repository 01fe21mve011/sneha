`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:58 03/28/2022 
// Design Name: 
// Module Name:    sd1011_mealy 
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
module sd1011_mealy(input  clk,
                   input reset,
                   input  din,
                   output reg  dout);


parameter  S0=2'b00,S1=2'b01, S2=2'b10,S3=2'b11; 

reg [2:0] current_state, next_state; // current state and next state
// sequential memory of the Moore FSM
always @(posedge clk, posedge reset)
begin
 if(reset==1) 
 current_state <= S0;// when reset=1, reset the state of the FSM to "Zero" State
 else
 current_state <= next_state; // otherwise, next state
end 

//  typedef enum logic [1:0] {S0, S1, S2, S3} state_t;
//  state_t state;

always @(current_state,din)
begin
 case(current_state) 
    
        S0: begin
          if(din) begin
          next_state <= S1;
            dout <=1'b0;
          end
          else
            dout <=1'b0;
        end
        S1: begin
          if(~din) begin
            next_state <= S2;
            dout <=1'b0;
          end
          else begin
            dout <=1'b0;
          end
        end
        S2: begin
          if(~din) begin
            next_state <= S0;
            dout <=1'b0;
          end
          else begin
           next_state <= S3;
            dout <=1'b0;
          end
        end
        S3: begin
          if(din) begin
           next_state <= S0;
            dout <=1'b1;
          end
          else begin
            next_state <= S2;
            dout <=1'b0;
          end
        end
      endcase
    end


endmodule
