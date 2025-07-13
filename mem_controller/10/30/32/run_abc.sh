#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mem_controller/10/30/32/mem_controller_10_30_32_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/10/30/32/mem_controller.blif"
