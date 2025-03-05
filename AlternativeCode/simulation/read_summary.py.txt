# read_summary.py
# Purpose: This script processes haplotype information and read data to count base occurrences in relation to two haplotypes.
# Author: [Dr. Ashutosh Sharma with the assistance of AI]
# Date: [2025-02-03]
# Description: The script reads a haplotype definition file and a read data file, matches read bases against haplotypes,
# counts occurrences per read, and outputs a summary of haplotype-specific base matches.
# Usage: python read_summary.py <haplotype_file> <read_file>

import sys  # Importing sys module to handle command-line arguments
from collections import defaultdict  # Importing defaultdict to simplify dictionary initialization


def parse_haplotype_file(haplotype_file):
    """
    Reads a haplotype file and stores haplotype definitions in a dictionary.
    :param haplotype_file: Path to the haplotype definition file
    :return: Dictionary mapping genomic positions to haplotype base pairs (hap1, hap2)
    """
    haplotype_dict = {}  # Dictionary to store haplotype data
    with open(haplotype_file, 'r') as file:  # Open the haplotype file for reading
        for line in file:  # Iterate through each line in the file
            line = line.strip()  # Remove any leading/trailing whitespace
            if not line:  # Skip empty lines
                continue
            parts = line.split("_")  # Split the line by underscores (assumed format: position_hap1_hap2)
            if len(parts) != 3:  # Ensure correct formatting with three parts
                continue
            position, hap1, hap2 = parts  # Extract genomic position and haplotype bases
            haplotype_dict[position] = (hap1.upper(), hap2.upper())  # Store in dictionary, ensuring uppercase bases
    return haplotype_dict  # Return the dictionary of haplotype mappings


def count_bases(haplotype_dict, read_file):
    """
    Reads a file containing read data and counts occurrences of bases matching haplotypes.
    :param haplotype_dict: Dictionary containing haplotype definitions
    :param read_file: Path to the file containing read data
    :return: Dictionary mapping read IDs to counts of hap1, hap2, and other mismatched bases
    """
    read_counts = defaultdict(lambda: {'hap1': 0, 'hap2': 0, 'other': 0})  # Default dictionary to store counts
    
    with open(read_file, 'r') as file:  # Open the read file for reading
        for line in file:  # Iterate through each line in the file
            line = line.strip()  # Remove leading/trailing whitespace
            if not line:  # Skip empty lines
                continue
            parts = line.split("\t")  # Split the line by tab character
            if len(parts) != 2:  # Ensure correct formatting with two parts
                continue
            read_info, base = parts  # Extract read metadata and base
            read_id, _, position = read_info.rsplit("|", 2)  # Extract read ID and genomic position
            base = base.upper()  # Convert base to uppercase for consistency
            
            if position in haplotype_dict:  # Check if the position exists in haplotype dictionary
                hap1, hap2 = haplotype_dict[position]  # Retrieve corresponding haplotype bases
                matched_haplotype = "other"  # Default classification is "other" (mismatch)
                if base == hap1:
                    read_counts[read_id]['hap1'] += 1  # Increment hap1 match count
                    matched_haplotype = "hap1"
                elif base == hap2:
                    read_counts[read_id]['hap2'] += 1  # Increment hap2 match count
                    matched_haplotype = "hap2"
                else:
                    read_counts[read_id]['other'] += 1  # Increment mismatch count
                print(f"{read_id}\t{position}\t{matched_haplotype}\t{base}\t{hap1}/{hap2}")  # Output match info
    return read_counts  # Return the dictionary of read base counts


def print_results(read_counts):
    """
    Prints the summary of haplotype matches per read.
    :param read_counts: Dictionary mapping read IDs to base count statistics
    """
    print("Read_ID\tHap1_Count\tHap2_Count\tOther_Count")  # Print table header
    for read_id, counts in read_counts.items():  # Iterate through read IDs and their base counts
        print(f"{read_id}\t{counts['hap1']}\t{counts['hap2']}\t{counts['other']}")  # Print formatted output


def main():
    """
    Main function to handle input arguments, parse files, and execute the processing pipeline.
    """
    if len(sys.argv) != 3:  # Check if correct number of arguments are provided
        print("Usage: python script.py <haplotype_file> <read_file>")  # Print usage instructions
        sys.exit(1)  # Exit script with error code
    
    haplotype_file = sys.argv[1]  # Get haplotype file path from command-line arguments
    read_file = sys.argv[2]  # Get read file path from command-line arguments
    
    haplotype_dict = parse_haplotype_file(haplotype_file)  # Parse haplotype file into dictionary
    read_counts = count_bases(haplotype_dict, read_file)  # Process read file and count base occurrences
    print_results(read_counts)  # Output results


if __name__ == "__main__":  # Standard Python script entry point
    main()  # Execute the main function
