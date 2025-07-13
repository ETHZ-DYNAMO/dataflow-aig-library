#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/trunci.v
        chparam -set INPUT_TYPE 28 -set OUTPUT_TYPE 15 trunci
        hierarchy -top trunci;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/trunci/28/15/trunci_28_15_yosys.blif" > /dev/null
