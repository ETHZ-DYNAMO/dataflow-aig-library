#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/oehb.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/oehb.v
        chparam -set DATA_TYPE 29 oehb
        hierarchy -top oehb;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/oehb/29/oehb_29_yosys.blif" > /dev/null
