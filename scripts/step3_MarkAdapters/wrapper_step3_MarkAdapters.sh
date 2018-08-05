#!/bin/bash

QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.
individuals_array=(X1_ML X2_ML)

for i in "${individuals_array[@]}"
do

$QSUB -N ${i}MarkAdapters_08042018 \
-l highp,h_rt=01:00:00,h_data=8G \
-o /u/home/m/meixilin/hoffman_log/${i}MarkAdapters_08042018.out.txt \
-e /u/home/m/meixilin/hoffman_log/${i}MarkAdapters_08042018.err.txt \
-wd /u/flashscratch/m/meixilin/NGS_pipeline/scripts/step3_MarkAdapters \
step3_MarkAdapters.sh ${i} ../../analyses/step2_FastqToSam ../../analyses/step3_MarkAdapters

sleep 60

done
