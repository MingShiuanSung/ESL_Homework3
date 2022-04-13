`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 14:51:47 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Add2u2Mul2i3Add2u2u2_1 (
	in3,
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [1:0] in3,
	in2,
	in1;
output [4:0] out1;
wire [4:0] asc001;
wire [2:0] asc002;

assign asc002 = 
	+(in3)
	+(in2);

wire [4:0] asc001_tmp_0;
assign asc001_tmp_0 = 
	+(asc002 * 5'B00011);
assign asc001 = asc001_tmp_0
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  uLbzSw8= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


