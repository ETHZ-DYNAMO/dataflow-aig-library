#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/cond_br.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/cond_br.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        chparam -set DATA_TYPE 3 cond_br
        hierarchy -top cond_br;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/cond_br/3/cond_br_3_yosys.blif" > /dev/null
