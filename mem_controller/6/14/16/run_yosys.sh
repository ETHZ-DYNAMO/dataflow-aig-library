#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/mem_controller_storeless.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/mc_support.v
        chparam -set NUM_LOADS 6 -set DATA_TYPE 14 -set ADDR_TYPE 16 mem_controller
        hierarchy -top mem_controller;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/6/14/16/mem_controller_6_14_16_yosys.blif" > /dev/null
