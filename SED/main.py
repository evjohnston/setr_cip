import pandas as pd
from bs4 import BeautifulSoup
import re
import os

# ------------------ CONFIG ------------------ #
year = 2023
base = f'SED{year}'

folder_raw = os.path.join('SED_dataRaw', base)
folder_clean = 'SED_dataCleaned'

csv_file = os.path.join(folder_raw, f'{base}_raw.csv')
column_map_file = os.path.join(folder_raw, f'{base}_column_mapping.html')
value_map_file = os.path.join(folder_raw, f'{base}_value_mapping.html')
output_file = os.path.join(folder_clean, f'{base}_cleaned.csv')

# ------------------ Step 1: Load raw CSV ------------------ #
df = pd.read_csv(csv_file, dtype=str)

# ------------------ Step 2: Extract column labels ------------------ #
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

column_labels = extract_column_labels(column_map_file)
df.rename(columns=column_labels, inplace=True)

# ------------------ Step 3: Extract value mappings ------------------ #
def extract_value_mappings(html_path):
    with open(html_path, 'r', encoding='utf-8') as f:
        soup = BeautifulSoup(f, 'html.parser')

    mappings = {}
    current_var = None

    for table in soup.find_all('table'):
        header = table.find('td', string=re.compile(r'^Variable:', re.IGNORECASE))
        if header:
            b_tag = header.find_next('b')
            if b_tag:
                current_var = b_tag.text.strip()
        elif current_var:
            rows = table.find_all('tr')
            value_map = {}
            for row in rows:
                cols = row.find_all('td')
                if len(cols) >= 2:
                    code = cols[0].text.strip().strip(':')
                    label = cols[1].text.strip()
                    if code and label:
                        value_map[code] = label
            if value_map:
                mappings[current_var] = value_map
    return mappings

value_mappings = extract_value_mappings(value_map_file)

# ------------------ Step 4: Apply value mappings ------------------ #
reverse_labels = {v: k for k, v in column_labels.items()}

for human_col_name in df.columns:
    original_var = reverse_labels.get(human_col_name)
    if original_var in value_mappings:
        df[human_col_name] = df[human_col_name].map(value_mappings[original_var]).fillna(df[human_col_name])

# ------------------ Step 5: Save cleaned output ------------------ #
os.makedirs(folder_clean, exist_ok=True)
df.to_csv(output_file, index=False)

print(f"✅ Cleaned data saved to: {output_file}")
