#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/extui.v
        chparam -set INPUT_TYPE 24 -set OUTPUT_TYPE 27 extui
        hierarchy -top extui;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/extui/24/27/extui_24_27_yosys.blif" > /dev/null
