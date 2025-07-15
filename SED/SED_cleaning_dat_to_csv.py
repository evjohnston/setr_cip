import pandas as pd
import re
import os

# -------- CONFIGURE THIS --------
year = "2021"  # Use full year (e.g., "2019", "2021", "2023")
# --------------------------------

short_year = year[-2:]  # For files like EPSD21.DAT
base_dir = os.path.dirname(__file__)
year_dir = f"SED{year}"

# Build file paths
layout_file = os.path.join(base_dir, "SED_dataRaw", year_dir, f"LAYOUTPSD{short_year}.TXT")
dat_file = os.path.join(base_dir, "SED_dataRaw", year_dir, f"EPSD{short_year}.DAT")
output_csv = os.path.join(base_dir, "SED_dataCleaned", f"SED{year}_cleaned.csv")

# Parse layout file to get column specs
layout_lines = []
with open(layout_file, "r", encoding="utf-8") as f:
    for line in f:
        match = re.match(r"^(\w+)\s+\d+\s+\S+\s+(\d+)\s+(\d+)", line)
        if match:
            name, start, end = match.groups()
            layout_lines.append((name, int(start) - 1, int(end)))  # 0-based indexing

# Build column specs and names
colspecs = [(start, end) for _, start, end in layout_lines]
colnames = [name for name, _, _ in layout_lines]

# Read the .DAT file
print(f"📂 Reading: {dat_file}")
df = pd.read_fwf(dat_file, colspecs=colspecs, names=colnames)

# Save to CSV
df.to_csv(output_csv, index=False)
print(f"✅ Done! Saved cleaned file to: {output_csv}")
