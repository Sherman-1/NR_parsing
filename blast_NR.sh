#!/bin/bash

#PBS -N blast_NR
#PBS -l nodes=node04
#PBS -l ncpus=16
#PBS -l mem=128gb
#PBS -l walltime=10000:00:00
#PBS -q bim 

STORE="/store/EQUIPES/BIM/MEMBERS/simon.herman/"
# Diamond against NR database


/home/simon.herman/UTILS/diamond blastp --query $STORE/Scer_NCBI_CDS.pep --db /scratchlocal/nr.dmnd \
    --outfmt 6 qseqid sseqid qlen slen qstart qend sstart send gaps gapopen evalue staxids \
    --out SCER_vs_NR.tsv --verbose > SCER_vs_NR.log 
