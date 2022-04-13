`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:35:26 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_NotEQ_2Ux1U_1U_1 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [1:0] in2;
input  in1;
output  out1;
wire  asc001,
	asc002;

assign asc002 = (in1==in2);

assign asc001 = 
	((~asc002));

assign out1 = asc001;
endmodule

/* CADENCE  ubP0QwE= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


