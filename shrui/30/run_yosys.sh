#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/shrui.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        chparam -set DATA_TYPE 30 shrui
        hierarchy -top shrui;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/shrui/30/shrui_30_yosys.blif" > /dev/null
