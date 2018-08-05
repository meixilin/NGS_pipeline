#!/bin/bash

Individual=$1
FastqDir=$2
OutDir=$3

picard FastqToSam \
FASTQ=${FastqDir}/${Individual}_R1_001.fastq.gz \
FASTQ2=${FastqDir}/${Individual}_R2_001.fastq.gz \
OUTPUT=${OutDir}/X${Individual}/X${Individual}_FastqToSam.bam \
READ_GROUP_NAME=X${Individual}_1a \
SAMPLE_NAME=X${Individual} \
LIBRARY_NAME=Lib1 \
PLATFORM=illumina \
