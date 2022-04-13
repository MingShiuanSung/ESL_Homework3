`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:24:58 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Add2s28And2u1u1_4 (
	in3,
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input  in3,
	in2;
input [27:0] in1;
output [28:0] out1;
wire [28:0] asc001;
wire  asc002;

assign asc002 = 
	(in3)
	&(in2);

assign asc001 = 
	+(asc002)
	+({in1[27], in1});

assign out1 = asc001;
endmodule

/* CADENCE  uLDxQgk= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


