#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mem_controller/10/24/18/mem_controller_10_24_18_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/10/24/18/mem_controller.blif"
