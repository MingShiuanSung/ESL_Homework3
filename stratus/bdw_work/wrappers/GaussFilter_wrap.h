/****************************************************************************
*
*  Copyright (c) 2015, Cadence Design Systems. All Rights Reserved.
*
*  This file contains confidential information that may not be
*  distributed under any circumstances without the written permision
*  of Cadence Design Systems.
*
****************************************************************************/


#ifndef _GAUSSFILTER_WRAP_INCLUDED_
#define _GAUSSFILTER_WRAP_INCLUDED_


/* Save ioConfig define values for parent module and define those for this module's ioConfigs. */


#if defined(CYNTHVLG) 

#include <systemc.h>

#define GaussFilter_wrapper GaussFilter

/* This is the section that is seen during processing by cynthVLG of a module
 * that instantiates the module defined by this wrapper.
 */
SC_MODULE(GaussFilter)
{
public:
	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	sc_out< bool > i_rgb_busy;
	sc_in< bool > i_rgb_vld;
	sc_in< sc_uint< 24 > > i_rgb_data;
	sc_in< bool > o_rgb_busy;
	sc_out< bool > o_rgb_vld;
	sc_out< sc_uint< 24 > > o_rgb_data;

	SC_CTOR(GaussFilter);
};

#elif defined(CYNTHHL) || defined(BDW_EXTRACT)

/* This is the section seen during processing by cynthHL or bdw_extract of a module 
 * that instantiates the module defined by this wrapper.
 */
#include <systemc.h>

#include "cynw_p2p.h"
#include "cyn_enums.h"


#define GaussFilter_wrapper GaussFilter

/* Only port declarations are required for nested modules.
 */
SC_MODULE(GaussFilter)
{
public:
	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	cynw::cynw_p2p_base_in <sc_dt::sc_uint <(int)24 >, CYN::cyn_enum <(int)1 > > i_rgb;
	cynw::cynw_p2p_base_out <sc_dt::sc_uint <(int)24 >, CYN::cyn_enum <(int)1 > > o_rgb;


	SC_HAS_PROCESS(GaussFilter);
    	GaussFilter_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("GaussFilter")) );
};

#else

#include <esc.h>


/* This is the section seen during processing by gcc either when the module
 * itself is compiled, or when a module that instantiates it is compiled.
 */

struct GaussFilter;
struct GaussFilter_cosim;
struct GaussFilter_cycsim;
struct GaussFilter_rtl;

#ifdef BDW_COWARE
#include	"GaussFilter_coware.h"
#endif

#include "cynw_p2p.h"
#include "cyn_enums.h"


// Declaration of wrapper with BEH level ports

SC_MODULE(GaussFilter_wrapper)
{
public:

	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	cynw::cynw_p2p_base_in <sc_dt::sc_uint <(int)24 >, CYN::cyn_enum <(int)1 > > i_rgb;
	cynw::cynw_p2p_base_out <sc_dt::sc_uint <(int)24 >, CYN::cyn_enum <(int)1 > > o_rgb;

    
    // These signals are used to connect structured ports or ports that need
    // type conversion to the RTL ports.
    
    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };
	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances( );
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(GaussFilter_wrapper);

    	GaussFilter_wrapper( sc_module_name name = sc_module_name( sc_gen_unique_name("GaussFilter")) )
		: sc_module(name)
		  ,i_clk("i_clk")
		  	,i_rst("i_rst")
		  	,i_rgb("i_rgb")
		  	,o_rgb("o_rgb")
		  	

		  ,GaussFilter0(0), GaussFilter_cosim0(0), GaussFilter_rtl0(0), GaussFilter_cycsim0(0)
		

    {
        InitInstances( );
		InitThreads();
    }


    // destructor
    ~GaussFilter_wrapper()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( GaussFilter_wrapper::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( GaussFilter_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( GaussFilter_wrapper::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( GaussFilter_wrapper::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( GaussFilter_wrapper::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	GaussFilter* behModule() { return GaussFilter0; }
	GaussFilter_cosim* cosimModule() { return GaussFilter_cosim0; }
	GaussFilter_cycsim* cycsimModule() { return GaussFilter_cycsim0; }
	GaussFilter_rtl* rtlModule() { return GaussFilter_rtl0; }

	GaussFilter* GaussFilter0;
	GaussFilter_cosim* GaussFilter_cosim0;
	GaussFilter_rtl* GaussFilter_rtl0;
	GaussFilter_cycsim* GaussFilter_cycsim0;
};

// Declaration of wrapper with RTL level ports

SC_MODULE(GaussFilter_wrapper_r)
{
public:

	sc_in< bool > i_clk;
	sc_in< bool > i_rst;
	sc_out< bool > i_rgb_busy;
	sc_in< bool > i_rgb_vld;
	sc_in< sc_uint< 24 > > i_rgb_data;
	sc_in< bool > o_rgb_busy;
	sc_out< bool > o_rgb_vld;
	sc_out< sc_uint< 24 > > o_rgb_data;

    
    // These signals are used to connect structured ports or ports that need
    // type conversion to the RTL ports.
    
    
	enum Representation { BDWRep_None, BDWRep_Behavioral, BDWRep_RTL_C, BDWRep_RTL_HDL, BDWRep_Gates, BDWRep_CYC_HDL };

	static const char * simConfigName();
	static Representation lookupRepresentation( const char* instName );
	// create the netlist
    void InitInstances();
    void InitThreads();

    // delete the netlist
    void DeleteInstances();

	void CloseTrace();
	void start_of_simulation();
	void end_of_simulation();


    // The following threads are used to connect structured ports to the actual
    // RTL ports.
    

	SC_HAS_PROCESS(GaussFilter_wrapper_r);

	GaussFilter_wrapper_r( sc_module_name name = sc_module_name( sc_gen_unique_name("GaussFilter")) )
		: sc_module(name)
		  ,i_clk("i_clk")
		  	,i_rst("i_rst")
		  	,i_rgb_busy("i_rgb_busy")
		  	,i_rgb_vld("i_rgb_vld")
		  	,i_rgb_data("i_rgb_data")
		  	,o_rgb_busy("o_rgb_busy")
		  	,o_rgb_vld("o_rgb_vld")
		  	,o_rgb_data("o_rgb_data")
		  	

		  ,GaussFilter0(0), GaussFilter_cosim0(0), GaussFilter_rtl0(0), GaussFilter_cycsim0(0)
		

    {
        InitInstances();
        InitThreads();
		end_module();
    }


    // destructor
    ~GaussFilter_wrapper_r()
    {
        DeleteInstances();

		CloseTrace();
    }

    bool isBEH() { return ( GaussFilter_wrapper_r::lookupRepresentation( name() ) == BDWRep_Behavioral ); }
    bool isRTL_C() { return ( GaussFilter_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_C ); }
    bool isRTL_V() { return ( GaussFilter_wrapper_r::lookupRepresentation( name() ) == BDWRep_RTL_HDL ); }
    bool isGATES_V() { return ( GaussFilter_wrapper_r::lookupRepresentation( name() ) == BDWRep_Gates ); }
	bool isCosim() { return ( isRTL_V() || isGATES_V() ); }
    bool isCycsim() { return ( GaussFilter_wrapper_r::lookupRepresentation( name() ) == BDWRep_CYC_HDL ); }

	GaussFilter* behModule() { return GaussFilter0; }
	GaussFilter_cosim* cosimModule() { return GaussFilter_cosim0; }
	GaussFilter_cycsim* cycsimModule() { return GaussFilter_cycsim0; }
	GaussFilter_rtl* rtlModule() { return GaussFilter_rtl0; }

protected:
	GaussFilter* GaussFilter0;
	GaussFilter_cosim* GaussFilter_cosim0;
	GaussFilter_rtl* GaussFilter_rtl0;
	GaussFilter_cycsim* GaussFilter_cycsim0;
};

#endif

/* Restore ioConfig define values for parent module. */

#endif /*  */
