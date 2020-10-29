`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 11:49:50 AM
// Design Name: 
// Module Name: Ncount
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Ncount #(parameter N = 4)(
    input clk,
    input rst,
    output [1:0] msb
    );
wire [N-1:0] Qnext ;
wire [N-1:0] Qreg  ;


    register #(.N(N)) Qr( 
    .clk(clk),
    .rst(rst),
    .en(1),
    .D(Qnext),
    .Q(Qreg)
    );
    
  assign Qnext = Qreg +1 ; 

  assign msb =  Qreg [N-1:N-2];  

endmodule
