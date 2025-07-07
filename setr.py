import pandas as pd
from bs4 import BeautifulSoup

# SPECIFY YEAR HERE
YEAR = 2023  # Change this to any year you want to analyze

# Load and clean
df = pd.read_csv(f"CSVcleaned/{YEAR}_cleaned.csv")
df.columns = df.columns.str.strip()
df["CIPCode"] = df["CIPCode"].astype(float)
df["CIPField"] = df["CIPField"].astype(str).str.strip().fillna("")

setr_cip_map = {
    "Artificial Intelligence": [
        "11.0102",  # Artificial Intelligence and Robotics
        "11.0701",  # Computer Science
    #    "30.2501",  # Cognitive Science
        "27.0303",  # Computational Mathematics
        "11.0804",  # Modeling, Virtual Environments and Simulation
        "11.0401",  # Information Science/Studies
        "14.0903",  # Computer Software Engineering
        "11.0802",  # Data Modeling/Warehousing and Database Administration
        "11.1005",  # Information Technology Project Management
        "11.0501"   # Computer Systems Analysis
    ],
    "Biotechnology and Synthetic Biology": [
        "26.1201",  # Biotechnology
        "14.0301",  # Agricultural/Biological Engineering and Bioengineering
        "41.0101",  # Biology Technician/Biotechnology Laboratory Technician
        "26.0202",  # Biochemistry
        "26.0801",  # Genetics, General
        "26.0502",  # Microbiology, General
        "26.1307",  # Conservation Biology
        "26.0406",  # Cell/Cellular and Molecular Biology
        "26.1007",  # Pharmacology and Toxicology
        "26.1103"   # Bioinformatics
    ],
    "Cryptography": [
        "11.1003",  # Computer and Information Systems Security
        "27.0303",  # Computational Mathematics
        "27.0502",  # Mathematical Statistics and Probability
        "11.0701",  # Computer Science
        "27.0101",  # Mathematics, General
        "11.0802",  # Data Modeling/Warehousing and Database Administration
        "11.0401",  # Information Science/Studies
        "27.0503",  # Mathematics and Statistics
        "52.1302",  # Business Statistics
        "11.0501"   # Computer Systems Analysis
    ],
    "Lasers": [
        "14.1003",  # Laser and Optical Engineering
        "15.0304",  # Laser and Optical Technology/Technician
        "40.0807",  # Optics/Optical Sciences
        "14.1001",  # Electrical, Electronics and Communications Engineering
        "14.0803",  # Structural Engineering
        "40.0808",  # Solid State and Low-Temperature Physics
        "14.1004",  # Telecommunications Engineering
        "15.0303",  # Electrical, Electronic and Communications Engineering Tech
        "40.0502",  # Analytical Chemistry
        "15.0499"   # Electromechanical and Instrumentation Techs, Other
    ],
    "Materials Science": [
        "14.1801",  # Materials Engineering
        "40.1001",  # Materials Science
        "14.0601",  # Ceramic Sciences and Engineering
        "40.1002",  # Materials Chemistry
        "40.0507",  # Polymer Chemistry
        "14.3201",  # Polymer/Plastics Engineering
        "40.0508",  # Chemical Physics
        "14.0701",  # Chemical Engineering
        "14.0702",  # Chemical and Biomolecular Engineering
        "14.9999"   # Engineering, Other
    ],
    "Neuroscience": [
        "26.1501",  # Neuroscience
        "42.2701",  # Cognitive Psychology and Psycholinguistics
        "26.1003",  # Neuropharmacology
        "26.1001",  # Pharmacology
        "42.2706",  # Physiological Psychology/Psychobiology
        "26.1503",  # Neurobiology and Neurophysiology
        "26.1007",  # Pharmacology and Toxicology
        "26.1504",  # Neurobiology and Behavior
    #    "42.2707",  # Social Psychology
        "26.0203"   # Biophysics
    ],
    "Robotics": [
        "14.4201",  # Mechatronics, Robotics, and Automation Engineering
        "15.0405",  # Robotics Technology/Technician
        "11.0102",  # Artificial Intelligence and Robotics
        "15.0403",  # Electromechanical Technology/Electromechanical Engineering
        "14.1001",  # Electrical, Electronics and Communications Engineering
        "14.0901",  # Computer Engineering, General
        "15.0406",  # Automation Engineer Technology/Technician
        "14.2701",  # Systems Engineering
        "14.0903",  # Computer Software Engineering
        "11.0103"   # Information Technology
    ],
    "Semiconductors": [
        "15.0616",  # Semiconductor Manufacturing Technology
        "14.0902",  # Computer Hardware Engineering
        "40.0808",  # Solid State and Low-Temperature Physics
        "14.0701",  # Chemical Engineering
        "14.0702",  # Chemical and Biomolecular Engineering
        "14.1001",  # Electrical, Electronics and Communications Engineering
        "14.3201",  # Polymer/Plastics Engineering
        "15.0303",  # Electrical, Electronic and Communications Engineering Tech
        "14.4101",  # Electromechanical Engineering
        "14.9999"   # Engineering, Other
    ],
    "Space": [
        "14.0201",  # Aerospace, Aeronautical and Astronautical Engineering
        "29.0305",  # Space Systems Operations
        "40.0202",  # Astrophysics
        "40.0201",  # Astronomy
        "14.2201",  # Naval Architecture and Marine Engineering
        "40.0603",  # Geophysics and Seismology
        "40.0802",  # Atomic/Molecular Physics
        "14.2401",  # Ocean Engineering
        "40.0601",  # Geology/Earth Science, General
        "14.0804"   # Transportation and Highway Engineering
    ],
    "Sustainable Energy Technology": [
        "15.0505",  # Solar Energy Technology/Technician
        "14.1401",  # Environmental/Environmental Health Engineering
        "03.0104",  # Environmental Science
        "15.0503",  # Energy Management and Systems Technology/Technician
        "03.0101",  # Natural Resources/Conservation, General
        "15.0507",  # Environmental Engineering Technology/Environmental Tech
        "03.0205",  # Water, Wetlands, and Marine Resources Management
        "03.0206",  # Land Use Planning and Management/Development
        "03.0201",  # Natural Resources Management and Policy
        "14.0805"   # Water Resources Engineering
    ]
}
mapping_df = pd.DataFrame([
    {"SETR Category": setr, "CIPCode": float(cip)}
    for setr, cips in setr_cip_map.items() for cip in cips
])

# Merge and normalize
df_filtered = df[df["CIPCode"].isin(mapping_df["CIPCode"])]
df_merged = df_filtered.merge(mapping_df, on="CIPCode")
df_merged["CIPField"] = df_merged["CIPField"].astype(str).str.strip().fillna("")

# Add U.S. aggregates
df_merged["U.S. Resident/Citizen total"] = df_merged[[c for c in df.columns if "total" in c.lower() and "nonresident" not in c.lower() and "grand" not in c.lower()]].sum(axis=1)
df_merged["U.S. Resident/Citizen men"] = df_merged[[c for c in df.columns if "men" in c.lower() and "nonresident" not in c.lower() and "grand" not in c.lower()]].sum(axis=1)
df_merged["U.S. Resident/Citizen women"] = df_merged[[c for c in df.columns if "women" in c.lower() and "nonresident" not in c.lower() and "grand" not in c.lower()]].sum(axis=1)

# Group and summarize
award_order = [
    "Postsecondary certificate < 60 semester credit hours",
    "Postsecondary certificate > 60 semester credit hours",
    "Associate's degree", "Bachelor's degree", "Master's degree",
    "Doctor's degree – research/scholarship", "Doctor's degree – professional practice",
    "Doctor's degree – other", "Postbaccalaureate certificate", "Post-master's certificate"
]
summary = df_merged.groupby(
    ["SETR Category", "CIPCode", "CIPField", "Award level"]
)[
    ["Grand total", "Grand total men", "Grand total women",
     "U.S. Resident/Citizen total", "U.S. Resident/Citizen men", "U.S. Resident/Citizen women",
     "U.S. Nonresident total", "U.S. Nonresident men", "U.S. Nonresident women"]
].sum(numeric_only=True).reset_index()

# FILTER OUT ROWS WHERE ALL NUMERIC VALUES ARE ZERO
numeric_cols = ["Grand total", "Grand total men", "Grand total women",
                "U.S. Resident/Citizen total", "U.S. Resident/Citizen men", "U.S. Resident/Citizen women",
                "U.S. Nonresident total", "U.S. Nonresident men", "U.S. Nonresident women"]
summary = summary[summary[numeric_cols].sum(axis=1) > 0]

summary["Award level"] = pd.Categorical(summary["Award level"], categories=award_order, ordered=True)

# Total rows per CIPField
totals = (
    summary.groupby(["SETR Category", "CIPCode", "CIPField"])[
        ["Grand total", "Grand total men", "Grand total women",
         "U.S. Resident/Citizen total", "U.S. Resident/Citizen men", "U.S. Resident/Citizen women",
         "U.S. Nonresident total", "U.S. Nonresident men", "U.S. Nonresident women"]
    ]
    .sum()
    .reset_index()
)
totals["Award level"] = "All award levels (total)"

# Combine and sort
summary = pd.concat([totals, summary], ignore_index=True)
award_order_with_total = ["All award levels (total)"] + award_order
summary["Award level"] = pd.Categorical(summary["Award level"], categories=award_order_with_total, ordered=True)
summary = summary.sort_values(by=["SETR Category", "CIPCode", "CIPField", "Award level"])

# Define MultiIndex
# Define correct flat column order
summary = summary[
    ["SETR Category", "CIPCode", "CIPField", "Award level",
     "Grand total", "Grand total men", "Grand total women",
     "U.S. Resident/Citizen total", "U.S. Resident/Citizen men", "U.S. Resident/Citizen women",
     "U.S. Nonresident total", "U.S. Nonresident men", "U.S. Nonresident women"]
]

# Save to CSV before HTML processing
csv_filename = f"SETRdata/{YEAR}_SETR_data.csv"
summary.to_csv(csv_filename, index=False)
print(f"✅ CSV data saved: {csv_filename}")

# Define the HTML output filenamegit 
output_filename = f"SETRtables/SETR_CIP_summary_{YEAR}.html"

# Then apply MultiIndex header with "Combined" instead of "Grand"
summary.columns = pd.MultiIndex.from_tuples([
    ('SETR Category', ''), ('CIPCode', ''), ('CIPField', ''), ('Award level', ''),
    ('Combined', 'Total'), ('Combined', 'Men'), ('Combined', 'Women'),
    ('U.S. Resident/Citizen', 'Total'), ('U.S. Resident/Citizen', 'Men'), ('U.S. Resident/Citizen', 'Women'),
    ('U.S. Nonresident', 'Total'), ('U.S. Nonresident', 'Men'), ('U.S. Nonresident', 'Women')
])

# Convert to HTML
html_raw = summary.to_html(index=False, escape=False)
soup = BeautifulSoup(html_raw, "html.parser")

# Add title before the table (using the YEAR variable)
title = soup.new_tag("h2")
title.string = f"Stanford Emerging Technology Review (SETR) Fields - Degrees Awarded by Major and Citizenship Status ({YEAR})"
title['style'] = "text-align: center; margin-bottom: 20px; color: #2c3e50; font-family: Arial, sans-serif;"
soup.insert(0, title)

# Style header
header_rows = soup.find_all("tr")[:2]
for row in header_rows:
    for cell in row.find_all(["th", "td"]):
        cell['style'] = "background-color: #dfefff; font-weight: bold;"

# Style data rows
for row in soup.find_all("tr")[2:]:
    cells = row.find_all("td")
    for i, cell in enumerate(cells):
        if i < 4:
            cell['style'] = "background-color: #f0f8ff;"
    if len(cells) >= 4 and cells[3].text.strip() == "All award levels (total)":
        for cell in cells:
            cell['style'] = "background-color: #fff8cc; font-weight: bold;"

# FIXED: Merge identical rows for first 3 columns
rows = soup.find_all("tr")[2:]  # Skip header rows

# First, collect all row data
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

# Process each column for rowspan
for col_idx in [0, 1, 2]:
    i = 0
    while i < len(row_data):
        current_row = row_data[i]
        
        # Determine what value we're grouping by for this column
        if col_idx == 0:  # SETR Category
            current_value = current_row['setr']
        elif col_idx == 1:  # CIPCode
            current_value = current_row['cip']
        else:  # CIPField
            current_value = current_row['field']
        
        # Count consecutive rows with same value (and same parent grouping)
        span_count = 1
        j = i + 1
        
        while j < len(row_data):
            next_row = row_data[j]
            
            # Check if the value matches
            if col_idx == 0:
                matches = next_row['setr'] == current_value
            elif col_idx == 1:
                matches = (next_row['cip'] == current_value and 
                          next_row['setr'] == current_row['setr'])
            else:  # col_idx == 2
                matches = (next_row['field'] == current_value and
                          next_row['cip'] == current_row['cip'] and
                          next_row['setr'] == current_row['setr'])
            
            if matches:
                span_count += 1
                j += 1
            else:
                break
        
        # Apply rowspan if needed
        if span_count > 1:
            current_row['cols'][col_idx]['rowspan'] = str(span_count)
            
            # Remove the cell from subsequent rows
            for k in range(i + 1, i + span_count):
                if k < len(row_data):
                    row_data[k]['cols'][col_idx].decompose()
        
        i += span_count

# Save HTML
with open(output_filename, "w", encoding="utf-8") as f:
    f.write(str(soup))

print(f"✅ HTML table saved: {output_filename}")