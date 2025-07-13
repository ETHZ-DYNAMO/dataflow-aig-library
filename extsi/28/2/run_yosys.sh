#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extsi.v
        chparam -set INPUT_TYPE 28 -set OUTPUT_TYPE 2 extsi
        hierarchy -top extsi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extsi/28/2/extsi_28_2_yosys.blif" > /dev/null
