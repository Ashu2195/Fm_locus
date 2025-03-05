for density in 0.1 0.01 0.05 0.001 0.0001
do
for readlen in 1000 5000 10000 20000
do
for kb in 0
do
python simulate_haplotypes.py --ploidy 2 --genome_size 1000000 --density $density --output_prefix chicken_genome
nanosim-h --min-len $readlen -p yeast --kmer-bias "$kb" chicken_genome.fasta
samtools faidx chicken_genome.fasta haplotype_2 > H2.fa
minimap2 -d H2.mmi H2.fa
minimap2 -a H2.mmi simulated.fa -o output.sam
samtools view -bS output.sam > output.bam
samtools sort -o out.sorted.bam output.bam 
samtools index out.sorted.bam
python parse_bam_commented.py out.sorted.bam output.txt
cat output.txt |tr "," "|"|sed 's/(//g'|sed 's/)//g'|sed "s/'//g"|sed 's/ //g' > output.formatted
python read_summary.py chicken_genome_haplotype_sites.txt output.formatted > read.summary.txt
cat read.summary.txt|awk 'NF==4{print $0}' > read.counts.txt
cat read.summary.txt|awk 'NF==5{print $0}' > read.assignments.txt
per=60
output=`awk -v per="$per" 'BEGIN { h1_correct=0; h2_correct=0; h1_wrong=0; h2_wrong=0 } { total=$2+$3+$4; if (total>0) { h1_pct=($2/total)*100; h2_pct=($3/total)*100; if ($1 ~ /^haplotype-1/) { if (h1_pct > per) h1_correct++; else h1_wrong++; } if ($1 ~ /^haplotype-2/) { if (h2_pct > per) h2_correct++; else h2_wrong++; } } } END { print "H1 correct:", h1_correct, "H2 correct:", h2_correct, "H1 wrong:", h1_wrong, "H2 wrong:", h2_wrong }' read.counts.txt`
echo $density $readlen $kb $output >> metrics.txt
mkdir dir_"$density"_"$readlen"_"$kb"
mv chicken_genome.fasta dir_"$density"_"$readlen"_"$kb"
mv chicken_genome_haplotype_sites.txt dir_"$density"_"$readlen"_"$kb"
mv H2.fa dir_"$density"_"$readlen"_"$kb"
mv simulated.fa dir_"$density"_"$readlen"_"$kb"
mv out.sorted.bam dir_"$density"_"$readlen"_"$kb"
mv output.txt dir_"$density"_"$readlen"_"$kb"
mv read.summary.txt dir_"$density"_"$readlen"_"$kb"
mv read.counts.txt dir_"$density"_"$readlen"_"$kb"
mv read.assignments.txt dir_"$density"_"$readlen"_"$kb"
mv simulated.log dir_"$density"_"$readlen"_"$kb"
mv simulated.errors.txt dir_"$density"_"$readlen"_"$kb"
mv chicken_genome.fasta.fai dir_"$density"_"$readlen"_"$kb"
mv H2.mmi dir_"$density"_"$readlen"_"$kb"
mv output.sam dir_"$density"_"$readlen"_"$kb"
mv output.bam dir_"$density"_"$readlen"_"$kb"
mv out.sorted.bam.bai dir_"$density"_"$readlen"_"$kb"
mv output.formatted dir_"$density"_"$readlen"_"$kb"
done
done
done
