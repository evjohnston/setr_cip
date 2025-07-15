import pandas as pd
import os
import re

# -------- CONFIGURE THIS --------
YEAR = "2010"
YEAR_SHORT = YEAR[-2:]
# --------------------------------

BASE_DIR = os.path.dirname(__file__)
RAW_CSV_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"SED{YEAR}_raw.csv")
OUTPUT_CSV_PATH = os.path.join(BASE_DIR, "SED_dataCleaned", f"SED{YEAR}_cleaned.csv")
FPSD_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", "sas_read_outputs", f"fpsd{YEAR_SHORT}.txt")
PPSD_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", "sas_read_outputs", f"ppsd{YEAR_SHORT}.txt")
COLUMN_MAP_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"DPSD{YEAR_SHORT}.csv")

SAS_FOLDER = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}")

# Create output folder to store readable versions
OUTPUT_FOLDER = os.path.join(SAS_FOLDER, "sas_read_outputs")
os.makedirs(OUTPUT_FOLDER, exist_ok=True)

# List all .sas files
sas_files = [f for f in os.listdir(SAS_FOLDER) if f.lower().endswith(".sas")]

for sas_file in sas_files:
    file_path = os.path.join(SAS_FOLDER, sas_file)
    with open(file_path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()

    print(f"----- {sas_file} -----\n")
    print(content[:1000])  # print only the first 1000 characters for preview
    print("\n\n")

    # Optional: write to .txt for easier inspection
    output_path = os.path.join(OUTPUT_FOLDER, sas_file.replace(".sas", ".txt"))
    with open(output_path, "w", encoding="utf-8") as out:
        out.write(content)

print(f"\n✅ Done. Saved readable copies to: {OUTPUT_FOLDER}")


# ------------------ Step 1: Load raw data ------------------ #
df = pd.read_csv(RAW_CSV_PATH, dtype=str)

# ------------------ Step 2: Parse format mapping (fpsd13.txt) ------------------ #
col_to_fmt = {}
with open(FPSD_PATH, "r", encoding="utf-8") as f:
    for line in f:
        match = re.match(r"FORMAT\s+(\w+)\s+(\$?\w+)\.", line.strip(), flags=re.IGNORECASE)
        if match:
            col, fmt = match.groups()
            col_to_fmt[col.strip()] = fmt.strip().lstrip("$").upper()

# ------------------ Step 3: Parse value mappings (ppsd13.txt) ------------------ #
def parse_ppsd(path):
    mappings = {}
    current_fmt = None
    with open(path, "r", encoding="utf-8") as f:
        for line in f:
            if "VALUE" in line:
                match = re.search(r'VALUE\s+(\$?\w+)', line)
                if match:
                    current_fmt = match.group(1).lstrip("$").strip().upper()
                    mappings[current_fmt] = {}
            elif current_fmt and "=" in line:
                parts = re.split(r'\s*=\s*', line.strip(), maxsplit=1)
                if len(parts) == 2:
                    key = parts[0].strip().strip('"\'')
                    val = parts[1].strip().strip('"\'')
                    val_clean = re.sub(r'^[A-Z0-9\"\'\.]+\s*:\s*', '', val).strip()
                    mappings[current_fmt][key] = val_clean
            elif ";" in line:
                current_fmt = None
    return mappings

value_mappings = parse_ppsd(PPSD_PATH)

# ------------------ Step 4: Apply value mappings ------------------ #
for col in df.columns:
    fmt = col_to_fmt.get(col)
    if fmt and fmt in value_mappings:
        df[col] = df[col].map(value_mappings[fmt]).fillna(df[col])

# ------------------ Step 5: Column renaming from DPSD13.csv ------------------ #
label_df = pd.read_csv(COLUMN_MAP_PATH, dtype=str)
sas_to_label = dict(zip(label_df["SAS_NAME"], label_df["DESCRIPTION"]))
df.rename(columns=sas_to_label, inplace=True)

# ------------------ Step 6: Save cleaned CSV ------------------ #
os.makedirs(os.path.dirname(OUTPUT_CSV_PATH), exist_ok=True)
df.to_csv(OUTPUT_CSV_PATH, index=False)
print(f"✅ Cleaned CSV saved to: {OUTPUT_CSV_PATH}")
