#!/bin/bash

QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.
individuals_array=(1_ML 2_ML 3_ML 4_ML 5_ML B1_ML B2_ML 1_RM 2_RM 3_RM 4_RM 5_RM 6_RM 7_RM 8_RM 9_RM B1_RM)

for i in "${individuals_array[@]}"
do

$QSUB -N ${i}MarkAdapters

step3_MarkAdapters.sh
${i} ../../analyses/step2_FastqToSam ../../analyses/step3_MarkAdapters

sleep 10m

done
