import sys
from collections import defaultdict

def parse_haplotype_file(haplotype_file):
    haplotype_dict = {}
    with open(haplotype_file, 'r') as file:
        for line in file:
            line = line.strip()
            if not line:
                continue
            parts = line.split("_")
            if len(parts) != 3:
                continue
            position, hap1, hap2 = parts
            haplotype_dict[position] = (hap1.upper(), hap2.upper())
    return haplotype_dict

def count_bases(haplotype_dict, read_file):
    read_counts = defaultdict(lambda: {'hap1': 0, 'hap2': 0, 'other': 0})
    
    with open(read_file, 'r') as file:
        for line in file:
            line = line.strip()
            if not line:
                continue
            parts = line.split("\t")
            if len(parts) != 2:
                continue
            read_info, base = parts
            read_id, _, position = read_info.rsplit("|", 2)
            base = base.upper()
            
            if position in haplotype_dict:
                hap1, hap2 = haplotype_dict[position]
                matched_haplotype = "other"
                if base == hap1:
                    read_counts[read_id]['hap1'] += 1
                    matched_haplotype = "hap1"
                elif base == hap2:
                    read_counts[read_id]['hap2'] += 1
                    matched_haplotype = "hap2"
                else:
                    read_counts[read_id]['other'] += 1
                print(f"{read_id}\t{position}\t{matched_haplotype}\t{base}\t{hap1}/{hap2}")
    return read_counts

def print_results(read_counts):
    print("Read_ID\tHap1_Count\tHap2_Count\tOther_Count")
    for read_id, counts in read_counts.items():
        print(f"{read_id}\t{counts['hap1']}\t{counts['hap2']}\t{counts['other']}")

def main():
    if len(sys.argv) != 3:
        print("Usage: python script.py <haplotype_file> <read_file>")
        sys.exit(1)
    
    haplotype_file = sys.argv[1]
    read_file = sys.argv[2]
    
    haplotype_dict = parse_haplotype_file(haplotype_file)
    read_counts = count_bases(haplotype_dict, read_file)
    print_results(read_counts)

if __name__ == "__main__":
    main()
