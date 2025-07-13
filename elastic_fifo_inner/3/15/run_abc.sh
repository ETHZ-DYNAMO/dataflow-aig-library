#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/3/15/elastic_fifo_inner_3_15_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/3/15/elastic_fifo_inner.blif"
