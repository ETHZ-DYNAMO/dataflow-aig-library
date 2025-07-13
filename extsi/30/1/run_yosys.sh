#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extsi.v
        chparam -set INPUT_TYPE 30 -set OUTPUT_TYPE 1 extsi
        hierarchy -top extsi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extsi/30/1/extsi_30_1_yosys.blif" > /dev/null
