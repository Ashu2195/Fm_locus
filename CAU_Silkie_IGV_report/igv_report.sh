for i in `cat Dup1_hap1_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fna --tracks Dup1_Hap1_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_ONT_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat Dup1_hap2_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fnaa --tracks Dup1_Hap2_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_ONT_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat Dup2_hap1_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fna --tracks Dup2_Hap1_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_ONT_IGV --info-columns Chromosome Start_position End_position
done


for i in `cat Dup2_hap2_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fna --tracks Dup2_Hap2_HDPs.bed SRR17968711_12_CAU_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_ONT_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat Dup1_hap1_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fna --tracks Dup1_Hap1_HDPs.bed SRR17981950_51_52_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_PacBio_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat Dup1_hap2_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fnaa --tracks Dup1_Hap2_HDPs.bed SRR17981950_51_52_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_PacBio_IGV --info-columns Chromosome Start_position End_position
done

for i in `cat Dup2_hap1_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fna --tracks Dup2_Hap1_HDPs.bed SRR17981950_51_52_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_PacBio_IGV --info-columns Chromosome Start_position End_position
done


for i in `cat Dup2_hap2_bedlist`
do
echo $i
reportname=`echo $i |sed 's/.bed//g'`
create_report $i --standalone --fasta GCA_033088195.1_CAU_Silkie_1.0_genomic.fna --tracks Dup2_Hap2_HDPs.bed SRR17981950_51_52_Silkie_Fm_subseted.bam Fm_locus.bed --output "$reportname"_CAU_Silkie_PacBio_IGV --info-columns Chromosome Start_position End_position
done
