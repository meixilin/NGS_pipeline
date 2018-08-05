#!/bin/bash

Individual=$1
BamDir=$2
OutDir=$3

source /u/home/m/meixilin/miniconda2/bin/activate NGSProcess

picard MarkIlluminaAdapters \
I=${BamDir}/${Individual}/${Individual}_FastqToSam.bam \
O=${OutDir}/${Individual}/${Individual}_MarkAdapters.bam \
M=${OutDir}/${Individual}/${Individual}_MarkAdapters.bam_metrics.txt

source /u/home/m/meixilin/miniconda2/bin/deactivate
