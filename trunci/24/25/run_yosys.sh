#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/trunci.v
        chparam -set INPUT_TYPE 24 -set OUTPUT_TYPE 25 trunci
        hierarchy -top trunci;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/trunci/24/25/trunci_24_25_yosys.blif" > /dev/null
