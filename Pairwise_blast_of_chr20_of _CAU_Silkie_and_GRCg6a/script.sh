##blast
i="CAU_Silkie_chr20.fa"
makeblastdb -in $i -out $i -dbtype nucl
q="Gallus_gallus.GRCg6a_chr20.fa"
blastn -evalue 0.001 -db $i -out blastn_"$i"_"$q".hits.out.sam -num_threads 32 -outfmt '17 SQ' -query $q
blastn -evalue 0.001 -db $i -out blastn_"$i"_"$q".hits.out -num_threads 32 -outfmt 1 -query $q


##sam to bam conversion
samtools view -bhS blastn_CAU_Silkie_chr20.fa_Gallus_gallus.GRCg6a_chr20.fa.hits.out.sam >  blastn_new_silkie_chr20_GRCg6a.bam
samtools sort blastn_new_silkie_chr20_GRCg6a.bam -o blastn_new_silkie_chr20_GRCg6a.sorted.bam
samtools index blastn_new_silkie_chr20_GRCg6a.sorted.bam

