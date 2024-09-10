# Install Biostrings package if you haven't
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("Biostrings")

# Load the Biostrings package
library(Biostrings)

# Specify the path to your genome FASTA file
fasta_file <- "path/to/your/file.fasta"

# Read the genome sequence from the FASTA file
genome <- readDNAStringSet(fasta_file)

# Display the first few sequences
genome

# Access individual sequences using indexing
sequence1 <- genome[[1]]  # First sequence

# Get the nucleotide count (A, T, G, C) in the first sequence
nucleotide_count <- letterFrequency(sequence1, letters = c("A", "T", "G", "C"))

# Print the nucleotide count
print(nucleotide_count)

# Get GC content (percentage of G and C nucleotides) in the first sequence
gc_content <- (nucleotide_count["G"] + nucleotide_count["C"]) / sum(nucleotide_count) * 100

# Print the GC content
print(gc_content)

# Create a sample DNA sequence or read it from a FASTA file
dna_sequence <- DNAString("ATGCGATCGTACGATCGGCTAGCTAGGCTA")

# Define the pattern/motif you want to search for (e.g., 'GATCG')
motif <- "GATCG"

# Print the result, including start positions of matches
pattern_matches

# Get the start positions of the matched motifs
match_start_positions <- start(pattern_matches)

# Count how many times the motif appears
motif_count <- countPattern(motif, dna_sequence)