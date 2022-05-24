#!/bin/bash
createFlows=/home/mbgm4cb8/create-flow-files/create-flow-files

# Set the converter options.
meshDir=/home/mbgm4cb8/Documents/Projects/xCode_Comparison/xCode_3_CSF_Sims/xCode_Vali_Initialised_Rough/mesh-complete/mesh-surfaces
resDir=/home/mbgm4cb8/Documents/Projects/xCode_Comparison/xCode_5_Converted/xCode_Coarse/xCode_Coarse_Converted

outputDir=/home/mbgm4cb8/Documents/Projects/xCode_Comparison/xCode_5_Converted/xCode_Coarse/xCode_Coarse_Text

singleFile=no
skipWalls=yes
units=cm

# Call the converter.
createFlows --mesh-directory ${meshDir} --results-directory ${resDir} --output-directory ${outputDir} --single-file ${singleFile} --skip-walls ${skipWalls} --units ${units}