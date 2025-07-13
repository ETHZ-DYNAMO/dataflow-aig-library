#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/control_merge.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/control_merge.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/merge.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/tehb.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/tehb.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/handshake/dataless/fork.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/aig_generation/data/verilog/support/eager_fork_register_block.v
        chparam -set SIZE 7 -set DATA_TYPE 10 -set INDEX_TYPE 3 control_merge
        hierarchy -top control_merge;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/aig_generation/data/blif/control_merge/7/10/3/control_merge_7_10_3_yosys.blif" > /dev/null
