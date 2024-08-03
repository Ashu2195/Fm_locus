##Extraction of Chr20
##GRCg6a
GRCg6a_chr20.bed
20	0	13897287

bedtools getfasta -fi Gallus_gallus.GRCg6a.dna_sm.toplevel.fa -bed GRCg6a_chr20.bed -fo GRCg6a_chr20.fa
##Huxu
Huxu_chr20.bed				
CP100574.1	0	15361164

bedtools getfasta -fi GCA_024206055.2_GGswu_genomic.fna -bed Huxu_chr20.bed -fo Huxu_chr20.fa
##CAU_Silkie
CAU_silkie_chr20.bed			
CM065509.1	0	14507699

bedtools getfasta -fi GCA_033088195.1_CAU_Silkie_1.0_genomic.fna -bed CAU_silkie_chr20.bed -fo CAU_silkie_chr20.fa
##Lueyang
nano Lueyang_chr20.bed			
JAVDCB010000036.1	0	15595266	

bedtools getfasta -fi GCA_034509885.1_ASM3450988v1_genomic.fna -bed Lueyang_chr20.bed -fo Lueyang_chr20.fa
##Extraction of Chr20


#Masking of Dup1 & Dup2 Hap1 in CAU
CAU_Hap1.bed
CM065509.1	11016607	11144018 
CM065509.1	11854433	12025334

bedtools maskfasta -fi CAU_silkie_chr20.fa -fo CAU_silkie_chr20_Hap1_masked.fa -bed CAU_Hap1.bed
##Masking of Dup1 & Dup2 Hap2 in CAU
CAU_Hap2.bed
CM065509.1	11144019	11322565
CM065509.1	11727004	11854432

bedtools maskfasta -fi CAU_silkie_chr20.fa -fo CAU_silkie_chr20_Hap2_masked.fa -bed CAU_Hap2.bed

#Masking of Dup1 & Dup2 Hap1 in Lueyang
Lueyang_Hap1.bed
JAVDCB010000036.1	3363782	3491191
JAVDCB010000036.1	2482283	2653096
bedtools maskfasta -fi Lueyang_chr20.fa -fo Lueyang_chr20.fa_Hap1_masked.fa -bed Lueyang_Hap1.bed
#Masking of Dup1 & Dup2 Hap2 in Lueyang
Lueyang_Hap2.bed
JAVDCB010000036.1	3065509	3192906
JAVDCB010000036.1	3192907	3363782
bedtools maskfasta -fi Lueyang_chr20.fa -fo Lueyang_chr20.fa_Hap2_masked.fa -bed Lueyang_Hap2.bed


##GRCg6a to Huxu
make_chains.py GRCg6a_chr20 Huxu_chr20 GRCg6a_chr20.fa Huxu_chr20.fa --pd chain -f --chaining_memory 50 --kt
liftOver GRCg6a_HDP.bed GRCg6a_chr20.Huxu_chr20.final.chain GRCg6a_HDP_in_Huxu unMapped_GRCg6a_HDP_in_Huxu


##GRCg6a to CAU
#Liftover for Hap2
make_chains.py GRCg6a_chr20 CAU_Silkie_chr20_Hap1 GRCg6a_chr20.fa CAU_silkie_chr20_Hap1_masked.fa --pd chain -f --chaining_memory 50 --kt
liftOver GRC_265_2bp_minus_based_HDP.bed GRCg6a_chr20.CAU_Silkie_chr20_Hap1.final.chain GRCg6a_HDP_in_CAU_Hap2 unMapped_GRCg6a_HDP_in_CAU_Hap2

#Liftover for Hap1
make_chains.py GRCg6a_chr20 CAU_Silkie_chr20_Hap2 GRCg6a_chr20.fa CAU_silkie_chr20_Hap2_masked.fa --pd chain -f --chaining_memory 50 --kt

liftOver GRCg6a_HDP.bed GRCg6a_chr20.CAU_Silkie_chr20_Hap2.final.chain GRCg6a_HDP_in_CAU_Hap1 unMapped_GRCg6a_HDP_in_CAU_Hap1


##GRCg6a to Lueyang
make_chains.py GRCg6a_chr20 Lueyang_chr20_Hap1 GRCg6a_chr20.fa Lueyang_chr20.fa_Hap1_masked.fa --pd chain -f --chaining_memory 50 --kt

liftOver GRCg6a_Dup2_Hap2_2bp_minus_based_HDP.bed GRCg6a_chr20.Lueyang_chr20_Hap1.final.chain GRCg6a_HDP_in_Lueyang_Hap2 unMapped_GRCg6a_HDP_in_Lueyang_Hap2


make_chains.py GRCg6a_chr20 Lueyang_chr20_Hap2 GRCg6a_chr20.fa Lueyang_chr20.fa_Hap2_masked.fa --pd chain -f --chaining_memory 50 --kt
liftOver GRCg6a_265_2bp_minus_based_HDP.bed GRCg6a_chr20.Lueyang_chr20_Hap2.final.chain GRCg6a_HDP_in_Lueyang_Hap1 unMapped_GRCg6a_HDP_in_Lueyang_Hap1
