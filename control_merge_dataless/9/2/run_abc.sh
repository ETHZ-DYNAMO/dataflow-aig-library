#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/control_merge_dataless/9/2/control_merge_dataless_9_2_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/control_merge_dataless/9/2/control_merge_dataless.blif"
