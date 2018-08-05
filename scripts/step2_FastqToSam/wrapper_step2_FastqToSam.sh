#!/bin/bash

QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

# Uncomment the line below and fill in the name of the individuals.
individuals_array = (1_ML 2_ML 3_ML 4_ML 5_ML B1_ML B2_ML 1_RM 2_RM 3_RM 4_RM 5_RM 6_RM 7_RM 8_RM 9_RM B1_RM)
for i in "${individuals_array[@]}"
do

$QSUB -N ${i}FastqToSam_08042018 \
-l highp,h_rt=05:00:00,h_data=8G \
-m bea \
-o /u/home/m/meixilin/hoffman_log/${i}FastqToSam_08042018.out.txt
-e /u/home/m/meixilin/hoffman_log/${i}FastqToSam_08042018.err.txt

step2_FastqToSam.sh ${i} /u/project/rwayne/meixilin/RW20180719 ../../analyses/step2_FastqToSam
sleep 120

done
