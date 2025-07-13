#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/mux.v
        chparam -set SIZE 2 -set DATA_TYPE 5 -set SELECT_TYPE 2 mux
        hierarchy -top mux;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mux/2/5/2/mux_2_5_2_yosys.blif" > /dev/null
