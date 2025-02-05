import pysam
import sys

def parse_bam(bam_file, output_file):
    bam = pysam.AlignmentFile(bam_file, "rb")
    base_dict = {}
    
    with open(output_file, "w") as out:
        for read in bam.fetch():
            if read.is_unmapped:
                continue
            
            read_id = read.query_name
            chrom = read.reference_name
            
            ref_pos = read.reference_start  # 0-based
            read_pos = 0
            
            for cigar_op, length in read.cigartuples:
                if cigar_op == 0:  # Match or Mismatch
                    for i in range(length):
                        base = read.query_sequence[read_pos + i]
                        key = (read_id, chrom, ref_pos + i + 1)  # 1-based position
                        base_dict[key] = base
                        out.write(f"{key}\t{base}\n")
                    ref_pos += length
                    read_pos += length
                elif cigar_op == 1:  # Insertion
                    read_pos += length
                elif cigar_op == 2:  # Deletion
                    ref_pos += length
                elif cigar_op in (4, 5):  # Soft/Hard clipping
                    read_pos += length if cigar_op == 4 else 0
    
    bam.close()

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python parse_bam.py <input.bam> <output.txt>")
        sys.exit(1)
    
    bam_file = sys.argv[1]
    output_file = sys.argv[2]
    parse_bam(bam_file, output_file)
