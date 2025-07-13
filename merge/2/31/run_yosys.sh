#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/merge.v
        chparam -set SIZE 2 -set DATA_TYPE 31 merge
        hierarchy -top merge;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/merge/2/31/merge_2_31_yosys.blif" > /dev/null
