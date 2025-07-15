import os
import pandas as pd
import matplotlib.pyplot as plt

# === CONFIG ===
COLUMN_NAME = "citizenship or visa status"
DATA_DIR = os.path.join(os.path.dirname(__file__), "SED_dataCleaned")
OUTPUT_DIR = os.path.join(os.path.dirname(__file__), "SED_visualizations")
os.makedirs(OUTPUT_DIR, exist_ok=True)

YEARS = [2015, 2017, 2019, 2021, 2023]
FILES = {
    2015: "SED2015_cleaned.csv",
    2017: "SED2017_cleaned.csv",
    2019: "SED2019_cleaned.csv",
    2021: "SED2021_cleaned.csv",
    2023: "SED2023_cleaned.csv"
}

# %%
# --------- Plot 1: Citizenship Status Grouped -------- # 

# === MAPPING FROM RAW TO GROUPED CATEGORIES ===
group_map = {
    "u.s. citizen, native": "us citizen",
    "u.s. citizen, naturalized": "us citizen",
    "non-u.s. citizen, permanent resident": "non-us citizen",
    "non-u.s. citizen, temporary resident": "non-us citizen",
    "non-u.s. citizen, living outside the u.s.": "non-us citizen",
    "non-u.s. citizen, unspecified": "unspecified"
}

# === PREPARE RESULTS ===
grouped_percentages = {
    "us citizen": [],
    "non-us citizen": [],
    "unspecified": []
}

# === LOAD AND AGGREGATE ===
for year in YEARS:
    file_path = os.path.join(DATA_DIR, FILES[year])
    try:
        df = pd.read_csv(file_path)
        df.columns = [col.lower().strip() for col in df.columns]

        if COLUMN_NAME in df.columns:
            values = df[COLUMN_NAME].dropna().astype(str).str.lower().str.strip()
            total = len(values)
            group_counts = {"us citizen": 0, "non-us citizen": 0, "unspecified": 0}

            for val in values:
                group = group_map.get(val, "unspecified")
                group_counts[group] += 1

            for group in grouped_percentages:
                percent = (group_counts[group] / total * 100) if total > 0 else 0
                grouped_percentages[group].append(percent)
        else:
            print(f"⚠️ Column not found in {FILES[year]}")
            for group in grouped_percentages:
                grouped_percentages[group].append(0)

    except Exception as e:
        print(f"❌ Failed to process {year}: {e}")
        for group in grouped_percentages:
            grouped_percentages[group].append(0)

# === PLOT RESULTS ===
plt.figure(figsize=(10, 6))
for group, percentages in grouped_percentages.items():
    plt.plot(YEARS, percentages, marker='o', label=group)

plt.title("Citizenship or Visa Status (Grouped % by Year)")
plt.xlabel("Survey Year")
plt.ylabel("Percentage of Respondents")
plt.ylim(0, 100)
plt.xticks(YEARS)
plt.grid(True, linestyle="--", linewidth=0.3)
plt.legend(title="Group", loc='best')
plt.tight_layout()

# === SAVE PLOT ===
output_path = os.path.join(OUTPUT_DIR, "citizenship_status_grouped.png")
plt.savefig(output_path)
plt.close()
print(f"✅ Saved: {output_path}")

# %% 
# --------- Plot 2: Place of Birth Grouped -------- # 
# === COLLECT RAW VALUE COUNTS ===
category_counts = {}

for year in YEARS:
    path = os.path.join(DATA_DIR, FILES[year])
    try:
        df = pd.read_csv(path)
        df.columns = [col.lower().strip() for col in df.columns]

        if COLUMN_NAME in df.columns:
            values = df[COLUMN_NAME].dropna().astype(str).str.lower().str.strip()
            total = len(values)
            counts = values.value_counts(normalize=True).sort_index() * 100  # percent

            for category, pct in counts.items():
                if category not in category_counts:
                    category_counts[category] = {}
                category_counts[category][year] = pct

        else:
            print(f"⚠️ Column '{COLUMN_NAME}' not found in {FILES[year]}")

    except Exception as e:
        print(f"❌ Error processing {FILES[year]}: {e}")

# === PLOT ===
plt.figure(figsize=(10, 6))
for category, year_data in category_counts.items():
    y = [year_data.get(yr, 0) for yr in YEARS]
    plt.plot(YEARS, y, marker='o', label=category)

plt.title("Place of Birth (U.S./Non-U.S.) — Raw Values (% of Total)")
plt.xlabel("Survey Year")
plt.ylabel("Percentage of Respondents")
plt.ylim(0, 100)
plt.grid(True, linestyle="--", linewidth=0.3)
plt.legend(title="Raw Response", loc='best')
plt.tight_layout()

# === SAVE ===
output_path = os.path.join(OUTPUT_DIR, "place_of_birth_raw_values.png")
plt.savefig(output_path)
plt.close()
print(f"✅ Saved: {output_path}")






