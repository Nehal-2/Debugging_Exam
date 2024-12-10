#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Dec 10 11:22:35 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xsim tb_counter_4bit_behav -key {Behavioral:sim_1:Functional:tb_counter_4bit} -tclbatch tb_counter_4bit.tcl -view /home/it/DigitalSystemDesign/debugging_exam/debugging_exam/tb_counter_4bit_behav.wcfg -view /home/it/DigitalSystemDesign/debugging_exam/debugging_exam/tb_latch_behav.wcfg -log simulate.log"
xsim tb_counter_4bit_behav -key {Behavioral:sim_1:Functional:tb_counter_4bit} -tclbatch tb_counter_4bit.tcl -view /home/it/DigitalSystemDesign/debugging_exam/debugging_exam/tb_counter_4bit_behav.wcfg -view /home/it/DigitalSystemDesign/debugging_exam/debugging_exam/tb_latch_behav.wcfg -log simulate.log

