#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/shift_reg_break_dv.v
        chparam -set NUM_SLOTS 3 shift_reg_break_dv_dataless
        hierarchy -top shift_reg_break_dv_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv_dataless/3/shift_reg_break_dv_dataless_3_yosys.blif" > /dev/null
