import argparse
import random

def generate_haplotypes(ploidy, genome_size, density, output_prefix):
    if ploidy != 2:
        raise ValueError("This script currently supports only diploid (ploidy=2) genomes.")

    # Bases available for the genome
    bases = ['A', 'T', 'C', 'G']
    
    # Generate the first haplotype as a fully random sequence
    haplotype_1 = [random.choice(bases) for _ in range(genome_size)]
    
    # Copy the first haplotype to create the second one
    haplotype_2 = haplotype_1[:]
    
    # Calculate the number of haplotype-defining positions
    num_sites = int(genome_size * density)

    # Generate unique random positions for haplotype-defining sites
    positions = sorted(random.sample(range(1, genome_size + 1), num_sites))
    
    haplotype_sites = {}

    for pos in positions:
        original_base = haplotype_1[pos - 1]  # Convert to 0-based index
        available_bases = [b for b in bases if b != original_base]  # Ensure a different base
        new_base = random.choice(available_bases)
        
        haplotype_2[pos - 1] = new_base  # Apply change
        haplotype_sites[pos] = [original_base, new_base]

    # Write FASTA file
    fasta_filename = f"{output_prefix}.fasta"
    with open(fasta_filename, 'w') as fasta_file:
        fasta_file.write(f">haplotype_1\n")
        fasta_file.write("".join(haplotype_1) + "\n")
        fasta_file.write(f">haplotype_2\n")
        fasta_file.write("".join(haplotype_2) + "\n")

    # Write haplotype-defining positions using "_" as the separator
    positions_filename = f"{output_prefix}_haplotype_sites.txt"
    with open(positions_filename, 'w') as pos_file:
        for pos, site_bases in haplotype_sites.items():
            pos_file.write(f"{pos}_" + "_".join(site_bases) + "\n")

    print(f"Generated 2 haplotype sequences with {num_sites} defining positions.")
    print(f"FASTA file saved as {fasta_filename}")
    print(f"Haplotype sites saved as {positions_filename}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate a diploid genome with haplotype-defining positions.")
    parser.add_argument("--ploidy", type=int, required=True, help="Number of haplotypes (only 2 supported)")
    parser.add_argument("--genome_size", type=int, required=True, help="Genome size in base pairs")
    parser.add_argument("--density", type=float, required=True, help="Mean haplotype-defining position density (e.g., 0.01 for 1% of sites)")
    parser.add_argument("--output_prefix", type=str, required=True, help="Prefix for output files")

    args = parser.parse_args()

    if args.ploidy != 2:
        print("Error: This script currently supports only diploid (ploidy=2) genomes.")
    else:
        generate_haplotypes(args.ploidy, args.genome_size, args.density, args.output_prefix)

#python simulate_haplotypes.py --ploidy 2 --genome_size 1000000 --density 0.01 --output_prefix chicken_genome
#nanosim-h --min-len 10000 -p yeast --kmer-bias 0 chicken_genome.fasta
#samtools faidx chicken_genome.fasta haplotype_1 > H1.fa
#minimap2 -d H1.mmi H1.fa
#minimap2 -a H1.mmi simulated.fa -o output.sam
#samtools view -bS output.sam > output.bam
#samtools sort -o out.sorted.bam output.bam 
#samtools index out.sorted.bam
#python parse_bam_commented.py out.sorted.bam output.txt
#cat output.txt |tr "," "|"|sed 's/(//g'|sed 's/)//g'|sed "s/'//g"|sed 's/ //g' > output.formatted
#python read_summary.py chicken_genome_haplotype_sites.txt output.formatted > read.summary.txt
#cat read.summary.txt|awk 'NF==4{print $0}' > read.counts.txt
#cat read.summary.txt|awk 'NF==5{print $0}' > read.assignments.txt

#per=60
#awk -v per="$per" 'BEGIN { h1_correct=0; h2_correct=0; h1_wrong=0; h2_wrong=0 } { total=$2+$3+$4; if (total>0) { h1_pct=($2/total)*100; h2_pct=($3/total)*100; if ($1 ~ /^haplotype-1/) { if (h1_pct > per) h1_correct++; else h1_wrong++; } if ($1 ~ /^haplotype-2/) { if (h2_pct > per) h2_correct++; else h2_wrong++; } } } END { print "H1 correct:", h1_correct, "H2 correct:", h2_correct, "H1 wrong:", h1_wrong, "H2 wrong:", h2_wrong }' read.counts.txt
