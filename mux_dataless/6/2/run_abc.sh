#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mux_dataless/6/2/mux_dataless_6_2_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mux_dataless/6/2/mux_dataless.blif"
