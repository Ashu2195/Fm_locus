#Make vcf files for Dup1 and Dup2 regions 
bcftools mpileup --threads 24 -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -b 139_ind_list -C 50 -Q 20 -q 20 -r 20:10766772-10894151 | bcftools call --threads 24 -mv -o dup1_bcftools.vcf

bcftools mpileup --threads 24 -f Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -b 139_ind_list -C 50 -Q 20 -q 20 -r 20:11306686-11477501 | bcftools call --threads 24 -mv -o dup2_bcftools.vcf

##Filtering of VCF file
vcftools --vcf dup1_bcftools.vcf --remove-indels --recode --recode-INFO-all --out dup1_recode.vcf
vcftools --vcf dup2_bcftools.vcf --remove-indels --recode --recode-INFO-all --out dup2_recode.vcf

##VCF to phylip conversion
python vcf2phylip.py -i dup1_recode.vcf.recode.vcf
python vcf2phylip.py -i dup2_recode.vcf.recode.vcf

## Phylogeny construction using iqtree2
iqtree2 -s dup1_recode.min4.phy -T 64 --alrt 1000 -B 1000 --boot-trees
iqtree2 -s dup2_recode.min4.phy -T 64 --alrt 1000 -B 1000 --boot-trees

