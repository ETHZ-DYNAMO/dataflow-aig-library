#!/bin/bash
abc -c "read_blif /home/ubuntu/aig_generation/data/blif/control_merge/6/23/3/control_merge_6_23_3_yosys.blif;
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
        write_blif /home/ubuntu/aig_generation/data/blif/control_merge/6/23/3/control_merge.blif"
