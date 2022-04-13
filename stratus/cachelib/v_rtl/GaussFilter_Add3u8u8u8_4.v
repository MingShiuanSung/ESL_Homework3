`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 14:51:16 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Add3u8u8u8_4 (
	in3,
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [7:0] in3,
	in2,
	in1;
output [9:0] out1;
wire [9:0] asc001;

wire [9:0] asc001_tmp_0;
assign asc001_tmp_0 = 
	+(in3)
	+(in2);
assign asc001 = asc001_tmp_0
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  ubj0SQ0= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


