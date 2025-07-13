#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/trunci.v
        chparam -set INPUT_TYPE 18 -set OUTPUT_TYPE 26 trunci
        hierarchy -top trunci;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/trunci/18/26/trunci_18_26_yosys.blif" > /dev/null
