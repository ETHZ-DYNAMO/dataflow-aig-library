#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/select.v
        chparam -set DATA_TYPE 12 selector
        hierarchy -top selector;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/selector/12/selector_12_yosys.blif" > /dev/null
