#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/aig/constant/27/constant.v
        chparam -set DATA_WIDTH 27 constant
        hierarchy -top constant;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/constant/27/constant_27_yosys.blif" > /dev/null
