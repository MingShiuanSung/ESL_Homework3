#ifndef GAUSS_FILTER_H_
#define GAUSS_FILTER_H_
#include <systemc>
using namespace sc_core;

#ifndef NATIVE_SYSTEMC
#include <cynw_p2p.h>
#endif

#include "filter_def.h"

class GaussFilter: public sc_module
{
public:
	sc_in_clk i_clk;
	sc_in < bool >  i_rst;
#ifndef NATIVE_SYSTEMC
	cynw_p2p< sc_dt::sc_uint<24> >::in i_rgb; // char rgb
	cynw_p2p< sc_dt::sc_uint<24> >::out o_rgb; // double rgb
#else
	sc_fifo_in< sc_dt::sc_uint<24> > i_rgb; // char rgb
	sc_fifo_out< sc_dt::sc_uint<24> > o_rgb; // double rgb
#endif

	SC_HAS_PROCESS( GaussFilter );
	GaussFilter( sc_module_name n );
	~GaussFilter();
private:
	void do_filter();
	int red, green, blue;
};
#endif
