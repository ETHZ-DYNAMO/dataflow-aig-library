#!/bin/bash
yosys -p "read_verilog -defer /home/ubuntu/dynamatic/data/verilog/handshake/tfifo.v
        read_verilog -defer /home/ubuntu/dynamatic/data/verilog/support/elastic_fifo_inner.v
        chparam -set NUM_SLOTS 7 -set DATA_TYPE 22 tfifo
        hierarchy -top tfifo;
        proc;
        opt -nodffe -nosdff;
        memory -nomap;
        techmap;
        flatten;
        clean;
        write_blif /home/ubuntu/dynamatic/data/aig/tfifo/7/22/tfifo_7_22_yosys.blif" > /dev/null
