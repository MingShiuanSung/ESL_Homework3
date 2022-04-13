`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 14:51:44 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_Mul_5U_11_1 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [2:0] in1;
output [4:0] out1;
wire [4:0] asc001;

assign asc001 = 
	+(in1 * 5'B00011);

assign out1 = asc001;
endmodule

/* CADENCE  urj2Sg8= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


