#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extui.v
        chparam -set INPUT_TYPE 18 -set OUTPUT_TYPE 11 extui
        hierarchy -top extui;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extui/18/11/extui_18_11_yosys.blif" > /dev/null
