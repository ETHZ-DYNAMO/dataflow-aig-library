#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/select.v
        chparam -set DATA_TYPE 32 selector
        hierarchy -top selector;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/selector/32/selector_32_yosys.blif" > /dev/null
