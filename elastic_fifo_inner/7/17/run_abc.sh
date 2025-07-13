#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/7/17/elastic_fifo_inner_7_17_yosys.blif;
        strash;
        rewrite;
        b;
        refactor;
        b;
        rewrite;
        b;
        refactor;
        b;
        rewrite;
        b;
        refactor;
        b;
        rewrite;
        b;
        refactor;
        b;
        rewrite;
        b;
        refactor;
        b;
        rewrite;
        b;
        refactor;
        b;
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/7/17/elastic_fifo_inner.blif"
