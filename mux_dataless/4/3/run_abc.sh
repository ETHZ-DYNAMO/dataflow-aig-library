#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mux_dataless/4/3/mux_dataless_4_3_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mux_dataless/4/3/mux_dataless.blif"
