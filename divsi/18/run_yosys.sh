#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/arith/divsi.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/delay_buffer.v
        chparam -set DATA_TYPE 18 divsi
        hierarchy -top divsi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/divsi/18/divsi_18_yosys.blif" > /dev/null
