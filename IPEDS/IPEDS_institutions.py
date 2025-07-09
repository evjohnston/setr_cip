import os
import pandas as pd
from bs4 import BeautifulSoup
from IPEDS_cleaning_bySETR import setr_cip_map

YEARS = range(2014, 2024)
DEGREE_LEVELS = {
    "bachelors": "Bachelor's degree",
    "masters": "Master's degree",
    "doctoral": [
        "Doctor's degree – research/scholarship",
        "Doctor's degree – professional practice",
        "Doctor's degree – other"
    ]
}

os.makedirs("IPEDS/IPEDS_tables/IPEDS_tables_topInstitutions", exist_ok=True)
combined_all = {key: [] for key in DEGREE_LEVELS}

def generate_html_table(agg_df, category, degree_label):
    top_us = agg_df.nlargest(10, "U.S. Resident/Citizen total")
    top_intl = agg_df.nlargest(10, "U.S. Nonresident total")
    top_total = agg_df.nlargest(10, "Total Graduates")

    table = BeautifulSoup("", "html.parser")
    h3 = table.new_tag("h3")
    h3.string = category
    h3['style'] = "margin-top: 40px; font-family: Arial, sans-serif; color: #1a5276;"
    table.append(h3)

    caption = table.new_tag("p")
    caption.string = f"This table lists the top 10 institutions producing {degree_label} graduates in this SETR category."
    caption['style'] = "font-style: italic; font-family: Arial, sans-serif; margin: 6px 0 12px;"
    table.append(caption)

    tbl = table.new_tag("table", border="1")
    tbl['style'] = "width: 95%; margin-bottom: 40px; font-family: Arial, sans-serif; border-collapse: collapse;"
    table.append(tbl)

    header = table.new_tag("tr")
    for col in [
        "Top 10 Institutions by U.S. Citizen Graduates",
        "Top 10 Institutions by Nonresident Graduates",
        "Top 10 Institutions by Total Graduates"
    ]:
        th = table.new_tag("th")
        th.string = col
        th['style'] = "background-color:#dfefff; font-weight: bold; text-align: left; padding: 8px;"
        header.append(th)
    tbl.append(header)

    for i in range(10):
        row = table.new_tag("tr")

        td1 = table.new_tag("td")
        if i < len(top_us):
            r = top_us.iloc[i]
            td1.string = f"{r['Institution']} – {int(r['U.S. Resident/Citizen total'])}"
        td1['style'] = "padding: 6px;"
        row.append(td1)

        td2 = table.new_tag("td")
        if i < len(top_intl):
            r = top_intl.iloc[i]
            td2.string = f"{r['Institution']} – {int(r['U.S. Nonresident total'])}"
        td2['style'] = "padding: 6px;"
        row.append(td2)

        td3 = table.new_tag("td")
        if i < len(top_total):
            r = top_total.iloc[i]
            td3.string = f"{r['Institution']} – {int(r['Total Graduates'])}"
        td3['style'] = "padding: 6px;"
        row.append(td3)

        tbl.append(row)

    return table

for YEAR in YEARS:
    df = pd.read_csv(f"IPEDS/IPEDS_dataCleaned/{YEAR}_cleaned.csv")
    df.columns = df.columns.str.strip()
    df = df[df["Institution Name"].notna()]
    df["Institution"] = df["Institution Name"].astype(str).str.strip()
    df = df[df["Institution"] != ""]
    df["CIPCode"] = df["CIPCode"].astype(float)

    mapping_df = pd.DataFrame([
        {"SETR Category": setr, "CIPCode": float(cip)}
        for setr, cips in setr_cip_map.items()
        for cip in cips
    ])

    df = df[df["CIPCode"].isin(mapping_df["CIPCode"])]
    df = df.merge(mapping_df, on="CIPCode")

    resident_cols = [col for col in df.columns if "total" in col.lower() and "nonresident" not in col.lower() and "grand" not in col.lower()]
    df["U.S. Resident/Citizen total"] = df[resident_cols].sum(axis=1)
    df["Total Graduates"] = df["U.S. Resident/Citizen total"] + df["U.S. Nonresident total"]

    for level_key, level_value in DEGREE_LEVELS.items():
        if isinstance(level_value, list):
            df_level = df[df["Award level"].isin(level_value)]
        else:
            df_level = df[df["Award level"] == level_value]

        agg = df_level.groupby(["SETR Category", "Institution"]).agg({
            "U.S. Resident/Citizen total": "sum",
            "U.S. Nonresident total": "sum",
            "Total Graduates": "sum"
        }).reset_index()

        combined_all[level_key].append(agg.copy())

        soup = BeautifulSoup("<html><head><title>Top Institutions</title></head><body></body></html>", "html.parser")
        body = soup.body

        h1 = soup.new_tag("h2")
        h1.string = f"Top 10 Producing Institutions by SETR Category ({YEAR}) – {level_key.capitalize()}"
        h1['style'] = "text-align: center; font-family: Arial, sans-serif; color: #2c3e50; margin-bottom: 30px;"
        body.append(h1)

        for category in sorted(agg["SETR Category"].unique()):
            cat_df = agg[agg["SETR Category"] == category]
            table = generate_html_table(cat_df, category, level_key.capitalize())
            body.append(table)

        out_path = f"IPEDS/IPEDS_tables/IPEDS_tables_topInstitutions/top_institutions_by_category_{YEAR}_{level_key}.html"
        with open(out_path, "w", encoding="utf-8") as f:
            f.write(str(soup.prettify()))

for level_key, dfs in combined_all.items():
    combined_df = pd.concat(dfs)
    combined_agg = combined_df.groupby(["SETR Category", "Institution"]).sum(numeric_only=True).reset_index()

    soup = BeautifulSoup("<html><head><title>Top Institutions (All Years)</title></head><body></body></html>", "html.parser")
    body = soup.body

    h1 = soup.new_tag("h2")
    h1.string = f"Top 10 Producing Institutions by SETR Category (2014–2023) – {level_key.capitalize()}"
    h1['style'] = "text-align: center; font-family: Arial, sans-serif; color: #2c3e50; margin-bottom: 30px;"
    body.append(h1)

    for category in sorted(combined_agg["SETR Category"].unique()):
        cat_df = combined_agg[combined_agg["SETR Category"] == category]
        table = generate_html_table(cat_df, category, level_key.capitalize())
        body.append(table)

    out_path = f"IPEDS/IPEDS_tables/IPEDS_tables_topInstitutions/top_institutions_combined_2014_2023_{level_key}.html"
    with open(out_path, "w", encoding="utf-8") as f:
        f.write(str(soup.prettify()))
