for i in `cat bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta Gallus_gallus.GRCg6a.dna_sm.toplevel.fa --tracks DUP1_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam Dup1_node_PR.0.1.0.0.sorted.bam Dup1_node_PR.0.1.0.1.sorted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_ONT_IGV --info-columns Chromosome Start_position End_position
done


for i in `cat bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta Gallus_gallus.GRCg6a.dna_sm.toplevel.fa --tracks DUP1_HDPs.bed SRR17981950_51_52_Fm_locus_merged.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_PacBio_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta Gallus_gallus.GRCg6a.dna_sm.toplevel.fa --tracks DUP1_HDPs.bed SRR10161485_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_SRR10161485_Silkie_PacBio_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta Gallus_gallus.GRCg6a.dna_sm.toplevel.fa --tracks DUP1_HDPs.bed SRR25488571_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_SRR25488571_Silkie_PacBio_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta Gallus_gallus.GRCg6a.dna_sm.toplevel.fa --tracks DUP1_HDPs.bed SRR25488572_Lueyang_Fm_subseted.bam Fm_locus.bed --output "$reportname"_SRR25488571_Lueyang_PacBio_IGV --info-columns Chromosome Start_position End_position
done
