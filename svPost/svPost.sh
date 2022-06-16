#!/bin/bash
svpost=/usr/local/sv/svsolver/DATE/svpost

start=10
stop=100
incr=10

indir=/home/USER/Documents/sim-project/simulation/N-procs_case
outdir=/home/USER/Documents/sim-project/simulation/N-procs_case_svPost

$svpost -indir ${indir} -outdir ${outdir} -start ${start} -stop ${stop} -incr ${incr} -vtp all_results -vtu all_results