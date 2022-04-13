`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:25:00 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Lti255s29_1 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [28:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((34'B1000000000000000000000000000000000 ^ 34'B0000000000000000000000000011111111)>(34'B1000000000000000000000000000000000
    ^ {{5{in1[28]}}, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  uLHzQws= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

