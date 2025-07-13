#!/bin/bash
abc -c "read_blif /home/ubuntu/dynamatic/data/aig/one_slot_break_dvr/27/one_slot_break_dvr_27_yosys.blif;
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
        write_blif /home/ubuntu/dynamatic/data/aig/one_slot_break_dvr/27/one_slot_break_dvr.blif"
