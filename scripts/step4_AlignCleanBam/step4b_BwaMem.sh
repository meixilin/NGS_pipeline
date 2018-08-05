#!/bin/bash

REFERENCE=../../download/refs/ref_sequence_75.fasta

source /u/home/m/meixilin/miniconda2/bin/activate NGSProcess

Individual=$1
Dir=$2

bwa mem -M -t 3 -p $REFERENCE ${Dir}/${Individual}/${Individual}_CleanBamToFastq.fastq 2>> ${Dir}/${Individual}/${Individual}_Process_BwaMem.txt > ${Dir}/${Individual}/${Individual}_BwaMem.bam

source /u/home/m/meixilin/miniconda2/bin/deactivate
