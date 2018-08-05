#!/bin/bash

# mkdir for analyses

mkdir analyses

cd analyses

mkdir step1_fastqc step2_FastqToSam step3_MarkAdapters step4_AlignCleanBam step5_MarkDups step6_RemoveBadReads step7_BQSR

individuals_array=(1_ML 2_ML 3_ML 4_ML 5_ML B1_ML B2_ML 1_RM 2_RM 3_RM 4_RM 5_RM 6_RM 7_RM 8_RM 9_RM B1_RM)

for dir in */; do
for i in "${individuals_array[@]}"; do
mkdir -- "$dir/X$i";
done;
done;
