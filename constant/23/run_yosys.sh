#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/aig/constant/23/constant.v
        chparam -set DATA_WIDTH 23 constant
        hierarchy -top constant;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/constant/23/constant_23_yosys.blif" > /dev/null
