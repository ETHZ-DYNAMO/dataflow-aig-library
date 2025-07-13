#!/bin/bash
abc -c "read_blif /home/ubuntu/aig_generation/data/blif/control_merge/9/2/2/control_merge_9_2_2_yosys.blif;
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
        write_blif /home/ubuntu/aig_generation/data/blif/control_merge/9/2/2/control_merge.blif"
