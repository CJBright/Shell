#!/bin/bash
# Locate svPost installation.
svpost=/usr/local/sv/svsolver/DATE/svpost

# Set the desired timesteps.
start=10
stop=100
incr=10

# Set the in/out directories.
indir=/home/USER/Documents/sim-project/simulation/N-procs_case
outdir=/home/USER/Documents/sim-project/simulation/N-procs_case_svPost

# Run svPost. SELECT ONE and comment out/delete the other!:
# Generate 1 file per timestep.
$svpost -indir ${indir} -outdir ${outdir} -start ${start} -stop ${stop} -incr ${incr} -vtp all_results -vtu all_results
# Generate 1 .vtu and 1 .vtp file containing all timesteps.
$svpost -indir ${indir} -outdir ${outdir} -start ${start} -stop ${stop} -incr ${incr} -all -vtkcombo -vtu all_results -vtp all_results