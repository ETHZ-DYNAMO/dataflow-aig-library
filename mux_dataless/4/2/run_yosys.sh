#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/mux.v
        chparam -set SIZE 4 -set SELECT_TYPE 2 mux_dataless
        hierarchy -top mux_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mux_dataless/4/2/mux_dataless_4_2_yosys.blif" > /dev/null
