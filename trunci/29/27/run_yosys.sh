#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/trunci.v
        chparam -set INPUT_TYPE 29 -set OUTPUT_TYPE 27 trunci
        hierarchy -top trunci;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/trunci/29/27/trunci_29_27_yosys.blif" > /dev/null
