#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv_dataless/7/shift_reg_break_dv_dataless_7_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/shift_reg_break_dv_dataless/7/shift_reg_break_dv_dataless.blif"
