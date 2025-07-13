#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/sink.v
        chparam -set DATA_TYPE 21 sink
        hierarchy -top sink;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/sink/21/sink_21_yosys.blif" > /dev/null
