#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/merge.v
        chparam -set SIZE 4 merge_dataless
        hierarchy -top merge_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/merge_dataless/4/merge_dataless_4_yosys.blif" > /dev/null
