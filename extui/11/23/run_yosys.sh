#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extui.v
        chparam -set INPUT_TYPE 11 -set OUTPUT_TYPE 23 extui
        hierarchy -top extui;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extui/11/23/extui_11_23_yosys.blif" > /dev/null
