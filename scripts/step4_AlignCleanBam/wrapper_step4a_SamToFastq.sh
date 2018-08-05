#!/bin/bash
QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.
# individuals_array = ( )

for i in "${individuals_array[@]}"
do

$QSUB -N ${i}SamToFastq_08042018 \
-l highp,h_rt=01:00:00,h_data=8G \
-o /u/home/m/meixilin/hoffman_log/${i}SamToFastq_08042018.out.txt \
-e /u/home/m/meixilin/hoffman_log/${i}SamToFastq_08042018.err.txt \
-wd /u/flashscratch/m/meixilin/NGS_pipeline/scripts/step4_AlignCleanBam \
step4a_SamToFastq.sh ${i} ../../analyses/step3_MarkAdapters ../../analyses/step4_AlignCleanBam

sleep 60

done
