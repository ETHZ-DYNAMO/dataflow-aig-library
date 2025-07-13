#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/tehb.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/tehb.v
        chparam -set DATA_TYPE 4 tehb
        hierarchy -top tehb;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/tehb/4/tehb_4_yosys.blif" > /dev/null
