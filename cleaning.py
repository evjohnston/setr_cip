import pandas as pd
import os

YEAR = 2023  # Change this to any year you want to process

# File paths
metadata_folder = "definitions"
rawdata_folder = "CSVraw"
main_data_file = os.path.join(rawdata_folder, f"{YEAR}_raw.csv")
hd_file = os.path.join(metadata_folder, "hd2023.csv")
freq_file = os.path.join(metadata_folder, "Frequencies.csv")
category_file = os.path.join(metadata_folder, "IPEDS_main_categories.csv")

# Load main data
main_df = pd.read_csv(main_data_file, encoding='latin1')

# --- 1. Insert Definitions ---
all_definitions = pd.DataFrame(columns=["varname", "description"])
for file in os.listdir(metadata_folder):
    if file.endswith(".csv"):
        path = os.path.join(metadata_folder, file)
        try:
            df = pd.read_csv(path)
        except UnicodeDecodeError:
            df = pd.read_csv(path, encoding='latin1')
        df_lower = df.rename(columns=str.lower)
        if "varname" in df_lower.columns:
            if "longdescription" in df_lower.columns:
                sub_df = df_lower[["varname", "longdescription"]].rename(columns={"longdescription": "description"})
            elif "vartitle" in df_lower.columns:
                sub_df = df_lower[["varname", "vartitle"]].rename(columns={"vartitle": "description"})
            else:
                continue
            all_definitions = pd.concat([all_definitions, sub_df], ignore_index=True)
all_definitions.dropna(subset=["description"], inplace=True)
all_definitions.drop_duplicates(subset="varname", inplace=True)
varname_to_description = dict(zip(all_definitions["varname"], all_definitions["description"]))
main_df.columns = [f"{col} - {varname_to_description[col]}" if col in varname_to_description else col for col in main_df.columns]

# --- 2. Add Institution Name ---
hd_df = pd.read_csv(hd_file, encoding='latin1')
if "UNITID" not in hd_df.columns or "INSTNM" not in hd_df.columns:
    raise ValueError("Missing UNITID or INSTNM in hd2023.csv")
unitid_col = [col for col in main_df.columns if col.startswith("UNITID")][0]
main_df["Institution Name"] = main_df[unitid_col].map(dict(zip(hd_df["UNITID"], hd_df["INSTNM"])))
main_df = main_df[["Institution Name"] + [col for col in main_df.columns if col != "Institution Name"]]

# --- 3. Add CIP Descriptions ---
freq_df = pd.read_csv(freq_file)
cip_desc_df = freq_df[freq_df["varname"] == "CIPCODE"][["codevalue", "valuelabel"]].drop_duplicates()
cip_desc_df.columns = ["CIPCODE", "CIPField"]
cip_desc_df["CIPCODE"] = cip_desc_df["CIPCODE"].astype(str)

cip_col = [col for col in main_df.columns if col.startswith("CIPCODE")][0]
main_df[cip_col] = main_df[cip_col].astype(str)
main_df = main_df.merge(cip_desc_df, left_on=cip_col, right_on="CIPCODE", how="left")

# Insert CIPField next to CIPCODE
cols = main_df.columns.tolist()
cip_index = cols.index(cip_col)
cols = cols[:cip_index+1] + ['CIPField'] + cols[cip_index+1:]
main_df = main_df[cols]

# --- 4. Clean Column Names ---
main_df.columns = main_df.columns.str.strip()
main_df = main_df[[col for col in main_df.columns if not col.startswith("XC")]]
main_df = main_df.loc[:, ~main_df.columns.duplicated()]

def prefer_labeled(columns):
    seen = set()
    result = []
    for col in columns:
        base = col.split(" - ")[0]
        if base not in seen:
            seen.add(base)
            result.append(col)
    return result

main_df = main_df[prefer_labeled(main_df.columns)]

def strip_label(col):
    return col.split(" - ", 1)[1].strip() if " - " in col else col.strip()

main_df.columns = [strip_label(col) for col in main_df.columns]

main_df.rename(columns={
    "CIP Code -  2020 Classification": "CIPCode",
    "CIP_Description": "CIPField",  # just in case
    "CNRALW": "U.S. Nonresident women"
}, inplace=True)

# --- 5. Add CIP Categories ---
main_df["CIPCode"] = main_df["CIPCode"].astype(str)
main_df["CIPCategoryCode"] = main_df["CIPCode"].str.split(".").str[0]

category_map = pd.read_csv(category_file)
category_map.columns = category_map.columns.str.strip()
category_map["CODE"] = category_map["CODE"].astype(str)
category_map.rename(columns={"CODE": "CIPCategoryCode", "CATEGORY": "CIPCategory"}, inplace=True)

main_df = main_df.merge(category_map, on="CIPCategoryCode", how="left")

# Move CIPCategory fields just after Institution ID
cols = list(main_df.columns)
cols_to_move = ["CIPCategoryCode", "CIPCategory"]
anchor = "Unique identification number of the institution"
for col in cols_to_move:
    if col in cols:
        cols.remove(col)
insert_at = cols.index(anchor) + 1
new_order = cols[:insert_at] + cols_to_move + cols[insert_at:]
main_df = main_df[new_order]

# --- Add Award Level Descriptions ---
award_level_map = {
    2:  "Postsecondary certificate < 60 semester credit hours",
    4:  "Postsecondary certificate > 60 semester credit hours",
    3:  "Associate's degree",
    5:  "Bachelor's degree",
    7:  "Master's degree",
    17: "Doctor's degree – research/scholarship",
    18: "Doctor's degree – professional practice",
    19: "Doctor's degree – other",
    6:  "Postbaccalaureate certificate",
    8:  "Post-master's certificate"
}

# --- 6. Identify the column name for Award level code --- #
award_code_col = [col for col in main_df.columns if col.lower().startswith("award level code") or "award" in col.lower() and "code" in col.lower()]
if award_code_col:
    award_code_col = award_code_col[0]
    main_df[award_code_col] = pd.to_numeric(main_df[award_code_col], errors='coerce').astype('Int64')
    main_df["Award level"] = main_df[award_code_col].map(award_level_map)

    # Insert Award level column next to Award level code
    cols = main_df.columns.tolist()
    idx = cols.index(award_code_col)
    cols = cols[:idx+1] + ["Award level"] + cols[idx+1:]
    main_df = main_df[cols]
else:
    print("⚠️ 'Award level code' column not found.")


# --- 6. Save Final Output ---
main_df.to_csv(f"csvcleaned/{YEAR}_cleaned.csv", index=False)
print(f"✅ Final cleaned dataset saved: {YEAR}_cleaned.csv")
