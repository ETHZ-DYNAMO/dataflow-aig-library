#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/aig/constant/32/constant.v
        chparam -set DATA_WIDTH 32 constant
        hierarchy -top constant;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/constant/32/constant_32_yosys.blif" > /dev/null
