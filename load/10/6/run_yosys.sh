#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/load.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/tehb.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/tehb.v
        chparam -set DATA_TYPE 10 -set ADDR_TYPE 6 load
        hierarchy -top load;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/load/10/6/load_10_6_yosys.blif" > /dev/null
