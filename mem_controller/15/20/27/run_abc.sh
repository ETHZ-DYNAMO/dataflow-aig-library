#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mem_controller/15/20/27/mem_controller_15_20_27_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/15/20/27/mem_controller.blif"
