#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/tfifo.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 6 -set DATA_TYPE 3 tfifo
        hierarchy -top tfifo;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/tfifo/6/3/tfifo_6_3_yosys.blif" > /dev/null
