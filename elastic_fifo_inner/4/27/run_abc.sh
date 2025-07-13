#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/4/27/elastic_fifo_inner_4_27_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner/4/27/elastic_fifo_inner.blif"
