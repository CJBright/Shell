#!/bin/bash
generate-flows=/home/USER/apps/create-flow-files

# Set the converter options.
meshDir=/home/USER/Documents/sim-project/simulation/mesh-complete/mesh-surfaces
resDir=/home/USER/Documents/sim-project/simulation/N-procs_case_svPost
outputDir=/home/USER/Documents/sim-project/simulation/N-procs_case_svPost-flows

singleFile=no
skipWalls=yes
units=cm

# Call the converter.
createFlows --mesh-directory ${meshDir} --results-directory ${resDir} --output-directory ${outputDir} --single-file ${singleFile} --skip-walls ${skipWalls} --units ${units}