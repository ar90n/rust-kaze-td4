`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:18 03/11/2021 
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
module Top(
    input reset_n,
    input clk,
    output  [4:0] out
    );  
	 
	 wire clk_div;
	 wire rst;
	 wire [3:0] in;
	 wire [3:0] led;
	 
	 assign in = 0;
	 assign rst = !reset_n;
	 assign out[4] = reset_n;
	 Divider divider(
			.clk(clk),
			.clk_div(clk_div));
	 
	 TD4 td4(
        .reset_n(rst),
        .clk(clk_div),
        .in_(in),
        .out(led));
	assign out[3:0] = led;
endmodule
