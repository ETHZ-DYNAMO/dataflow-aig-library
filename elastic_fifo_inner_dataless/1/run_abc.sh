#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner_dataless/1/elastic_fifo_inner_dataless_1_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/elastic_fifo_inner_dataless/1/elastic_fifo_inner_dataless.blif"
