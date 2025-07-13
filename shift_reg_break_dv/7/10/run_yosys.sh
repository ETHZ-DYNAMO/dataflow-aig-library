#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/shift_reg_break_dv.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/shift_reg_break_dv.v
        chparam -set NUM_SLOTS 7 -set DATA_TYPE 10 shift_reg_break_dv
        hierarchy -top shift_reg_break_dv;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv/7/10/shift_reg_break_dv_7_10_yosys.blif" > /dev/null
