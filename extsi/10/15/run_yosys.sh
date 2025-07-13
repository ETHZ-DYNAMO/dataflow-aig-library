#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extsi.v
        chparam -set INPUT_TYPE 10 -set OUTPUT_TYPE 15 extsi
        hierarchy -top extsi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extsi/10/15/extsi_10_15_yosys.blif" > /dev/null
