#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/control_merge.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/merge.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/tehb.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/tehb.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/fork.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/eager_fork_register_block.v
        chparam -set SIZE 4 -set INDEX_TYPE 3 control_merge_dataless
        hierarchy -top control_merge_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/control_merge_dataless/4/3/control_merge_dataless_4_3_yosys.blif" > /dev/null
