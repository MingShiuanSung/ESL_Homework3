/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/

#ifdef NCSC
#include <string>
typedef std::string sc_string;
#define SYSTEMC_VERSION 20070314
#endif

#include "GaussFilter_cycsim.h"
#include "esc_catrace.h"
#include "verilated.h"
#include "VGaussFilter_rtl.h"


class VGaussFilter_rtl;

class GaussFilter_cycsimV : public GaussFilter_cycsim
{
    // Port declarations inherited from parent class

    // These signals are used to connect ports that need type conversion to the RTL ports
    sc_signal< uint32_t > i_rgb_data_I;
    sc_signal< uint32_t > o_rgb_data_O;


    // The following threads are used to do the type conversion.
    inline void thread_i_rgb_data_I() {
        i_rgb_data_I = (sc_uint<24>)i_rgb_data.read();
    };
    inline void thread_o_rgb_data_O() {
        o_rgb_data = o_rgb_data_O.read();
    };


    SC_HAS_PROCESS(GaussFilter_cycsimV);

public:

    GaussFilter_cycsimV( sc_module_name in_name=sc_module_name(sc_gen_unique_name(" GaussFilter") ) )
        : GaussFilter_cycsim(in_name)
    {
        // instantiate the verilated module
        GaussFilter_cyc0 = new VGaussFilter_rtl( "VGaussFilter" );
        // generate port connections
        GaussFilter_cyc0->i_clk(i_clk);
        GaussFilter_cyc0->i_rst(i_rst);
        GaussFilter_cyc0->i_rgb_busy(i_rgb_busy);
        GaussFilter_cyc0->i_rgb_vld(i_rgb_vld);
        GaussFilter_cyc0->i_rgb_data(i_rgb_data_I);
        GaussFilter_cyc0->o_rgb_busy(o_rgb_busy);
        GaussFilter_cyc0->o_rgb_vld(o_rgb_vld);
        GaussFilter_cyc0->o_rgb_data(o_rgb_data_O);


        // setup the type conversion threads
        SC_METHOD( thread_i_rgb_data_I);
            sensitive << i_rgb_data;
        SC_METHOD( thread_o_rgb_data_O);
            sensitive << o_rgb_data_O;


        TraceFileType* tfp = esc_get_ca_trace_file();
        if ( tfp )
        {
            GaussFilter_cyc0->trace(tfp,99);
        }
    };

    ~GaussFilter_cycsimV()
    {
        delete GaussFilter_cyc0;
    }

    void end_of_elaboration()
    {
        esc_open_ca_trace_file();
    }

    void end_of_simulation()
    {
        esc_close_ca_trace_file();
    }

protected:
    VGaussFilter_rtl* GaussFilter_cyc0;
};

GaussFilter_cycsim* GaussFilter_cycsim_factory()
{
    return new GaussFilter_cycsimV("GaussFilter");
}

class GaussFilter_linkup
{
public:
    GaussFilter_linkup() {
        extern GaussFilter_cycsim* (*GaussFilter_cycsim_factory_p)();
        GaussFilter_cycsim_factory_p = &GaussFilter_cycsim_factory;
    }
};

// Create the one instance of the factory for this verilated model.
GaussFilter_linkup GaussFilter_cycsimV_link;


