# parse_bam.py
# Purpose: This script reads a BAM file, extracts aligned base information, and saves it to an output file.
# Author: [Dr. Ashutosh Sharma with the assistance of AI]
# Date: [2025-02-03]
# Description: The script parses alignment data, processes CIGAR strings to extract matches, insertions, and deletions,
# and outputs base-level information for further analysis.
# Usage: python parse_bam.py <input.bam> <output.txt>

import pysam  # Importing the pysam library, which provides tools for reading, writing, and processing BAM/SAM files
import sys  # Importing the sys module to handle command-line arguments


def parse_bam(bam_file, output_file):
    """
    Function to parse a BAM file, extract aligned base information, and save it to an output file.
    :param bam_file: Path to the input BAM file (binary alignment format)
    :param output_file: Path to the output file where parsed information will be saved
    """
    bam = pysam.AlignmentFile(bam_file, "rb")  # Open the BAM file in read-binary mode
    base_dict = {}  # Dictionary to store base information indexed by (read_id, chromosome, position)
    
    # Open the output file in write mode
    with open(output_file, "w") as out:
        for read in bam.fetch():  # Iterate over all aligned reads in the BAM file
            if read.is_unmapped:  # Skip reads that are not mapped to any reference sequence
                continue
            
            read_id = read.query_name  # Extract the read's identifier (query name)
            chrom = read.reference_name  # Extract the name of the chromosome/reference sequence
            
            ref_pos = read.reference_start  # Get the reference position where the read starts (0-based index)
            read_pos = 0  # Initialize the read position (used to track insertions and matches)
            
            # Iterate over CIGAR tuples, which describe how the read aligns to the reference
            for cigar_op, length in read.cigartuples:
                if cigar_op == 0:  # 'M' (Match or Mismatch) operation in CIGAR string
                    for i in range(length):  # Loop through all bases in the match/mismatch segment
                        base = read.query_sequence[read_pos + i]  # Get the base from the read's sequence
                        key = (read_id, chrom, ref_pos + i + 1)  # Convert 0-based ref_pos to 1-based position
                        base_dict[key] = base  # Store the base in the dictionary
                        out.write(f"{key}\t{base}\n")  # Write the data to the output file
                    ref_pos += length  # Move the reference position forward
                    read_pos += length  # Move the read position forward
                elif cigar_op == 1:  # 'I' (Insertion in the read relative to reference)
                    read_pos += length  # Skip over the inserted bases in the read
                elif cigar_op == 2:  # 'D' (Deletion from the reference)
                    ref_pos += length  # Move the reference position forward, but the read position stays the same
                elif cigar_op in (4, 5):  # 'S' (Soft clipping) or 'H' (Hard clipping)
                    read_pos += length if cigar_op == 4 else 0  # Soft-clipping affects read position, hard-clipping doesn't
    
    bam.close()  # Close the BAM file to free up resources


if __name__ == "__main__":  # Standard Python script entry point
    if len(sys.argv) != 3:  # Ensure that exactly two command-line arguments are provided
        print("Usage: python parse_bam.py <input.bam> <output.txt>")  # Print usage instructions
        sys.exit(1)  # Exit the script with an error code
    
    bam_file = sys.argv[1]  # Get the BAM file path from command-line arguments
    output_file = sys.argv[2]  # Get the output file path from command-line arguments
    parse_bam(bam_file, output_file)  # Call the function to process the BAM file
