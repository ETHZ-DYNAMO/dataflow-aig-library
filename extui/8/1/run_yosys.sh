#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extui.v
        chparam -set INPUT_TYPE 8 -set OUTPUT_TYPE 1 extui
        hierarchy -top extui;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extui/8/1/extui_8_1_yosys.blif" > /dev/null
