#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/mux.v
        chparam -set SIZE 3 -set DATA_TYPE 28 -set SELECT_TYPE 2 mux
        hierarchy -top mux;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mux/3/28/2/mux_3_28_2_yosys.blif" > /dev/null
