`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 07:20:27 CST (+0800), Wednesday 13 April 2022
    Configured on: ws37
    Configured by: u107061139 (u107061139)
    
    Created by: Stratus DpOpt 2019.1.01 
*******************************************************************************/

module GaussFilter_N_Mux_4_6_21_1 (
	ctrl1,
	out1
	); /* architecture "behavioural" */ 
input [3:0] ctrl1;
output [3:0] out1;
wire [3:0] asc001;

reg [3:0] asc001_tmp_0;
assign asc001 = asc001_tmp_0;
always @ (ctrl1) begin
	case (ctrl1)
		4'B0111 : asc001_tmp_0 = 4'B0010 ;
		4'B0101 : asc001_tmp_0 = 4'B0010 ;
		4'B0100 : asc001_tmp_0 = 4'B0100 ;
		4'B0011 : asc001_tmp_0 = 4'B0010 ;
		4'B0001 : asc001_tmp_0 = 4'B0010 ;
		default : asc001_tmp_0 = 4'B0001 ;
	endcase
end

assign out1 = asc001;
endmodule

/* CADENCE  v7nwTQ8= : u9/ySgnWtBlWxVPRXgAZ4Og= ** DO NOT EDIT THIS LINE ******/

