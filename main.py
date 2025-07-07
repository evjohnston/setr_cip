# %% 

#Pivot Table to Summarize Stats by CIPCategory
import pandas as pd

# Load the data
df = pd.read_csv("2023_cleaned.csv")

# Optional: clean column names in case of extra whitespace
df.columns = df.columns.str.strip()

print(df.columns.tolist())

# Columns to summarize (excluding text and categorical identifiers)
columns_to_summarize = df.columns.difference([
    'Institution Name',
    'Unique identification number of the institution',
    'CIPCategoryCode',
    'CIPCategory',
    'CIPCode',
    'CIPField'
])

# %%
# Group by CIPCategory and aggregate with sum
summary_stats = df.groupby("CIPField")[columns_to_summarize].sum().reset_index()

# %%
# Desired column order
ordered_columns = [
    'CIPField',
    'Grand total',
    'Grand total men',
    'Grand total women',
    'American Indian or Alaska Native total',
    'American Indian or Alaska Native men',
    'American Indian or Alaska Native women',
    'Asian total',
    'Asian men',
    'Asian women',
    'Black or African American total',
    'Black or African American men',
    'Black or African American women',
    'Hispanic or Latino total',
    'Hispanic or Latino men',
    'Hispanic or Latino women',
    'Native Hawaiian or Other Pacific Islander total',
    'Native Hawaiian or Other Pacific Islander men',
    'Native Hawaiian or Other Pacific Islander women',
    'U.S. Nonresident total',
    'U.S. Nonresident men',
    'U.S. Nonresident women',
    'White total',
    'White men',
    'White women',
    'Race/ethnicity unknown total',
    'Race/ethnicity unknown men',
    'Race/ethnicity unknown women',
    'Two or more races total',
    'Two or more races men',
    'Two or more races women',
]

# %%
# Group and aggregate the data with the selected columns
summary_sorted = df.groupby("CIPField")[ordered_columns[1:]].sum().reset_index()

# %%
# Reorder the columns
summary_sorted = summary_sorted[ordered_columns]

# %%
# Display the summary
print(summary_sorted.head(10))  # Show first 10 rows

# Save the summary
summary_sorted.to_csv("summary_by_CIPField.csv", index=False)
print("✅ Summary saved to summary_by_CIPField.csv")

# %% 

# Turn Summary Stats by CIPCategory into an HTML Table
import pandas as pd

# Load the CSV generated earlier
df = pd.read_csv("summary_by_CIPField.csv")

# Define the structure of the grouped headers
columns_structure = {
    "Grand": ['Grand total', 'Grand total men', 'Grand total women'],
    "American Indian or Alaska Native": [
        'American Indian or Alaska Native total',
        'American Indian or Alaska Native men',
        'American Indian or Alaska Native women'
    ],
    "Asian": ['Asian total', 'Asian men', 'Asian women'],
    "Black or African American": [
        'Black or African American total',
        'Black or African American men',
        'Black or African American women'
    ],
    "Hispanic or Latino": [
        'Hispanic or Latino total',
        'Hispanic or Latino men',
        'Hispanic or Latino women'
    ],
    "Native Hawaiian or Other Pacific Islander": [
        'Native Hawaiian or Other Pacific Islander total',
        'Native Hawaiian or Other Pacific Islander men',
        'Native Hawaiian or Other Pacific Islander women'
    ],
    "U.S. Nonresident": [
        'U.S. Nonresident total',
        'U.S. Nonresident men',
        'U.S. Nonresident women'
    ],
    "White": ['White total', 'White men', 'White women'],
    "Race/ethnicity unknown": [
        'Race/ethnicity unknown total',
        'Race/ethnicity unknown men',
        'Race/ethnicity unknown women'
    ],
    "Two or more races": [
        'Two or more races total',
        'Two or more races men',
        'Two or more races women'
    ]
}

# Rebuild columns as MultiIndex
new_columns = [('CIPField', '')]
for group, cols in columns_structure.items():
    for col in cols:
        new_columns.append((group, col.split()[-1].capitalize()))  # Extract "Total", "Men", "Women"

# Convert the column tuples into MultiIndex
multi_index = pd.MultiIndex.from_tuples(new_columns)

# Reorganize DataFrame columns to match MultiIndex structure
ordered_columns = ['CIPField'] + [col for group in columns_structure.values() for col in group]
df_multi = df[ordered_columns]
df_multi.columns = multi_index

# Export to HTML
df_multi.to_html("summary_by_CIPField.html", index=False, escape=False)

print("✅ HTML table with multi-level headers saved as summary_by_CIPField.html")

# %%
