#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/mem_controller_storeless.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/mc_support.v
        chparam -set NUM_LOADS 14 -set DATA_TYPE 29 -set ADDR_TYPE 18 mem_controller
        hierarchy -top mem_controller;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/14/29/18/mem_controller_14_29_18_yosys.blif" > /dev/null
