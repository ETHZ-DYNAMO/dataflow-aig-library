#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/mem_controller_storeless.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/mc_support.v
        chparam -set NUM_LOADS 2 -set DATA_TYPE 29 -set ADDR_TYPE 30 mem_controller
        hierarchy -top mem_controller;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/2/29/30/mem_controller_2_29_30_yosys.blif" > /dev/null
