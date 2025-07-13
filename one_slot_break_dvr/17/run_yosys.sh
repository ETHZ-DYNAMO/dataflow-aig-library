#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/one_slot_break_dvr.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/one_slot_break_dvr.v
        chparam -set DATA_TYPE 17 one_slot_break_dvr
        hierarchy -top one_slot_break_dvr;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/one_slot_break_dvr/17/one_slot_break_dvr_17_yosys.blif" > /dev/null
