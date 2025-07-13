#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 3 -set DATA_TYPE 8 elastic_fifo_inner
        hierarchy -top elastic_fifo_inner;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/3/8/elastic_fifo_inner_3_8_yosys.blif" > /dev/null
