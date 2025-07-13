#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/dynamatic/data/aig/cmpi/7/cmpi.v
        chparam -set DATA_TYPE 7 cmpi
        hierarchy -top cmpi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/cmpi/7/cmpi_7_yosys.blif" > /dev/null
