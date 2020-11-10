`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2020 12:54:21 PM
// Design Name: 
// Module Name: wrapper
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


module wrapper(
    input clk,
    input btnC,
    output [6:0] seg,
    output dp,
    output [3:0] an
    );
    wire [1:0] msbs;
    
    Ncount #(.N(20)) nc(
    .clk(clk),
    .rst(btnC),
    .msb(msbs)
    );
    
    sseg4 s(
    .data(16'b0111),
    .hex_dec(0),
    .sign(1),
    .digit_sel(msbs),
    .seg(seg),
    .dp(dp),
    .an(an)
    );
endmodule
