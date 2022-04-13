// Generated by stratus_hls 19.12-s100  (91710.131054)
// Tue Apr 12 21:20:35 2022
// from ../GaussFilter.cpp
#ifndef CYNTH_PART_GaussFilter_GaussFilter_rtl_h
#define CYNTH_PART_GaussFilter_GaussFilter_rtl_h

#include "systemc.h"
/* Include declarations of instantiated parts. */
#include "GaussFilter_ROM_9X32_mask.h"


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
  sc_signal<sc_uint<1> > GaussFilter_N_Muxb_1_2_2_4_4_out1;
  sc_signal<bool > i_rgb_m_unvalidated_req;
  sc_signal<sc_uint<1> > 
  GaussFilter_gen_busy_r_4_38_gen_busy_i_rgb_m_data_is_invalid_next;
  sc_signal<sc_uint<1> > GaussFilter_gen_busy_r_4_38_gdiv;
  sc_signal<sc_uint<1> > GaussFilter_gen_busy_r_4_38_gnew_req;
  sc_signal<sc_uint<4> > global_state_next;
  sc_signal<sc_uint<1> > GaussFilter_LessThan_29Sx9S_1U_4_23_out1;
  sc_signal<sc_uint<29> > GaussFilter_N_Mux_29_2_0_4_22_out1;
  sc_signal<sc_uint<1> > GaussFilter_N_Mux_29_2_0_4_22_ctrl1;
  sc_signal<sc_int<29> > GaussFilter_Add_28Sx1U_29S_4_21_out1;
  sc_signal<sc_int<28> > GaussFilter_Add_28Sx1U_29S_4_21_in2;
  sc_signal<sc_uint<1> > GaussFilter_And_1Ux1U_1U_4_18_out1;
  sc_signal<sc_uint<1> > GaussFilter_And_1Ux1U_1U_4_18_in1;
  sc_signal<sc_uint<2> > gs_ctrl5;
  sc_signal<sc_uint<32> > GaussFilter_Add_32Ux32U_32U_4_11_in1;
  sc_signal<sc_int<32> > GaussFilter_Mul_32Sx8U_32S_4_10_out1;
  sc_signal<sc_uint<8> > GaussFilter_Mul_32Sx8U_32S_4_10_in1;
  sc_signal<sc_uint<2> > gs_ctrl3;
  sc_signal<sc_int<32> > GaussFilter_Mul_32Sx8U_32S_4_10_in2;
  sc_signal<sc_uint<1> > gs_ctrl2;
  sc_signal<sc_uint<4> > GaussFilter_Add_4Ux2U_4U_4_8_out1;
  sc_signal<sc_uint<2> > GaussFilter_Add_2Ux1U_2U_4_7_in2;
  sc_signal<sc_uint<2> > GaussFilter_Mul_2Ux2U_4U_4_6_in2;
  sc_signal<sc_uint<1> > gs_ctrl0;
  sc_signal<sc_uint<1> > GaussFilter_OrReduction_4U_1U_4_26_out1;
  sc_signal<sc_uint<1> > GaussFilter_OrReduction_4U_1U_4_20_out1;
  sc_signal<sc_uint<1> > GaussFilter_OrReduction_4U_1U_4_14_out1;
  sc_signal<sc_uint<1> > s_reg_32;
  sc_signal<sc_uint<32> > s_reg_31;
  sc_signal<sc_uint<2> > GaussFilter_Add_2Ux1U_2U_4_9_out1;
  sc_signal<sc_uint<2> > GaussFilter_Add_2Ux1U_2U_4_7_out1;
  sc_signal<sc_uint<2> > s_reg_29;
  sc_signal<sc_uint<4> > GaussFilter_Mul_2Ux2U_4U_4_6_out1;
  sc_signal<sc_uint<32> > s_reg_27;
  sc_signal<sc_uint<32> > s_reg_26;
  sc_signal<sc_uint<32> > GaussFilter_Add_32Ux32U_32U_4_11_out1;
  sc_signal<sc_uint<32> > s_reg_25;
  sc_signal<sc_uint<2> > s_reg_30;
  sc_signal<sc_uint<2> > s_reg_24;
  sc_signal<sc_uint<3> > GaussFilter_gen_busy_r_4_38_out1;
  sc_signal<sc_uint<1> > GaussFilter_And_1Ux1U_1U_4_36_out1;
  sc_signal<sc_uint<1> > GaussFilter_Not_1U_1U_1_3_out1;
  sc_signal<bool > o_rgb_m_req_m_trig_req;
  sc_signal<sc_uint<1> > GaussFilter_LessThan_2Ux2U_1U_4_19_out1;
  sc_signal<sc_uint<1> > GaussFilter_LessThan_2Ux2U_1U_4_17_out1;
  sc_signal<bool > i_rgb_m_busy_req_0;
  sc_signal<sc_uint<8> > GaussFilter_N_Mux_8_2_1_4_24_out1;
  sc_signal<sc_uint<8> > s_reg_33;
  sc_signal<sc_uint<8> > s_reg_28;
  sc_signal<sc_uint<4> > global_state;
  sc_signal<sc_uint<1> > stall0;
  sc_signal<sc_uint<4> > mask_in1;
  sc_signal<sc_uint<32> > mask_out1;
  GaussFilter_ROM_9X32_mask *mask;
  void drive_o_rgb_data();
  void drive_i_rgb_m_busy_req_0();
  void drive_o_rgb_m_req_m_trig_req();
  void drive_stall0();
  void drive_s_reg_24();
  void drive_s_reg_25();
  void drive_s_reg_26();
  void drive_s_reg_27();
  void drive_s_reg_28();
  void drive_s_reg_29();
  void drive_s_reg_30();
  void drive_s_reg_31();
  void drive_s_reg_32();
  void drive_s_reg_33();
  void drive_GaussFilter_Mul_2Ux2U_4U_4_6_in2();
  void GaussFilter_Mul_2Ux2U_4U_4_6();
  void drive_GaussFilter_Add_2Ux1U_2U_4_7_in2();
  void GaussFilter_Add_2Ux1U_2U_4_7();
  void GaussFilter_Add_4Ux2U_4U_4_8();
  void GaussFilter_Add_2Ux1U_2U_4_9();
  void drive_mask_in1();
  void drive_GaussFilter_Mul_32Sx8U_32S_4_10_in2();
  void drive_GaussFilter_Mul_32Sx8U_32S_4_10_in1();
  void GaussFilter_Mul_32Sx8U_32S_4_10();
  void drive_GaussFilter_Add_32Ux32U_32U_4_11_in1();
  void GaussFilter_Add_32Ux32U_32U_4_11();
  void GaussFilter_OrReduction_4U_1U_4_14();
  void GaussFilter_LessThan_2Ux2U_1U_4_17();
  void drive_GaussFilter_And_1Ux1U_1U_4_18_in1();
  void GaussFilter_And_1Ux1U_1U_4_18();
  void GaussFilter_LessThan_2Ux2U_1U_4_19();
  void GaussFilter_OrReduction_4U_1U_4_20();
  void drive_GaussFilter_Add_28Sx1U_29S_4_21_in2();
  void GaussFilter_Add_28Sx1U_29S_4_21();
  void drive_GaussFilter_N_Mux_29_2_0_4_22_ctrl1();
  void GaussFilter_N_Mux_29_2_0_4_22();
  void GaussFilter_LessThan_29Sx9S_1U_4_23();
  void GaussFilter_N_Mux_8_2_1_4_24();
  void GaussFilter_OrReduction_4U_1U_4_26();
  void drive_global_state();
  void drive_global_state_next();
  void drive_gs_ctrl0();
  void drive_gs_ctrl2();
  void drive_gs_ctrl3();
  void drive_gs_ctrl5();
  void drive_i_rgb_busy();
  void GaussFilter_gen_busy_r_4_38_p8();
  void GaussFilter_gen_busy_r_4_38_p7();
  void GaussFilter_gen_busy_r_4_38_p6();
  void GaussFilter_gen_busy_r_4_38_p5();
  void drive_i_rgb_m_unvalidated_req();
  void GaussFilter_N_Muxb_1_2_2_4_4();
  void drive_o_rgb_vld();
  void GaussFilter_Or_1Ux1U_1U_4_2();
  void drive_o_rgb_m_unacked_req();
  void GaussFilter_And_1Ux1U_1U_4_36();
  void GaussFilter_Xor_1Ux1U_1U_1_1();
  void drive_o_rgb_m_req_m_prev_trig_req();
  void GaussFilter_Not_1U_1U_1_3();
};

#endif