#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv/5/14/shift_reg_break_dv_5_14_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv/5/14/shift_reg_break_dv.blif"
