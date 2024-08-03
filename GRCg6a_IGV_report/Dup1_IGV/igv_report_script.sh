for i in `cat bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta Gallus_gallus.GRCg6a.dna_sm.toplevel.fa --tracks DUP1_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam dup1_bandage_111772.sorted.bam dup1_bandage_111782.sorted.bam Fm_locus.bed --output "$reportname"_IGV --info-columns Chromosome Start_position End_position
done
