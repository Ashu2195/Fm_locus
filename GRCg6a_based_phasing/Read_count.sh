##Read count for DUP1 HDPs
for i in `cat Dup1_pos_list`
do
kl="Fm_locus_SRR17968711_12"
echo  "20@$i@A@HapA\n" |sed 's/@/\t/g' > ATGC.tsv
echo  "20@$i@T@HapT\n" |sed 's/@/\t/g'>> ATGC.tsv
echo  "20@$i@G@HapG\n" |sed 's/@/\t/g'>> ATGC.tsv
echo  "20@$i@C@HapC\n" |sed 's/@/\t/g'>> ATGC.tsv
java -jar biostar214299.jar --samoutputformat BAM -p ATGC.tsv Fm_locus_merged.sorted.bam > "$i"_"$kl".bam
samtools sort -@16 "$i"_"$kl".bam -o "$i"_"$kl".sorted.bam;
samtools index "$i"_"$kl".sorted.bam;

for hapcount in A T G C
do
samtools view -@16 -b -r Hap"$hapcount" "$i"_"$kl".sorted.bam > "$i"_hap"$hapcount".bam
samtools fasta "$i"_hap"$hapcount".bam > "$i"_hap"$hapcount".fa
grep ">" "$i"_hap"$hapcount".fa|sed 's/>//g'|sort -u > "$i"_hap"$hapcount".list
done

mv *.list readlists

rm "$i"_"$kl".bam "$i"_"$kl".sorted.bam "$i"_"$kl".sorted.bam.bai "$i"_hap*.bam "$i"_hap*.fa
done

##Read count for DUP2 HDPs
for i in `cat Dup2_pos_list`
do
kl="Fm_locus_SRR17968711_12"
echo  "20@$i@A@HapA\n" |sed 's/@/\t/g' > ATGC.tsv
echo  "20@$i@T@HapT\n" |sed 's/@/\t/g'>> ATGC.tsv
echo  "20@$i@G@HapG\n" |sed 's/@/\t/g'>> ATGC.tsv
echo  "20@$i@C@HapC\n" |sed 's/@/\t/g'>> ATGC.tsv
java -jar biostar214299.jar --samoutputformat BAM -p ATGC.tsv Fm_locus_merged.sorted.bam > "$i"_"$kl".bam
samtools sort -@16 "$i"_"$kl".bam -o "$i"_"$kl".sorted.bam;
samtools index "$i"_"$kl".sorted.bam;

for hapcount in A T G C
do
samtools view -@16 -b -r Hap"$hapcount" "$i"_"$kl".sorted.bam > "$i"_hap"$hapcount".bam
samtools fasta "$i"_hap"$hapcount".bam > "$i"_hap"$hapcount".fa
grep ">" "$i"_hap"$hapcount".fa|sed 's/>//g'|sort -u > "$i"_hap"$hapcount".list
done

mv *.list readlists

rm "$i"_"$kl".bam "$i"_"$kl".sorted.bam "$i"_"$kl".sorted.bam.bai "$i"_hap*.bam "$i"_hap*.fa
done

