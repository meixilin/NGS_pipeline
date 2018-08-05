#!/bin/bash

QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.
# individuals_array = ( )

for i in "${individuals_array[@]}"
do

$QSUB -N ${i}BwaMem \
-l highp,h_rt=02:00:00,h_data=8G \
-wd /u/flashscratch/m/meixilin/NGS_pipeline/scripts/step4_AlignCleanBam \
step4b_BwaMem.sh ${i} ../../analyses/step4_AlignCleanBam

sleep 10m

done
