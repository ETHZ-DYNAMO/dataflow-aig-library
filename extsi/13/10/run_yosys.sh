#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extsi.v
        chparam -set INPUT_TYPE 13 -set OUTPUT_TYPE 10 extsi
        hierarchy -top extsi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extsi/13/10/extsi_13_10_yosys.blif" > /dev/null
