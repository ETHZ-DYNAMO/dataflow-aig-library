#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/lazy_fork.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/lazy_fork.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        chparam -set SIZE 1 -set DATA_TYPE 7 lazy_fork
        hierarchy -top lazy_fork;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/lazy_fork/1/7/lazy_fork_1_7_yosys.blif" > /dev/null
