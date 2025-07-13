#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/one_slot_break_dvr.v
        
        hierarchy -top one_slot_break_dvr_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/one_slot_break_dvr_dataless/one_slot_break_dvr_dataless_yosys.blif" > /dev/null
