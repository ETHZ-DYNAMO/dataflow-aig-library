#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/andi.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        chparam -set DATA_TYPE 3 andi
        hierarchy -top andi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/andi/3/andi_3_yosys.blif" > /dev/null
