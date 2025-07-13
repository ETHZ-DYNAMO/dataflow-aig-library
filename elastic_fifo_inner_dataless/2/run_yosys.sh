#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/dataless/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 2 elastic_fifo_inner_dataless
        hierarchy -top elastic_fifo_inner_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner_dataless/2/elastic_fifo_inner_dataless_2_yosys.blif" > /dev/null
