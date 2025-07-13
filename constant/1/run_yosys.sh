#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/aig/constant/1/constant.v
        chparam -set DATA_WIDTH 1 constant
        hierarchy -top constant;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/constant/1/constant_1_yosys.blif" > /dev/null
