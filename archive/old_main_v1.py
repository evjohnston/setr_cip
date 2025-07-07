# %% Libraries and Imports
import pandas as pd
import os

# %% Insert Definitions into main CSV

metadata_folder = "c2023_a_csvs"
main_data_file = "c2023_a.csv"

# Load the main dataset
main_df = pd.read_csv(main_data_file, encoding='latin1')

# Initialize a master definition dataframe
all_definitions = pd.DataFrame(columns=["varname", "description"])

# Loop through all CSVs in the folder
for file in os.listdir(metadata_folder):
    if file.endswith(".csv"):
        path = os.path.join(metadata_folder, file)
        
        # Try reading with UTF-8, fallback to Latin1 if it fails
        try:
            df = pd.read_csv(path)
        except UnicodeDecodeError:
            df = pd.read_csv(path, encoding='latin1')
        
        df_lower = df.rename(columns=str.lower)
        
        # Look for relevant columns that might contain definitions
        if "varname" in df_lower.columns:
            if "longdescription" in df_lower.columns:
                sub_df = df_lower[["varname", "longdescription"]].rename(columns={"longdescription": "description"})
            elif "vartitle" in df_lower.columns:
                sub_df = df_lower[["varname", "vartitle"]].rename(columns={"vartitle": "description"})
            else:
                continue  # Skip if no known description column found

            all_definitions = pd.concat([all_definitions, sub_df], ignore_index=True)


# Clean and deduplicate
all_definitions.dropna(subset=["description"], inplace=True)
all_definitions.drop_duplicates(subset="varname", inplace=True)

# Create mapping dictionary
varname_to_description = dict(zip(all_definitions["varname"], all_definitions["description"]))

# Rename main dataset columns
new_columns = [
    f"{col} - {varname_to_description[col]}" if col in varname_to_description else col
    for col in main_df.columns
]
main_df.columns = new_columns

# Save the updated file
main_df.to_csv("c2023_a_readable.csv", index=False)
print("✅ Saved: c2023_a_readable.csv with descriptive column names")

# %% Merge institution names using hd2023.csv

# Load institution metadata
hd_df = pd.read_csv("c2023_a_csvs/hd2023.csv", encoding="latin1")

# Ensure the column with names exists
# Common name columns: INSTNM, INSTNM2023, etc.
# We'll use INSTNM if available
if "INSTNM" not in hd_df.columns or "UNITID" not in hd_df.columns:
    raise ValueError("Expected columns 'UNITID' and 'INSTNM' not found in hd2023.csv")

# Load the already-labeled main data
main_readable_df = pd.read_csv("c2023_a_readable.csv", encoding='latin1')

# Extract original UNITID column name (with description in it)
unitid_col = [col for col in main_readable_df.columns if col.startswith("UNITID")][0]

# Create a new column with readable institution names
main_readable_df["Institution Name"] = main_readable_df[unitid_col].map(
    dict(zip(hd_df["UNITID"], hd_df["INSTNM"]))
)

# Move Institution Name to first column for readability
cols = ["Institution Name"] + [col for col in main_readable_df.columns if col != "Institution Name"]
main_readable_df = main_readable_df[cols]

# Save the updated file
main_readable_df.to_csv("c2023_a_readable_with_names.csv", index=False)
print("🏫 Saved: c2023_a_readable_with_names.csv with institution names included")

# %% Merge CIPCODE descriptions using Frequencies.csv

# Load frequencies file that contains CIPCODE → label mappings
freq_df = pd.read_csv("c2023_a_csvs/Frequencies.csv")

# Clean and filter to just CIPCODE entries with valuelabels
cip_desc_df = freq_df[freq_df["varname"] == "CIPCODE"][["codevalue", "valuelabel"]].drop_duplicates()
cip_desc_df = cip_desc_df.rename(columns={"codevalue": "CIPCODE", "valuelabel": "CIP_Description"})

# Convert to string to ensure reliable merging (avoid float precision issues)
cip_desc_df["CIPCODE"] = cip_desc_df["CIPCODE"].astype(str)

# Load the main readable dataset
data = pd.read_csv("c2023_a_readable_with_names.csv")

# Identify the correct CIPCODE column name (with label in it)
cip_col = [col for col in data.columns if col.startswith("CIPCODE")][0]

# Convert CIP column to string (match merge format)
data[cip_col] = data[cip_col].astype(str)

# Merge CIP descriptions
data = data.merge(cip_desc_df, left_on=cip_col, right_on="CIPCODE", how="left")

# Move CIP_Description next to CIPCODE column
cols = data.columns.tolist()
cip_index = cols.index(cip_col)
new_order = cols[:cip_index+1] + ["CIP_Description"] + cols[cip_index+1:-1]
data = data[new_order]

# Save the updated dataset
data.to_csv("c2023_a_final.csv", index=False)
print("📚 Saved: c2023_a_final.csv with CIP descriptions included")


# %% 

# Clean and simplify columns
data.columns = data.columns.str.strip()

# Remove imputation columns (start with 'XC')
data = data[[col for col in data.columns if not col.startswith("XC")]]

# Remove exact duplicates of columns (same content)
data = data.loc[:, ~data.columns.duplicated()]

# If column names contain ' - ', assume they are labeled;
# keep only labeled version where duplicates exist (e.g., 'UNITID' vs 'UNITID - ...')
def prefer_labeled(columns):
    seen = set()
    clean_cols = []
    for col in columns:
        base = col.split(" - ")[0]
        if base not in seen:
            seen.add(base)
            clean_cols.append(col)
    return clean_cols

data = data[prefer_labeled(data.columns)]

def strip_code_prefix(colname):
    # If it contains ' - ', return only the description part
    if " - " in colname:
        return colname.split(" - ", 1)[1].strip()
    return colname.strip()

# Apply this to all column names
data.columns = [strip_code_prefix(col) for col in data.columns]

data = data.rename(columns={
    'UNITID - Unique identification number of the institution': 'Institution ID',
    '2020 Classification': 'CIPCode',
    'CIP_Description': 'CIPField',
    'CNRALW': 'U.S. Nonresident women',
    'CIP Code -  2020 Classification': 'CIPCode'
})

# Save cleaned version
data.to_csv("c2023_a_cleaned.csv", index=False)
print("🧼 Saved: c2023_a_cleaned.csv with cleaned, simplified columns")

# %%

# Add CIPCategory and CIPCategoryCode to main data
data["CIPCode"] = data["CIPCode"].astype(str)

# Extract CIPCategoryCode as the part before the decimal
data["CIPCategoryCode"] = data["CIPCode"].str.split(".").str[0]

# Load the mapping of categories
category_map = pd.read_csv("c2023_a_csvs/IPEDS_main_categories.csv")

# Ensure consistent column names
category_map.columns = category_map.columns.str.strip()
category_map["CODE"] = category_map["CODE"].astype(str)
category_map.rename(columns={"CODE": "CIPCategoryCode", "CATEGORY": "CIPCategory"}, inplace=True)

# Merge category names into the main dataset
data = data.merge(category_map, on="CIPCategoryCode", how="left")

# Save updated data
data.to_csv("c2023_a_with_categories.csv", index=False)
print("📂 Saved: c2023_a_with_categories.csv with CIPCategory info added")

cols = list(data.columns)

# Columns to move
cols_to_move = ['CIPCategoryCode', 'CIPCategory']

# Column to move after
anchor = 'Unique identification number of the institution'

# Remove the columns from the list first (to move, not copy)
for col in cols_to_move:
    if col in cols:
        cols.remove(col)

# Find insertion index
insert_at = cols.index(anchor) + 1

# Rebuild the column list
new_order = cols[:insert_at] + cols_to_move + cols[insert_at:]

# Reorder DataFrame
data = data[new_order]

# %%
data.shape         # returns (rows, columns)

# %%
data.columns       # returns column names

# %%
data.head()        # shows first 5 rows

# %%
data.describe()    # summary stats for numeric columns