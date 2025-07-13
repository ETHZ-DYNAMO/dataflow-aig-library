#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/divui.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/delay_buffer.v
        chparam -set DATA_TYPE 12 divui
        hierarchy -top divui;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/divui/12/divui_12_yosys.blif" > /dev/null
