for i in `cat dup1_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_024206055.2_GGswu_genomic.fna --tracks Dup1_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_ONT_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat dup2_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_024206055.2_GGswu_genomic.fna --tracks Dup2_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_ONT_IGV --info-columns Chromosome Start_position End_position
done
