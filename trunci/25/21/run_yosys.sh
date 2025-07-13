#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/trunci.v
        chparam -set INPUT_TYPE 25 -set OUTPUT_TYPE 21 trunci
        hierarchy -top trunci;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/trunci/25/21/trunci_25_21_yosys.blif" > /dev/null
