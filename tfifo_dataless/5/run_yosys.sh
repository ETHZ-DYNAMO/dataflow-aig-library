#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/dataless/tfifo.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/dataless/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 5 tfifo_dataless
        hierarchy -top tfifo_dataless;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/tfifo_dataless/5/tfifo_dataless_5_yosys.blif" > /dev/null
