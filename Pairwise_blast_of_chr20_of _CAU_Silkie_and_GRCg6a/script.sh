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

##subsetted bam
samtools view -b blastn_new_silkie_chr20_GRCg6a.sorted.bam 20:10766772-11477501 > blastn_new_silkie_chr20_GRCg6a_Fm_subsetted.bam

##bam-read count
bam-readcount -f Gallus_gallus.GRCg6a_chr20.fa -w 0 blastn_new_silkie_chr20_GRCg6a_Fm_subsetted > blastn_new_silkie_GRCg6a_FM_locus_subsetted.bam.count.txt

for j in blastn_new_silkie_GRCg6a_FM_locus_subsetted.bam.count.txt;do cut -f 1-4,6-9 $j|sed 's/:/\t/g'|cut -f 1-4,5,6,19,20,33,34,47,48 > $j.count;done




##extraction of base status in CAU_silkie
for i in `cat list_for_switch_mosaic`; do grep "$i" blastn_new_silkie_GRCg6a_FM_locus_subsetted.bam.count.txt.count >> bam_read_count_bases_in_both_hap_CAU_Silkie; done
