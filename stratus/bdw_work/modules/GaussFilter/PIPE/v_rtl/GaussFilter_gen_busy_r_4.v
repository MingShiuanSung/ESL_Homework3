`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:28:26 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_gen_busy_r_4 (
	in1,
	in2,
	in3,
	in4,
	out1
	); /* architecture "behavioural" */ 
input  in1,
	in2,
	in3,
	in4;
output [2:0] out1;
wire  asc005,
	asc006,
	asc008,
	asc011,
	asc012,
	asc015;
wire [2:0] asc016;

assign asc006 = 
	(in1)
	|(in4);

assign asc005 = 
	(in2)
	&(asc006);

assign asc008 = 
	(asc005)
	|(in3);

assign asc012 = 
	(in4)
	&((~asc005));

assign asc011 = 
	(asc012)
	|(in3);

assign asc015 = 
	((~asc011));

assign asc016 = {asc008,asc011,asc015};

assign out1 = asc016;
endmodule

/* CADENCE  v7nyQw4= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

