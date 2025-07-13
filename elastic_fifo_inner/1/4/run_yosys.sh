#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 1 -set DATA_TYPE 4 elastic_fifo_inner
        hierarchy -top elastic_fifo_inner;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/1/4/elastic_fifo_inner_1_4_yosys.blif" > /dev/null
