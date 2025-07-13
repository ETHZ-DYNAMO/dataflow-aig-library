#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/fork.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/fork.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/eager_fork_register_block.v
        chparam -set SIZE 10 -set DATA_TYPE 30 fork_type
        hierarchy -top fork_type;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/fork_type/10/30/fork_type_10_30_yosys.blif" > /dev/null
