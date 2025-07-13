#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/merge.v
        chparam -set SIZE 1 merge_dataless
        hierarchy -top merge_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/merge_dataless/1/merge_dataless_1_yosys.blif" > /dev/null
