# Building Indices
./miniprot -t16 -d data_align/dana.mpi data_align/dana-all-chromosome-r1.06.fasta
./miniprot -t16 -d data_align/dmoj.mpi data_align/dmoj-all-chromosome-r1.04.fasta
./miniprot -t16 -d data_align/dsec.mpi data_align/dsec-all-chromosome-r1.3.fasta

# Produce alignments in gff
./miniprot -Iut16 --gff-only data_align/dana.mpi data_align/dmel-all-translation-r6.54.fasta > data_align/dana_t.gff
./miniprot -Iut16 --gff-only data_align/dmoj.mpi data_align/dmel-all-translation-r6.54.fasta > data_align/dmoj_t.gff
./miniprot -Iut16 --gff-only data_align/dsec.mpi data_align/dmel-all-translation-r6.54.fasta > data_align/dsec_t.gff