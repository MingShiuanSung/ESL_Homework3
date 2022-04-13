`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 21:35:12 CST (+0800), Tuesday 12 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_N_Mux_4_3_0_4 (
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input [1:0] ctrl1;
output [3:0] out1;
wire [3:0] asc001;

reg [3:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (ctrl1) begin
	casez (ctrl1)
		2'B11 : asc001_tmp_0 = 4'B0001 ;
		2'B01 : asc001_tmp_0 = 4'B0100 ;
		default : asc001_tmp_0 = 4'B0010 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  uLXzSA0= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/


