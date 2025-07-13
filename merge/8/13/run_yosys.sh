#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/merge.v
        chparam -set SIZE 8 -set DATA_TYPE 13 merge
        hierarchy -top merge;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/merge/8/13/merge_8_13_yosys.blif" > /dev/null
