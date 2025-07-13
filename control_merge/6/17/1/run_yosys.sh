#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/control_merge.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/control_merge.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/merge.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/tehb.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/tehb.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/fork.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/support/eager_fork_register_block.v
        chparam -set SIZE 6 -set DATA_TYPE 17 -set INDEX_TYPE 1 control_merge
        hierarchy -top control_merge;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/aig_generation/data/blif/control_merge/6/17/1/control_merge_6_17_1_yosys.blif" > /dev/null
