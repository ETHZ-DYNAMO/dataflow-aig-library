#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/mem_controller/14/7/29/mem_controller_14_7_29_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/mem_controller/14/7/29/mem_controller.blif"
