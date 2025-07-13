#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/tfifo.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 8 -set DATA_TYPE 9 tfifo
        hierarchy -top tfifo;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/tfifo/8/9/tfifo_8_9_yosys.blif" > /dev/null
