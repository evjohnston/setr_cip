import pandas as pd
from bs4 import BeautifulSoup
import re
import os

# -------- CONFIGURE THIS --------
YEAR = "2017"
# --------------------------------

BASE_DIR = os.path.dirname(__file__)

# File paths based on your folder structure
RAW_CSV_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"SED{YEAR}_raw.csv")
COL_HTML_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"SED{YEAR}_column_mapping.html")
VAL_HTML_PATH = os.path.join(BASE_DIR, "SED_dataRaw", f"SED{YEAR}", f"SED{YEAR}_value_mapping.html")
OUTPUT_CSV_PATH = os.path.join(BASE_DIR, "SED_dataCleaned", f"SED{YEAR}_cleaned.csv")

# ------------------ Step 1: Load raw CSV ------------------ #
df = pd.read_csv(RAW_CSV_PATH, dtype=str)

# ------------------ Step 2: Load column labels ------------------ #
def extract_column_labels(html_path):
    label_dict = {}
    with open(html_path, 'r', encoding='utf-8') as f:
        soup = BeautifulSoup(f, 'html.parser')
        rows = soup.find_all('tr')
        for row in rows:
            cols = row.find_all('td')
            if len(cols) == 2:
                var = cols[0].get_text(strip=True)
                label = cols[1].get_text(strip=True)
                label_dict[var] = label
    return label_dict

column_labels = extract_column_labels(COL_HTML_PATH)
df.rename(columns=column_labels, inplace=True)

# ------------------ Step 3: Load value mappings (2017 structure) ------------------ #
def extract_value_mappings_2017(html_path):
    with open(html_path, 'r', encoding='utf-8') as f:
        soup = BeautifulSoup(f, 'html.parser')

    mappings = {}
    current_var = None

    tables = soup.find_all('table')
    for table in tables:
        # Detect the variable name table
        header = table.find('th', class_='varHeaderName')
        if header:
            current_var = header.get_text(strip=True)
            continue

        # Detect the tallies table (value mappings)
        if "tallies" in table.get("class", []) and current_var:
            value_map = {}
            rows = table.find_all('tr')[1:]  # skip table header
            for row in rows:
                cols = row.find_all('td')
                if len(cols) >= 2:
                    code = cols[0].get_text(strip=True).strip(':')
                    label = cols[1].get_text(strip=True)
                    if code and label:
                        value_map[code] = label
            if value_map:
                mappings[current_var] = value_map
            current_var = None
    return mappings

value_mappings = extract_value_mappings_2017(VAL_HTML_PATH)

# ------------------ Step 4: Apply value mappings ------------------ #
reverse_labels = {v: k for k, v in column_labels.items()}

for human_col_name in df.columns:
    original_var = reverse_labels.get(human_col_name)
    if original_var in value_mappings:
        df[human_col_name] = df[human_col_name].map(value_mappings[original_var]).fillna(df[human_col_name])

# ------------------ Step 5: Save final cleaned CSV ------------------ #
df.to_csv(OUTPUT_CSV_PATH, index=False)
print(f"✅ Done! Saved cleaned file to: {OUTPUT_CSV_PATH}")
