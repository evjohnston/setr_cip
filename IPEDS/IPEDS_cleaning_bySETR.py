import pandas as pd
import os
from bs4 import BeautifulSoup
from IPEDS_utilities import setr_cip_map

YEAR = 2023

df = pd.read_csv(f"IPEDS/IPEDS_dataCleaned/{YEAR}_cleaned.csv")
df.columns = df.columns.str.strip()
df["CIPCode"] = df["CIPCode"].astype(float)
df["CIPField"] = df["CIPField"].astype(str).str.strip().fillna("")

mapping_df = pd.DataFrame([{"SETR Category": setr, "CIPCode": float(cip)} for setr, cips in setr_cip_map.items() for cip in cips])

df_filtered = df[df["CIPCode"].isin(mapping_df["CIPCode"])]
df_merged = df_filtered.merge(mapping_df, on="CIPCode")
df_merged["CIPField"] = df_merged["CIPField"].astype(str).str.strip().fillna("")

df_merged["U.S. Resident/Citizen total"] = df_merged[[c for c in df.columns if "total" in c.lower() and "nonresident" not in c.lower() and "grand" not in c.lower()]].sum(axis=1)
df_merged["U.S. Resident/Citizen men"] = df_merged[[c for c in df.columns if "men" in c.lower() and "nonresident" not in c.lower() and "grand" not in c.lower()]].sum(axis=1)
df_merged["U.S. Resident/Citizen women"] = df_merged[[c for c in df.columns if "women" in c.lower() and "nonresident" not in c.lower() and "grand" not in c.lower()]].sum(axis=1)

award_order = [
    "Postsecondary certificate < 60 semester credit hours", "Postsecondary certificate > 60 semester credit hours",
    "Associate's degree", "Bachelor's degree", "Master's degree",
    "Doctor's degree – research/scholarship", "Doctor's degree – professional practice",
    "Doctor's degree – other", "Postbaccalaureate certificate", "Post-master's certificate"
]

summary = df_merged.groupby(
    ["SETR Category", "CIPCode", "CIPField", "Award level"]
)[[
    "Grand total", "Grand total men", "Grand total women",
    "U.S. Resident/Citizen total", "U.S. Resident/Citizen men", "U.S. Resident/Citizen women",
    "U.S. Nonresident total", "U.S. Nonresident men", "U.S. Nonresident women"
]].sum(numeric_only=True).reset_index()

numeric_cols = [
    "Grand total", "Grand total men", "Grand total women",
    "U.S. Resident/Citizen total", "U.S. Resident/Citizen men", "U.S. Resident/Citizen women",
    "U.S. Nonresident total", "U.S. Nonresident men", "U.S. Nonresident women"
]

summary = summary[summary[numeric_cols].sum(axis=1) > 0]
summary["Award level"] = pd.Categorical(summary["Award level"], categories=award_order, ordered=True)

totals = summary.groupby(["SETR Category", "CIPCode", "CIPField"])[numeric_cols].sum().reset_index()
totals["Award level"] = "All award levels (total)"

summary = pd.concat([totals, summary], ignore_index=True)
award_order_with_total = ["All award levels (total)"] + award_order
summary["Award level"] = pd.Categorical(summary["Award level"], categories=award_order_with_total, ordered=True)
summary = summary.sort_values(by=["SETR Category", "CIPCode", "CIPField", "Award level"])

summary = summary[[
    "SETR Category", "CIPCode", "CIPField", "Award level"
] + numeric_cols]

csv_filename = f"IPEDS/IPEDS_additionalCSVs/IPEDS_additionalCSVs_SETR_gradCountCSVs_byCIPCode/{YEAR}_SETR_data.csv"
summary.to_csv(csv_filename, index=False)
print(f"✅ CSV data saved: {csv_filename}")

output_filename = f"IPEDS/IPEDS_tables/IPEDS_tables_summaries/SETR_CIP_summary_{YEAR}.html"

summary.columns = pd.MultiIndex.from_tuples([
    ('SETR Category', ''), ('CIPCode', ''), ('CIPField', ''), ('Award level', ''),
    ('Combined', 'Total'), ('Combined', 'Men'), ('Combined', 'Women'),
    ('U.S. Resident/Citizen', 'Total'), ('U.S. Resident/Citizen', 'Men'), ('U.S. Resident/Citizen', 'Women'),
    ('U.S. Nonresident', 'Total'), ('U.S. Nonresident', 'Men'), ('U.S. Nonresident', 'Women')
])

html_raw = summary.to_html(index=False, escape=False)
soup = BeautifulSoup(html_raw, "html.parser")

title = soup.new_tag("h2")
title.string = f"Stanford Emerging Technology Review (SETR) Fields - Degrees Awarded by Major and Citizenship Status ({YEAR})"
title['style'] = "text-align: center; margin-bottom: 20px; color: #2c3e50; font-family: Arial, sans-serif;"
soup.insert(0, title)

header_rows = soup.find_all("tr")[:2]
for row in header_rows:
    for cell in row.find_all(["th", "td"]):
        cell['style'] = "background-color: #dfefff; font-weight: bold;"

for row in soup.find_all("tr")[2:]:
    cells = row.find_all("td")
    for i, cell in enumerate(cells):
        if i < 4:
            cell['style'] = "background-color: #f0f8ff;"
    if len(cells) >= 4 and cells[3].text.strip() == "All award levels (total)":
        for cell in cells:
            cell['style'] = "background-color: #fff8cc; font-weight: bold;"

rows = soup.find_all("tr")[2:]
row_data = []
for row in rows:
    cols = row.find_all("td")
    if len(cols) >= 4:
        row_data.append({
            'row': row,
            'cols': cols,
            'setr': cols[0].text.strip(),
            'cip': cols[1].text.strip(),
            'field': cols[2].text.strip(),
            'award': cols[3].text.strip()
        })

for col_idx in [0, 1, 2]:
    i = 0
    while i < len(row_data):
        current_row = row_data[i]
        if col_idx == 0:
            current_value = current_row['setr']
        elif col_idx == 1:
            current_value = current_row['cip']
        else:
            current_value = current_row['field']
        span_count = 1
        j = i + 1
        while j < len(row_data):
            next_row = row_data[j]
            if col_idx == 0:
                matches = next_row['setr'] == current_value
            elif col_idx == 1:
                matches = next_row['cip'] == current_value and next_row['setr'] == current_row['setr']
            else:
                matches = next_row['field'] == current_value and next_row['cip'] == current_row['cip'] and next_row['setr'] == current_row['setr']
            if matches:
                span_count += 1
                j += 1
            else:
                break
        if span_count > 1:
            current_row['cols'][col_idx]['rowspan'] = str(span_count)
            for k in range(i + 1, i + span_count):
                if k < len(row_data):
                    row_data[k]['cols'][col_idx].decompose()
        i += span_count

with open(output_filename, "w", encoding="utf-8") as f:
    f.write(str(soup))

print(f"✅ HTML table saved: {output_filename}")

folder_path = 'IPEDS/IPEDS_additionalCSVs/IPEDS_additionalCSVs_SETR_gradCountCSVs_byCIPCode'
df_list = []
for year in range(2014, 2024):
    file_path = os.path.join(folder_path, f"{year}_SETR_data.csv")
    if os.path.exists(file_path):
        df = pd.read_csv(file_path)
        df['Year'] = year
        df_list.append(df)
        print(f"Loaded {file_path}")
    else:
        print(f"File not found: {file_path}")

combined_df = pd.concat(df_list, ignore_index=True)
summary_df = combined_df.groupby(['Year', 'SETR Category', 'Award level'], as_index=False)[[
    'Grand total', 'U.S. Resident/Citizen total', 'U.S. Nonresident total'
]].sum()

summary_df.rename(columns={
    'Grand total': 'Total Graduates',
    'U.S. Resident/Citizen total': 'US Graduates',
    'U.S. Nonresident total': 'US Nonresident Graduates'
}, inplace=True)

output_path = 'IPEDS/IPEDS_additionalCSVs/SETR_summary_by_year.csv'
summary_df.to_csv(output_path, index=False)

print("\nSample of aggregated results:")
print(summary_df.head(10))
