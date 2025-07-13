#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/join.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/logic.v
        read_verilog -defer /home/ubuntu/dynamatic/data/aig/cmpi/28/cmpi.v
        chparam -set DATA_TYPE 28 cmpi
        hierarchy -top cmpi;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/cmpi/28/cmpi_28_yosys.blif" > /dev/null
