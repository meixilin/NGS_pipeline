#!/bin/bash

QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.
# individuals_array=(4_ML 5_ML B1_ML B2_ML 1_RM 2_RM 3_RM 4_RM 5_RM 6_RM 7_RM 8_RM 9_RM B1_RM)
# hoffman2 does not like to do all the work, resubmit with the files 
individuals_array=(4_ML 5_ML 9_RM)
for i in "${individuals_array[@]}"
do

$QSUB -N X${i}FastqToSam_08042018 \
-l highp,h_rt=01:00:00,h_data=8G \
-o /u/home/m/meixilin/hoffman_log/X${i}FastqToSam_08042018.out.txt \
-e /u/home/m/meixilin/hoffman_log/X${i}FastqToSam_08042018.err.txt \
-wd /u/flashscratch/m/meixilin/NGS_pipeline/scripts/step2_FastqToSam \
step2_FastqToSam.sh ${i} /u/project/rwayne/meixilin/RW20180719 ../../analyses/step2_FastqToSam

sleep 20

done
