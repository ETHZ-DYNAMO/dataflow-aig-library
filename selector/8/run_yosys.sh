#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/select.v
        chparam -set DATA_TYPE 8 selector
        hierarchy -top selector;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/selector/8/selector_8_yosys.blif" > /dev/null
