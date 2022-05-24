#!/bin/bash
svpost=/usr/local/sv/svsolver/2021-06-15/svpost

start=10
stop=100
incr=10

indir=/home/mbgm4cb8/Desktop/Projection_Validation_CommandLine/8-procs_case
outdir=/home/mbgm4cb8/Desktop/Projection_Validation_CommandLine/Output_Script

$svpost -indir ${indir} -outdir ${outdir} -start ${start} -stop ${stop} -incr ${incr} -vtp all_results -vtu all_results
