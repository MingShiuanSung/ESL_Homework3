// Generated by stratus_hls 19.12-s100  (91710.131054)
// Tue Apr 12 21:28:35 2022
// from ../GaussFilter.cpp
#ifndef CYNTH_PART_GaussFilter_GaussFilter_ROM_9X32_mask_h
#define CYNTH_PART_GaussFilter_GaussFilter_ROM_9X32_mask_h

#include "systemc.h"
#include "cynthhl.h"
/* Include declarations of instantiated parts. */


/* Declaration of the synthesized module. */

struct GaussFilter_ROM_9X32_mask : public sc_module {
  sc_in<sc_uint<4> > in1;
  sc_out<sc_uint<32> > out1;
  sc_in<bool > clk;
  GaussFilter_ROM_9X32_mask( sc_module_name name );
  SC_HAS_PROCESS(GaussFilter_ROM_9X32_mask);
  /*const*/ sc_uint<32> mask[9];
  void GaussFilter_ROM_9X32_mask_mask_thread_1();
};

#endif