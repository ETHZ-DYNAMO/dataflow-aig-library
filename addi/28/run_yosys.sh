#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/addi.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        chparam -set DATA_TYPE 28 addi
        hierarchy -top addi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/addi/28/addi_28_yosys.blif" > /dev/null
