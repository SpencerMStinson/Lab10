`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2020 12:29:48 PM
// Design Name: 
// Module Name: calc
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


module calc(
    input btnU,
    input btnD,
    input [11:0] sw,
    input clk,
    input btnC,
    output [6:0] seg,
    output dp,
    output [3:0] an,
    output [15:0] led
    );
    
    wire [15:0] ledout;
    wire [15:0] s1dout;
    wire ssign;
    wire [1:0] msbout;
    
  top_lab9 (
   .btnU(btnU),
   .btnD(btnD),
   .sw(sw),
   .clk(clk),
   .btnC(btnC),
   .led(ledout)
  );
  
  assign led = ledout;
  
   show2c s1 (
    .Din(ledout[15:8]),
    .Dout(s1dout),
    .sign(ssign)
   );
   
   Ncount #(.N(20)) N1 (
   .clk(clk),
   .rst(btnC),
   .msb(msbout) 
   );
   
   sseg4 s41 (
     .data(s1dout),
     .hex_dec(sw[15]),
     .sign(ssign),
     .digit_sel(msbout),
     .seg(seg),
     .dp(dp),
     .an(an)
    );
    
    
    
    
    
    
    
    
    
    
    
    
endmodule
