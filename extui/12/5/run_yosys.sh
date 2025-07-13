#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extui.v
        chparam -set INPUT_TYPE 12 -set OUTPUT_TYPE 5 extui
        hierarchy -top extui;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extui/12/5/extui_12_5_yosys.blif" > /dev/null
