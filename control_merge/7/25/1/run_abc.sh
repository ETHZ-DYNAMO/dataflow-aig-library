#!/bin/bash
abc -c "read_blif /home/ubuntu/aig_generation/data/blif/control_merge/7/25/1/control_merge_7_25_1_yosys.blif;
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
        write_blif /home/ubuntu/aig_generation/data/blif/control_merge/7/25/1/control_merge.blif"
