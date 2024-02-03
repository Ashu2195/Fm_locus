##Masking of Dup1_hap1_Dup2_hap2 region
bedtools maskfasta -fi CAU_Silkie_chr_20.fa -fo CAU_Silkie_chr_20_J1_masked.fa -bed J1.bed
##Masking of Dup1_hap2_Dup2_hap1 region
bedtools maskfasta -fi CAU_Silkie_chr_20.fa -fo CAU_Silkie_chr_20_J2_masked.fa -bed J2.bed

##Chain making
make_chains.py GRCg6a_chr20 CAU_Silkie_chr20_J1 GRCg6a_chr_20.fa CAU_Silkie_chr_20_J1_masked.fa --pd chain -f --chaining_memory 50 --kt

make_chains.py GRCg6a_chr20 CAU_Silkie_chr20_J2 GRCg6a_chr_20.fa CAU_Silkie_chr_20_J2_masked.fa --pd chain -f --chaining_memory 50 --kt

##liftover
liftOver GRC_265_0_based_HDP.bed GRCg6a_chr20.CAU_Silkie_chr20_J1.final.chain J1_260_HDP_in_CAU J1_unMapped_260_HDP_in_CAU

liftOver GRC_265_0_based_HDP.bed GRCg6a_chr20.CAU_Silkie_chr20_J2.final.chain J2_260_HDP_in_CAU J2_unMapped_260_HDP_in_CAU
