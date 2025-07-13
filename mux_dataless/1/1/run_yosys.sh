#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/mux.v
        chparam -set SIZE 1 -set SELECT_TYPE 1 mux_dataless
        hierarchy -top mux_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mux_dataless/1/1/mux_dataless_1_1_yosys.blif" > /dev/null
