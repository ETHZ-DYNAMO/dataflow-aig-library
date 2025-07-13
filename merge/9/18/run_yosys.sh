#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/merge.v
        chparam -set SIZE 9 -set DATA_TYPE 18 merge
        hierarchy -top merge;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/merge/9/18/merge_9_18_yosys.blif" > /dev/null
