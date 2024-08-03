####DUP1_Phasing
##HAP1

for i in `cat dup1_HAP1_pair`
do
pos1=`echo $i |sed 's/_/\t/g'|cut -f1`
pos2=`echo $i |sed 's/_/\t/g'|cut -f2`
#echo $pos1 $pos2

count_AA=`cat "$pos1"_hapA.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AT=`cat "$pos1"_hapA.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AG=`cat "$pos1"_hapA.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AC=`cat "$pos1"_hapA.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_TA=`cat "$pos1"_hapT.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TT=`cat "$pos1"_hapT.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TG=`cat "$pos1"_hapT.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TC=`cat "$pos1"_hapT.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_GA=`cat "$pos1"_hapG.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GT=`cat "$pos1"_hapG.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GG=`cat "$pos1"_hapG.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GC=`cat "$pos1"_hapG.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_CA=`cat "$pos1"_hapC.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CT=`cat "$pos1"_hapC.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CG=`cat "$pos1"_hapC.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CC=`cat "$pos1"_hapC.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


echo $count_AA AA > temp.counts; echo $count_AT AT >> temp.counts; echo $count_AG AG >> temp.counts; echo $count_AC AC >> temp.counts; echo $count_TA TA >> temp.counts; echo $count_TT TT >> temp.counts; echo $count_TG TG >> temp.counts; echo $count_TC TC >> temp.counts; echo $count_GA GA >> temp.counts; echo $count_GT GT >> temp.counts; echo $count_GG GG >> temp.counts; echo $count_GC GC >> temp.counts; echo $count_CA CA >> temp.counts; echo $count_CT CT >> temp.counts; echo $count_CG CG >> temp.counts; echo $count_CC CC >> temp.counts;

haps=`sort -k1n,1 temp.counts|awk '$1>5{print $0}'|sed 's/ /_/g'|tr "\n" ","`

echo $pos1 $pos2 $count_AA $count_AT $count_AG $count_AC $count_TA $count_TT $count_TG $count_TC $count_GA $count_GT $count_GG $count_GC $count_CA $count_CT $count_CG $count_CC $haps
done
###HAP2
for i in `cat dup1_HAP2_pair`
do
pos1=`echo $i |sed 's/_/\t/g'|cut -f1`
pos2=`echo $i |sed 's/_/\t/g'|cut -f2`
#echo $pos1 $pos2

count_AA=`cat "$pos1"_hapA.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AT=`cat "$pos1"_hapA.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AG=`cat "$pos1"_hapA.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AC=`cat "$pos1"_hapA.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_TA=`cat "$pos1"_hapT.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TT=`cat "$pos1"_hapT.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TG=`cat "$pos1"_hapT.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TC=`cat "$pos1"_hapT.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_GA=`cat "$pos1"_hapG.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GT=`cat "$pos1"_hapG.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GG=`cat "$pos1"_hapG.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GC=`cat "$pos1"_hapG.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_CA=`cat "$pos1"_hapC.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CT=`cat "$pos1"_hapC.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CG=`cat "$pos1"_hapC.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CC=`cat "$pos1"_hapC.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


echo $count_AA AA > temp.counts; echo $count_AT AT >> temp.counts; echo $count_AG AG >> temp.counts; echo $count_AC AC >> temp.counts; echo $count_TA TA >> temp.counts; echo $count_TT TT >> temp.counts; echo $count_TG TG >> temp.counts; echo $count_TC TC >> temp.counts; echo $count_GA GA >> temp.counts; echo $count_GT GT >> temp.counts; echo $count_GG GG >> temp.counts; echo $count_GC GC >> temp.counts; echo $count_CA CA >> temp.counts; echo $count_CT CT >> temp.counts; echo $count_CG CG >> temp.counts; echo $count_CC CC >> temp.counts;

haps=`sort -k1n,1 temp.counts|awk '$1>5{print $0}'|sed 's/ /_/g'|tr "\n" ","`

echo $pos1 $pos2 $count_AA $count_AT $count_AG $count_AC $count_TA $count_TT $count_TG $count_TC $count_GA $count_GT $count_GG $count_GC $count_CA $count_CT $count_CG $count_CC $haps
done


####DUP2_Phasing
##HAP1
for i in `cat dup2_HAP1_pair`
do
pos1=`echo $i |sed 's/_/\t/g'|cut -f1`
pos2=`echo $i |sed 's/_/\t/g'|cut -f2`
#echo $pos1 $pos2

count_AA=`cat "$pos1"_hapA.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AT=`cat "$pos1"_hapA.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AG=`cat "$pos1"_hapA.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AC=`cat "$pos1"_hapA.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_TA=`cat "$pos1"_hapT.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TT=`cat "$pos1"_hapT.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TG=`cat "$pos1"_hapT.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TC=`cat "$pos1"_hapT.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_GA=`cat "$pos1"_hapG.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GT=`cat "$pos1"_hapG.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GG=`cat "$pos1"_hapG.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GC=`cat "$pos1"_hapG.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_CA=`cat "$pos1"_hapC.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CT=`cat "$pos1"_hapC.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CG=`cat "$pos1"_hapC.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CC=`cat "$pos1"_hapC.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


echo $count_AA AA > temp.counts; echo $count_AT AT >> temp.counts; echo $count_AG AG >> temp.counts; echo $count_AC AC >> temp.counts; echo $count_TA TA >> temp.counts; echo $count_TT TT >> temp.counts; echo $count_TG TG >> temp.counts; echo $count_TC TC >> temp.counts; echo $count_GA GA >> temp.counts; echo $count_GT GT >> temp.counts; echo $count_GG GG >> temp.counts; echo $count_GC GC >> temp.counts; echo $count_CA CA >> temp.counts; echo $count_CT CT >> temp.counts; echo $count_CG CG >> temp.counts; echo $count_CC CC >> temp.counts;

haps=`sort -k1n,1 temp.counts|awk '$1>5{print $0}'|sed 's/ /_/g'|tr "\n" ","`

echo $pos1 $pos2 $count_AA $count_AT $count_AG $count_AC $count_TA $count_TT $count_TG $count_TC $count_GA $count_GT $count_GG $count_GC $count_CA $count_CT $count_CG $count_CC $haps
done

##HAP2
for i in `cat dup2_HAP2_pair`
do
pos1=`echo $i |sed 's/_/\t/g'|cut -f1`
pos2=`echo $i |sed 's/_/\t/g'|cut -f2`
#echo $pos1 $pos2

count_AA=`cat "$pos1"_hapA.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AT=`cat "$pos1"_hapA.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AG=`cat "$pos1"_hapA.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_AC=`cat "$pos1"_hapA.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_TA=`cat "$pos1"_hapT.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TT=`cat "$pos1"_hapT.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TG=`cat "$pos1"_hapT.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_TC=`cat "$pos1"_hapT.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_GA=`cat "$pos1"_hapG.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GT=`cat "$pos1"_hapG.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GG=`cat "$pos1"_hapG.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_GC=`cat "$pos1"_hapG.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


count_CA=`cat "$pos1"_hapC.list "$pos2"_hapA.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CT=`cat "$pos1"_hapC.list "$pos2"_hapT.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CG=`cat "$pos1"_hapC.list "$pos2"_hapG.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`
count_CC=`cat "$pos1"_hapC.list "$pos2"_hapC.list|sort|uniq -c|awk '$1>1{print $0}'|wc -l`


echo $count_AA AA > temp.counts; echo $count_AT AT >> temp.counts; echo $count_AG AG >> temp.counts; echo $count_AC AC >> temp.counts; echo $count_TA TA >> temp.counts; echo $count_TT TT >> temp.counts; echo $count_TG TG >> temp.counts; echo $count_TC TC >> temp.counts; echo $count_GA GA >> temp.counts; echo $count_GT GT >> temp.counts; echo $count_GG GG >> temp.counts; echo $count_GC GC >> temp.counts; echo $count_CA CA >> temp.counts; echo $count_CT CT >> temp.counts; echo $count_CG CG >> temp.counts; echo $count_CC CC >> temp.counts;

haps=`sort -k1n,1 temp.counts|awk '$1>5{print $0}'|sed 's/ /_/g'|tr "\n" ","`

echo $pos1 $pos2 $count_AA $count_AT $count_AG $count_AC $count_TA $count_TT $count_TG $count_TC $count_GA $count_GT $count_GG $count_GC $count_CA $count_CT $count_CG $count_CC $haps
done


