for i in `cat bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta Gallus_gallus.GRCg6a.dna_sm.toplevel.fa --tracks DUP2_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam SRR17981950_51_52_Fm_locus_merged.bam Dup2_node_length_135088.sorted.bam Dup2_node_length_135030.sorted.bam Fm_locus.bed --output "$reportname"_IGV --info-columns Chromosome Start_position End_position
done
