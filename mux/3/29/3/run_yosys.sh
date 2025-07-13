#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/mux.v
        chparam -set SIZE 3 -set DATA_TYPE 29 -set SELECT_TYPE 3 mux
        hierarchy -top mux;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mux/3/29/3/mux_3_29_3_yosys.blif" > /dev/null
