for i in `cat Dup1_3HDP_pair`
do
pos1=`echo $i |sed 's/_/\t/g'|cut -f1`
pos2=`echo $i |sed 's/_/\t/g'|cut -f2`
pos3=`echo $i |sed 's/_/\t/g'|cut -f3`


count_AAA=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AAT=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AAG=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AAC=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATA=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATT=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATG=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATC=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGA=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGT=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGG=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGC=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACA=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACT=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACG=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACC=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAA=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAT=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAG=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAC=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTA=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTT=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTG=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTC=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGA=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGT=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGG=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGC=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCA=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCT=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCG=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCC=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAA=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAT=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAG=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAC=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTA=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTT=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTG=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTC=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGA=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGT=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGG=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGC=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCA=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCT=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCG=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCC=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAA=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAT=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAG=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAC=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTA=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTT=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTG=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTC=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGA=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGT=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGG=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGC=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCA=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCT=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCG=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCC=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`

echo $count_AAA AAA >temp.counts; echo $count_AAT AAT >>temp.counts; echo $count_AAG AAG >>temp.counts; echo $count_AAC AAC >>temp.counts; echo $count_ATA ATA >>temp.counts; echo $count_ATT ATT >>temp.counts; echo $count_ATG ATG >>temp.counts; echo $count_ATC ATC >>temp.counts; echo $count_AGA AGA >>temp.counts; echo $count_AGT AGT >>temp.counts; echo $count_AGG AGG >>temp.counts; echo $count_AGC AGC >>temp.counts; echo $count_ACA ACA >>temp.counts; echo $count_ACT ACT >>temp.counts; echo $count_ACG ACG >>temp.counts; echo $count_ACC ACC >>temp.counts; echo $count_TAA TAA >>temp.counts; echo $count_TAT TAT >>temp.counts; echo $count_TAG TAG >>temp.counts; echo $count_TAC TAC >>temp.counts; echo $count_TTA TTA >>temp.counts; echo $count_TTT TTT >>temp.counts; echo $count_TTG TTG >>temp.counts; echo $count_TTC TTC >>temp.counts; echo $count_TGA TGA >>temp.counts; echo $count_TGT TGT >>temp.counts; echo $count_TGG TGG >>temp.counts; echo $count_TGC TGC >>temp.counts; echo $count_TCA TCA >>temp.counts; echo $count_TCT TCT >>temp.counts; echo $count_TCG TCG >>temp.counts; echo $count_TCC TCC >>temp.counts; echo $count_GAA GAA >>temp.counts; echo $count_GAT GAT >>temp.counts; echo $count_GAG GAG >>temp.counts; echo $count_GAC GAC >>temp.counts; echo $count_GTA GTA >>temp.counts; echo $count_GTT GTT >>temp.counts; echo $count_GTG GTG >>temp.counts; echo $count_GTC GTC >>temp.counts; echo $count_GGA GGA >>temp.counts; echo $count_GGT GGT >>temp.counts; echo $count_GGG GGG >>temp.counts; echo $count_GGC GGC >>temp.counts; echo $count_GCA GCA >>temp.counts; echo $count_GCT GCT >>temp.counts; echo $count_GCG GCG >>temp.counts; echo $count_GCC GCC >>temp.counts; echo $count_CAA CAA >>temp.counts; echo $count_CAT CAT >>temp.counts; echo $count_CAG CAG >>temp.counts; echo $count_CAC CAC >>temp.counts; echo $count_CTA CTA >>temp.counts; echo $count_CTT CTT >>temp.counts; echo $count_CTG CTG >>temp.counts; echo $count_CTC CTC >>temp.counts; echo $count_CGA CGA >>temp.counts; echo $count_CGT CGT >>temp.counts; echo $count_CGG CGG >>temp.counts; echo $count_CGC CGC >>temp.counts; echo $count_CCA CCA >>temp.counts; echo $count_CCT CCT >>temp.counts; echo $count_CCG CCG >>temp.counts; echo $count_CCC CCC >>temp.counts;

haps=`sort -k1n,1 temp.counts|awk '$1>10{print $0}'|sed 's/ /_/g'|tr "\n" ","`

echo $pos1 $pos2 $pos3 $count_AAA $count_AAT $count_AAG $count_AAC $count_ATA $count_ATT $count_ATG $count_ATC $count_AGA $count_AGT $count_AGG $count_AGC $count_ACA $count_ACT $count_ACG $count_ACC $count_TAA $count_TAT $count_TAG $count_TAC $count_TTA $count_TTT $count_TTG $count_TTC $count_TGA $count_TGT $count_TGG $count_TGC $count_TCA $count_TCT $count_TCG $count_TCC $count_GAA $count_GAT $count_GAG $count_GAC $count_GTA $count_GTT $count_GTG $count_GTC $count_GGA $count_GGT $count_GGG $count_GGC $count_GCA $count_GCT $count_GCG $count_GCC $count_CAA $count_CAT $count_CAG $count_CAC $count_CTA $count_CTT $count_CTG $count_CTC $count_CGA $count_CGT $count_CGG $count_CGC $count_CCA $count_CCT $count_CCG $count_CCC >>Dup1_3HDP_ONT_read_pair_count.txt
done
##
for i in `cat Dup2_3HDP_pair`
do
pos1=`echo $i |sed 's/_/\t/g'|cut -f1`
pos2=`echo $i |sed 's/_/\t/g'|cut -f2`
pos3=`echo $i |sed 's/_/\t/g'|cut -f3`


count_AAA=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AAT=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AAG=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AAC=`cat "$pos1"_hapA.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATA=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATT=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATG=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ATC=`cat "$pos1"_hapA.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGA=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGT=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGG=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_AGC=`cat "$pos1"_hapA.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACA=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACT=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACG=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_ACC=`cat "$pos1"_hapA.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAA=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAT=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAG=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TAC=`cat "$pos1"_hapT.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTA=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTT=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTG=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TTC=`cat "$pos1"_hapT.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGA=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGT=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGG=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TGC=`cat "$pos1"_hapT.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCA=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCT=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCG=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_TCC=`cat "$pos1"_hapT.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAA=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAT=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAG=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GAC=`cat "$pos1"_hapG.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTA=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTT=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTG=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GTC=`cat "$pos1"_hapG.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGA=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGT=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGG=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GGC=`cat "$pos1"_hapG.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCA=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCT=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCG=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_GCC=`cat "$pos1"_hapG.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAA=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAT=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAG=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CAC=`cat "$pos1"_hapC.list "$pos2"_hapA.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTA=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTT=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTG=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CTC=`cat "$pos1"_hapC.list "$pos2"_hapT.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGA=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGT=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGG=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CGC=`cat "$pos1"_hapC.list "$pos2"_hapG.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCA=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapA.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCT=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapT.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCG=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapG.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`
count_CCC=`cat "$pos1"_hapC.list "$pos2"_hapC.list "$pos3"_hapC.list|sort|uniq -c|awk '$1>2{print $0}'|wc -l`

echo $count_AAA AAA >temp.counts; echo $count_AAT AAT >>temp.counts; echo $count_AAG AAG >>temp.counts; echo $count_AAC AAC >>temp.counts; echo $count_ATA ATA >>temp.counts; echo $count_ATT ATT >>temp.counts; echo $count_ATG ATG >>temp.counts; echo $count_ATC ATC >>temp.counts; echo $count_AGA AGA >>temp.counts; echo $count_AGT AGT >>temp.counts; echo $count_AGG AGG >>temp.counts; echo $count_AGC AGC >>temp.counts; echo $count_ACA ACA >>temp.counts; echo $count_ACT ACT >>temp.counts; echo $count_ACG ACG >>temp.counts; echo $count_ACC ACC >>temp.counts; echo $count_TAA TAA >>temp.counts; echo $count_TAT TAT >>temp.counts; echo $count_TAG TAG >>temp.counts; echo $count_TAC TAC >>temp.counts; echo $count_TTA TTA >>temp.counts; echo $count_TTT TTT >>temp.counts; echo $count_TTG TTG >>temp.counts; echo $count_TTC TTC >>temp.counts; echo $count_TGA TGA >>temp.counts; echo $count_TGT TGT >>temp.counts; echo $count_TGG TGG >>temp.counts; echo $count_TGC TGC >>temp.counts; echo $count_TCA TCA >>temp.counts; echo $count_TCT TCT >>temp.counts; echo $count_TCG TCG >>temp.counts; echo $count_TCC TCC >>temp.counts; echo $count_GAA GAA >>temp.counts; echo $count_GAT GAT >>temp.counts; echo $count_GAG GAG >>temp.counts; echo $count_GAC GAC >>temp.counts; echo $count_GTA GTA >>temp.counts; echo $count_GTT GTT >>temp.counts; echo $count_GTG GTG >>temp.counts; echo $count_GTC GTC >>temp.counts; echo $count_GGA GGA >>temp.counts; echo $count_GGT GGT >>temp.counts; echo $count_GGG GGG >>temp.counts; echo $count_GGC GGC >>temp.counts; echo $count_GCA GCA >>temp.counts; echo $count_GCT GCT >>temp.counts; echo $count_GCG GCG >>temp.counts; echo $count_GCC GCC >>temp.counts; echo $count_CAA CAA >>temp.counts; echo $count_CAT CAT >>temp.counts; echo $count_CAG CAG >>temp.counts; echo $count_CAC CAC >>temp.counts; echo $count_CTA CTA >>temp.counts; echo $count_CTT CTT >>temp.counts; echo $count_CTG CTG >>temp.counts; echo $count_CTC CTC >>temp.counts; echo $count_CGA CGA >>temp.counts; echo $count_CGT CGT >>temp.counts; echo $count_CGG CGG >>temp.counts; echo $count_CGC CGC >>temp.counts; echo $count_CCA CCA >>temp.counts; echo $count_CCT CCT >>temp.counts; echo $count_CCG CCG >>temp.counts; echo $count_CCC CCC >>temp.counts;

haps=`sort -k1n,1 temp.counts|awk '$1>10{print $0}'|sed 's/ /_/g'|tr "\n" ","`

echo $pos1 $pos2 $pos3 $count_AAA $count_AAT $count_AAG $count_AAC $count_ATA $count_ATT $count_ATG $count_ATC $count_AGA $count_AGT $count_AGG $count_AGC $count_ACA $count_ACT $count_ACG $count_ACC $count_TAA $count_TAT $count_TAG $count_TAC $count_TTA $count_TTT $count_TTG $count_TTC $count_TGA $count_TGT $count_TGG $count_TGC $count_TCA $count_TCT $count_TCG $count_TCC $count_GAA $count_GAT $count_GAG $count_GAC $count_GTA $count_GTT $count_GTG $count_GTC $count_GGA $count_GGT $count_GGG $count_GGC $count_GCA $count_GCT $count_GCG $count_GCC $count_CAA $count_CAT $count_CAG $count_CAC $count_CTA $count_CTT $count_CTG $count_CTC $count_CGA $count_CGT $count_CGG $count_CGC $count_CCA $count_CCT $count_CCG $count_CCC >> Dup2_3HDP_ONT_read_pair_count.txt
done

