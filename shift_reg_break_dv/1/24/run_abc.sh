#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv/1/24/shift_reg_break_dv_1_24_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv/1/24/shift_reg_break_dv.blif"
