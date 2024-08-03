##PacBio
bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b F1D1_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > F1D1_L_count_uniq
bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b F1D1_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > F1D1_R_count_uniq

bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b D2F2_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > D2F2_L_count_uniq
bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b D2F2_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > D2F2_R_count_uniq

bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b J1_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J1_L_count_uniq
bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b J1_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J1_R_count_uniq

bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b J2_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J2_L_count_uniq
bedtools intersect -a SRR17981950_51_52_CAU_Fm_bam.bed -b J2_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J2_R_count_uniq

cat F1D1_L_count_uniq F1D1_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l

cat D2F2_L_count_uniq D2F2_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l

cat J1_L_count_uniq J1_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l

cat J2_L_count_uniq J2_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l

##ONT
bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b F1D1_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > F1D1_L_count_uniq
bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b F1D1_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > F1D1_R_count_uniq

bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b D2F2_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > D2F2_L_count_uniq
bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b D2F2_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > D2F2_R_count_uniq

bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b J1_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J1_L_count_uniq
bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b J1_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J1_R_count_uniq

bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b J2_L.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J2_L_count_uniq
bedtools intersect -a SRR17968711_12_CAU_Fm_subseted_bam.bed -b J2_R.bed -wa |cut -f4 |sort |uniq -c |awk '{print $2}' > J2_R_count_uniq

cat F1D1_L_count_uniq F1D1_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l

cat D2F2_L_count_uniq D2F2_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l

cat J1_L_count_uniq J1_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l

cat J2_L_count_uniq J2_R_count_uniq |sort |uniq -c |awk '$1>1 {print $0}' |wc -l
