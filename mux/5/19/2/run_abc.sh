#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mux/5/19/2/mux_5_19_2_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mux/5/19/2/mux.blif"
