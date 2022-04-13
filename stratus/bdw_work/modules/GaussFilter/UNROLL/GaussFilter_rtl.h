// Generated by stratus_hls 19.12-s100  (91710.131054)
// Tue Apr 12 21:44:20 2022
// from ../GaussFilter.cpp
#ifndef CYNTH_PART_GaussFilter_GaussFilter_rtl_h
#define CYNTH_PART_GaussFilter_GaussFilter_rtl_h

#include "systemc.h"
/* Include declarations of instantiated parts. */


/* Declaration of the synthesized module. */
struct GaussFilter : public sc_module {
  sc_in<bool > i_clk;
  sc_in<bool > i_rst;
  sc_out<bool > i_rgb_busy;
  sc_in<bool > i_rgb_vld;
  sc_in<sc_uint<24> > i_rgb_data;
  sc_in<bool > o_rgb_busy;
  sc_out<bool > o_rgb_vld;
  sc_out<sc_uint<24> > o_rgb_data;
  GaussFilter( sc_module_name name );
  SC_HAS_PROCESS(GaussFilter);
  sc_signal<bool > o_rgb_m_req_m_prev_trig_req;
  sc_signal<sc_uint<1> > GaussFilter_Xor_1Ux1U_1U_1_1_out1;
  sc_signal<bool > o_rgb_m_unacked_req;
  sc_signal<sc_uint<1> > GaussFilter_Or_1Ux1U_1U_4_2_out1;
  sc_signal<sc_uint<1> > GaussFilter_N_Muxb_1_2_3_4_4_out1;
  sc_signal<bool > i_rgb_m_unvalidated_req;
  sc_signal<sc_uint<1> > 
  GaussFilter_gen_busy_r_4_50_gen_busy_i_rgb_m_data_is_invalid_next;
  sc_signal<sc_uint<1> > GaussFilter_gen_busy_r_4_50_gdiv;
  sc_signal<sc_uint<1> > GaussFilter_gen_busy_r_4_50_gnew_req;
  sc_signal<sc_uint<4> > global_state_next;
  sc_signal<sc_uint<1> > GaussFilter_LessThan_29Sx9S_1U_4_35_out1;
  sc_signal<sc_uint<29> > GaussFilter_N_Mux_29_2_1_4_34_out1;
  sc_signal<sc_uint<1> > GaussFilter_N_Mux_29_2_1_4_34_ctrl1;
  sc_signal<sc_int<29> > GaussFilter_Add_28Sx1U_29S_4_33_out1;
  sc_signal<sc_int<28> > GaussFilter_Add_28Sx1U_29S_4_33_in2;
  sc_signal<sc_uint<1> > GaussFilter_And_1Ux1U_1U_4_31_out1;
  sc_signal<sc_uint<1> > GaussFilter_And_1Ux1U_1U_4_31_in1;
  sc_signal<sc_uint<2> > gs_ctrl8;
  sc_signal<sc_int<12> > GaussFilter_Add_32Sx12S_32S_4_12_in1;
  sc_signal<sc_uint<1> > gs_ctrl7;
  sc_signal<sc_int<32> > GaussFilter_Add_32Sx12S_32S_4_12_in2;
  sc_signal<sc_uint<2> > gs_ctrl6;
  sc_signal<sc_int<12> > GaussFilter_Mul_8Ux4S_12S_4_11_out1;
  sc_signal<sc_int<4> > GaussFilter_Mul_8Ux4S_12S_4_11_in1;
  sc_signal<sc_uint<2> > gs_ctrl5;
  sc_signal<sc_uint<8> > GaussFilter_Mul_8Ux4S_12S_4_11_in2;
  sc_signal<sc_uint<3> > gs_ctrl4;
  sc_signal<sc_uint<2> > GaussFilter_N_Mux_4_3_0_4_6_ctrl1;
  sc_signal<sc_uint<1> > gs_ctrl0;
  sc_signal<sc_uint<1> > GaussFilter_OrReduction_4U_1U_4_38_out1;
  sc_signal<sc_uint<1> > GaussFilter_OrReduction_4U_1U_4_32_out1;
  sc_signal<sc_uint<1> > GaussFilter_OrReduction_4U_1U_4_30_out1;
  sc_signal<sc_uint<1> > GaussFilter_NotEQ_2Ux1U_1U_4_7_out1;
  sc_signal<sc_uint<24> > s_reg_51;
  sc_signal<sc_uint<1> > s_reg_52;
  sc_signal<sc_uint<1> > GaussFilter_Not_1U_1U_4_10_out1;
  sc_signal<sc_uint<2> > s_reg_50_slice;
  sc_signal<sc_uint<1> > s_reg_49;
  sc_signal<sc_uint<2> > GaussFilter_Add_2Ux1U_2U_4_9_out1;
  sc_signal<sc_uint<2> > s_reg_48;
  sc_signal<sc_uint<1> > GaussFilter_Equal_2Ux1U_1U_4_8_out1;
  sc_signal<sc_uint<1> > s_reg_47;
  sc_signal<sc_uint<3> > GaussFilter_N_Mux_4_3_0_4_6_out1_slice;
  sc_signal<sc_uint<32> > s_reg_45;
  sc_signal<sc_uint<32> > s_reg_44;
  sc_signal<sc_int<32> > GaussFilter_Add_32Sx12S_32S_4_12_out1;
  sc_signal<sc_uint<32> > s_reg_43;
  sc_signal<sc_uint<3> > GaussFilter_gen_busy_r_4_50_out1;
  sc_signal<sc_uint<1> > GaussFilter_And_1Ux1U_1U_4_48_out1;
  sc_signal<sc_uint<1> > GaussFilter_Not_1U_1U_1_3_out1;
  sc_signal<bool > o_rgb_m_req_m_trig_req;
  sc_signal<sc_uint<1> > GaussFilter_LessThan_2Ux2U_1U_4_27_out1;
  sc_signal<bool > i_rgb_m_busy_req_0;
  sc_signal<sc_uint<8> > GaussFilter_N_Mux_8_2_2_4_36_out1;
  sc_signal<sc_uint<8> > s_reg_53;
  sc_signal<sc_uint<8> > s_reg_46;
  sc_signal<sc_uint<4> > global_state;
  sc_signal<sc_uint<1> > stall0;
  void drive_o_rgb_data();
  void drive_i_rgb_m_busy_req_0();
  void drive_o_rgb_m_req_m_trig_req();
  void drive_stall0();
  void drive_s_reg_43();
  void drive_s_reg_44();
  void drive_s_reg_45();
  void drive_s_reg_46();
  void drive_s_reg_47();
  void drive_s_reg_48();
  void drive_s_reg_49();
  void drive_s_reg_50_slice();
  void drive_s_reg_51();
  void drive_s_reg_52();
  void drive_s_reg_53();
  void drive_GaussFilter_N_Mux_4_3_0_4_6_ctrl1();
  void GaussFilter_N_Mux_4_3_0_4_6();
  void GaussFilter_NotEQ_2Ux1U_1U_4_7();
  void GaussFilter_Equal_2Ux1U_1U_4_8();
  void GaussFilter_Add_2Ux1U_2U_4_9();
  void GaussFilter_Not_1U_1U_4_10();
  void drive_GaussFilter_Mul_8Ux4S_12S_4_11_in2();
  void drive_GaussFilter_Mul_8Ux4S_12S_4_11_in1();
  void GaussFilter_Mul_8Ux4S_12S_4_11();
  void drive_GaussFilter_Add_32Sx12S_32S_4_12_in2();
  void drive_GaussFilter_Add_32Sx12S_32S_4_12_in1();
  void GaussFilter_Add_32Sx12S_32S_4_12();
  void GaussFilter_LessThan_2Ux2U_1U_4_27();
  void GaussFilter_OrReduction_4U_1U_4_30();
  void drive_GaussFilter_And_1Ux1U_1U_4_31_in1();
  void GaussFilter_And_1Ux1U_1U_4_31();
  void GaussFilter_OrReduction_4U_1U_4_32();
  void drive_GaussFilter_Add_28Sx1U_29S_4_33_in2();
  void GaussFilter_Add_28Sx1U_29S_4_33();
  void drive_GaussFilter_N_Mux_29_2_1_4_34_ctrl1();
  void GaussFilter_N_Mux_29_2_1_4_34();
  void GaussFilter_LessThan_29Sx9S_1U_4_35();
  void GaussFilter_N_Mux_8_2_2_4_36();
  void GaussFilter_OrReduction_4U_1U_4_38();
  void drive_global_state();
  void drive_global_state_next();
  void drive_gs_ctrl0();
  void drive_gs_ctrl4();
  void drive_gs_ctrl5();
  void drive_gs_ctrl6();
  void drive_gs_ctrl7();
  void drive_gs_ctrl8();
  void drive_i_rgb_busy();
  void GaussFilter_gen_busy_r_4_50_p8();
  void GaussFilter_gen_busy_r_4_50_p7();
  void GaussFilter_gen_busy_r_4_50_p6();
  void GaussFilter_gen_busy_r_4_50_p5();
  void drive_i_rgb_m_unvalidated_req();
  void GaussFilter_N_Muxb_1_2_3_4_4();
  void drive_o_rgb_vld();
  void GaussFilter_Or_1Ux1U_1U_4_2();
  void drive_o_rgb_m_unacked_req();
  void GaussFilter_And_1Ux1U_1U_4_48();
  void GaussFilter_Xor_1Ux1U_1U_1_1();
  void drive_o_rgb_m_req_m_prev_trig_req();
  void GaussFilter_Not_1U_1U_1_3();
};

#endif
