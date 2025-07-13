#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/mux.v
        chparam -set SIZE 8 -set SELECT_TYPE 1 mux_dataless
        hierarchy -top mux_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mux_dataless/8/1/mux_dataless_8_1_yosys.blif" > /dev/null
