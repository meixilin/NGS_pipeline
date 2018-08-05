
# generate index for reference sequence
cd ./download/refs/
bwa index ref_sequence_75.fasta

PICARD=/u/home/m/meixilin/miniconda2/envs/NGSProcess/share/picard-2.18.11-0/picard.jar

# generate dictionary (step 4c)
java -jar ${PICARD} CreateSequenceDictionary \
    REFERENCE=ref_sequence_75.fasta \
    OUTPUT=ref_sequence_75.dict
