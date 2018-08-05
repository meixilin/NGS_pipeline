#!/bin/bash

PICARD=/u/home/m/meixilin/miniconda2/envs/NGSProcess/share/picard-2.18.11-0/picard.jar

Individual=$1
InDir=$2
OutDir=$3

java -Xmx26G -jar ${PICARD} MarkDuplicates \
INPUT=${InDir}/${Individual}/${Individual}_AlignCleanBam.bam \
OUTPUT=${OutDir}/${Individual}/${Individual}_MarkDups.bam \
METRICS_FILE=${OutDir}/${Individual}/${Individual}_MarkDups.bam_metrics.txt \
OPTICAL_DUPLICATE_PIXEL_DISTANCE=2500 \
CREATE_INDEX=true \
