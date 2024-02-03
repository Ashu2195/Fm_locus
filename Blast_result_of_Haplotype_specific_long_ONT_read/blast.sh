for q in `cat ONT_read_list`
do
makeblastdb -in CAU_Silkie_chr20.fa -out CAU_Silkie_chr20.fa -dbtype nucl
blastn -evalue 0.001 -db $i -out blastn_CAU_Silkie_chr20.fa_"$q".hits.out -num_threads 16 -outfmt 1 -query $q
done

for q in `cat ONT_read_list`
do
makeblastdb -in Gallus_gallus.GRCg6a_chr20.fa -out Gallus_gallus.GRCg6a_chr20.fa -dbtype nucl
blastn -evalue 0.001 -db $i -out blastn_Gallus_gallus.GRCg6a_chr20.fa_"$q".hits.out -num_threads 16 -outfmt 1 -query $q
done
