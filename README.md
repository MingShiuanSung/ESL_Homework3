# Gaussion filter

This is a introduction to compile HW3 files. <br>

## Introduction
This project contains a Gaussion filter module connected to Testbench module using stratus hls. <br>

## Compilation
1. For example, if we want to run behavioral simulation.
<br>

    cd ./stratus
<br>

    $ make sim_B
<br>

2. Run synthesis and Verilog simulation with HLS configuration BASIC.
<br>

    $ make sim_V_BASIC
<br>

3. Run synthesis and Verilog simulation with HLS configuration DPA (Datapath optimization).
<br>

    $ make sim_V_DPA
<br>

4. Run synthesis and Verilog simulation with HLS configuration PIPE (Pipelining).
<br>

    $ make sim_V_PIPE
<br>

5. Run synthesis and Verilog simulation with HLS configuration UNROLL (Loop unrolling).
<br>

    $ make sim_V_UNROLL
<br>

6. Run synthesis and Verilog simulation with HLS configuration USE_ALL (include all directives).
<br>

    $ make sim_V_USE_ALL
<br>

The result image "out.bmp" will be saved at ./stratus, and the elapsed time will be shown on the terminal. <br>
You can check the synthesis report in <br>
./stratus/bdw_work/modules/SobelFilter/.../stratus_hls.log <br>
And Verilog simulated time in <br> 
./stratus/bdw_work/sims/.../bdw_sim.log

