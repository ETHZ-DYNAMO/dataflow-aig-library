#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/merge.v
        chparam -set SIZE 7 -set DATA_TYPE 14 merge
        hierarchy -top merge;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/merge/7/14/merge_7_14_yosys.blif" > /dev/null
