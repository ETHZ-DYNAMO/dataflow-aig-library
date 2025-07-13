#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mem_controller/15/7/4/mem_controller_15_7_4_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/15/7/4/mem_controller.blif"
