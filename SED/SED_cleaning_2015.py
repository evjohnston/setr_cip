import pandas as pd
import os
import re

# -------- CONFIGURE THIS --------
YEAR = "2015"
YEAR_SHORT = YEAR[-2:]  # "15"
# --------------------------------

BASE_DIR = os.path.dirname(__file__)
RAW_CSV_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"SED{YEAR}_raw.csv")
XLSX_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"Dpsd{YEAR_SHORT}.xlsx")
CSV_CONVERTED_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"dpsd{YEAR_SHORT}.csv")
SAS_FOLDER = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}")
OUTPUT_CSV_PATH = os.path.join(BASE_DIR, "SED_dataCleaned", f"SED{YEAR}_cleaned.csv")
SAS_TXT_FOLDER = os.path.join(SAS_FOLDER, "sas_read_outputs")
os.makedirs(SAS_TXT_FOLDER, exist_ok=True)

# ------------------ Step 1: Convert Excel to CSV ------------------ #
print(f"📤 Converting Excel to CSV: {CSV_CONVERTED_PATH}")
xlsx_df = pd.read_excel(XLSX_PATH)
xlsx_df.to_csv(CSV_CONVERTED_PATH, index=False)
print("✅ Excel converted to CSV")

# ------------------ Step 2: Convert .sas files to .txt ------------------ #
sas_files = [f for f in os.listdir(SAS_FOLDER) if f.lower().endswith(".sas")]
for sas_file in sas_files:
    file_path = os.path.join(SAS_FOLDER, sas_file)
    with open(file_path, "r", encoding="utf-8", errors="ignore") as f:
        content = f.read()
    output_path = os.path.join(SAS_TXT_FOLDER, sas_file.replace(".sas", ".txt"))
    with open(output_path, "w", encoding="utf-8") as out:
        out.write(content)
print(f"✅ Converted SAS files to text: {SAS_TXT_FOLDER}")

# ------------------ Step 3: Load raw data ------------------ #
df = pd.read_csv(RAW_CSV_PATH, dtype=str)

# ------------------ Step 4: Load variable metadata ------------------ #
label_df = pd.read_excel(XLSX_PATH)[["SAS_NAME", "DESCRIPTION", "SAS_FMT"]]
label_df["SAS_FMT"] = label_df["SAS_FMT"].astype(str).str.strip().str.lstrip("$").str.upper()
sas_to_label = dict(zip(label_df["SAS_NAME"], label_df["DESCRIPTION"]))
sas_to_fmt = dict(zip(label_df["SAS_NAME"], label_df["SAS_FMT"]))

# ------------------ Step 5: Parse value mappings ------------------ #
FORMAT_TXT_PATH = os.path.join(SAS_TXT_FOLDER, "Ppsd15.txt")

def parse_format_txt(path):
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
                parts = re.split(r"\s*=\s*", line.strip(), maxsplit=1)
                if len(parts) == 2:
                    key = parts[0].strip().strip('"\'')
                    val = parts[1].strip().strip('"\'')
                    val_clean = re.sub(r"^[A-Z0-9\"']+\s*:\s*", "", val).strip()
                    mappings[current_fmt][key] = val_clean
            if ";" in line:
                current_fmt = None
    return mappings

sas_mappings = parse_format_txt(FORMAT_TXT_PATH)

# ------------------ Step 6: Apply value mappings ------------------ #
fallbacks = {
    "YNL": {"Y": "Yes", "N": "No", "L": "Logical skip"},
    "12": {"1": "Yes", "2": "No"},
    "01": {"0": "No", "1": "Yes"},
}

for col in df.columns:
    fmt = sas_to_fmt.get(col)
    if fmt and fmt in sas_mappings:
        df[col] = df[col].map(sas_mappings[fmt]).fillna(df[col])
    else:
        values = set(df[col].dropna().unique())
        if values <= {"Y", "N", "L"}:
            df[col] = df[col].map(fallbacks["YNL"]).fillna(df[col])
        elif values <= {"1", "2"}:
            df[col] = df[col].map(fallbacks["12"]).fillna(df[col])
        elif values <= {"0", "1"}:
            df[col] = df[col].map(fallbacks["01"]).fillna(df[col])

# ------------------ Step 7: Rename columns ------------------ #
df.rename(columns=sas_to_label, inplace=True)

# ------------------ Step 8: Save cleaned CSV ------------------ #
df.to_csv(OUTPUT_CSV_PATH, index=False)
print(f"✅ Cleaned CSV saved to: {OUTPUT_CSV_PATH}")
