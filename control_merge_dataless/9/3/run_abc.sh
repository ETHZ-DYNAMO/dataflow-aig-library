#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/control_merge_dataless/9/3/control_merge_dataless_9_3_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/control_merge_dataless/9/3/control_merge_dataless.blif"
