#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/control_merge_dataless/4/2/control_merge_dataless_4_2_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/control_merge_dataless/4/2/control_merge_dataless.blif"
