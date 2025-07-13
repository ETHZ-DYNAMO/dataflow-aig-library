#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/br.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/br.v
        chparam -set DATA_TYPE 5 br
        hierarchy -top br;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/br/5/br_5_yosys.blif" > /dev/null
