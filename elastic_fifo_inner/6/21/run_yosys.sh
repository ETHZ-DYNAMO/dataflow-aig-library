#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 6 -set DATA_TYPE 21 elastic_fifo_inner
        hierarchy -top elastic_fifo_inner;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/6/21/elastic_fifo_inner_6_21_yosys.blif" > /dev/null
