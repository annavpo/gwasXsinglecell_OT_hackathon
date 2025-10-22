import pandas as pd

# Load original summary stats
sumstats = pd.read_csv("summary_stats.txt", sep="\t")

# Load CrossMap output (lifted BED)
lifted = pd.read_csv("output.bed", sep="\t", header=None, names=["chr", "start", "end", "MarkerName"])

# Convert to 1-based position
lifted["new_chr"] = lifted["chr"].str.replace("chr", "", regex=False)
lifted["new_pos"] = lifted["end"]

# Merge on MarkerName (rsID)
merged = sumstats.merge(lifted[["MarkerName", "new_chr", "new_pos"]], on="MarkerName", how="inner")

# Replace CHR and POS
merged["CHR"] = merged["new_chr"]
merged["POS"] = merged["new_pos"]
merged = merged.drop(columns=["new_chr", "new_pos"])

# Save to new file
merged.to_csv("summary_stats_hg38.txt", sep="\t", index=False)
