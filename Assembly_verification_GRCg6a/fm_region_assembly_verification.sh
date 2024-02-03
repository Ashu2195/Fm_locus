samtools view -b SRR15421342_3_4_5_SRR13494713_4_sorted.bam 20:10263555-11980000 > FM_region_nanopore_subseted.bam

bamToBed -i FM_region_nanopore_subseted.bam > FM_region_nanopore_subseted.bed

awk '{print $0,$3-$2}' FM_region_nanopore_subseted.bed  | awk '$7 >= 100000 {print $0}'  > FM_region_nanopore_subseted_100kb.bed
