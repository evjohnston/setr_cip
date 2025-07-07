import pandas as pd
import os

# %%
# Make the summary tables by SETR category
folder_path = 'SETRdata'

# Create an empty list to store DataFrames
df_list = []

# Load data from 2014 to 2023
for year in range(2014, 2024):
    file_name = f"{year}_SETR_data.csv"
    file_path = os.path.join(folder_path, file_name)
    
    if os.path.exists(file_path):
        df = pd.read_csv(file_path)
        df['Year'] = year
        df_list.append(df)
        print(f"Loaded {file_name}")
    else:
        print(f"File not found: {file_path}")

# Combine all into a single DataFrame
combined_df = pd.concat(df_list, ignore_index=True)

# Group and aggregate
summary_df = combined_df.groupby(
    ['Year', 'SETR Category', 'Award level'],
    as_index=False
)[[
    'Grand total',
    'U.S. Resident/Citizen total',
    'U.S. Nonresident total'
]].sum()

# Rename columns for clarity
summary_df.rename(columns={
    'Grand total': 'Total Graduates',
    'U.S. Resident/Citizen total': 'US Graduates',
    'U.S. Nonresident total': 'US Nonresident Graduates'
}, inplace=True)

# Split by SETR Category and save each table
setr_categories = summary_df['SETR Category'].unique()

output_folder = 'SETR_tables_by_category'
os.makedirs(output_folder, exist_ok=True)

for category in setr_categories:
    category_df = summary_df[summary_df['SETR Category'] == category]
    
    # Sort by Award level first, then Year
    category_df = category_df.sort_values(by=['Award level', 'Year'])
    
    # Save to file
    safe_category_name = category.replace('/', '_').replace(' ', '_')
    output_file = os.path.join(output_folder, f"{safe_category_name}_summary.csv")
    category_df.to_csv(output_file, index=False)
    print(f"Saved summary for category: {category} -> {output_file}")

print(f"\nSaved {len(setr_categories)} category tables to '{output_folder}'")

# %%
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

# Plot configuration
output_plot_folder = 'SETR_plots'
os.makedirs(output_plot_folder, exist_ok=True)

plt.style.use('default')  # clean style
plt.rcParams.update({
    'font.size': 12,
    'figure.figsize': (14, 6),
    'axes.titlesize': 16,
    'axes.labelsize': 14,
    'xtick.labelsize': 12,
    'ytick.labelsize': 12,
    'legend.fontsize': 11
})

# Loop through each SETR Category
for category in setr_categories:
    category_df = summary_df[summary_df['SETR Category'] == category]

    # Pivot: one line per Award level
    pivot_df = category_df.pivot_table(
        index='Year',
        columns='Award level',
        values='Total Graduates',
        aggfunc='sum'
    )

    # Plot
    fig, ax = plt.subplots()
    pivot_df.plot(ax=ax, marker='o')

    ax.set_title(f"{category} – Total Graduates by Award Level")
    ax.set_xlabel("Year")
    ax.set_ylabel("Total Graduates")
    ax.grid(True, which='major', linestyle='--', linewidth=0.5)
    ax.xaxis.set_major_locator(ticker.MaxNLocator(integer=True))

    # Better legend layout
    ax.legend(title='Award Level', bbox_to_anchor=(1.01, 1), loc='upper left', frameon=False)

    plt.tight_layout()

    # Save plot
    safe_category_name = category.replace('/', '_').replace(' ', '_')
    plot_path = os.path.join(output_plot_folder, f"{safe_category_name}_trend.png")
    plt.savefig(plot_path, dpi=300)
    plt.close()

    print(f"Saved improved plot for category: {category} -> {plot_path}")


# %%
import matplotlib.pyplot as plt
import seaborn as sns
import math
from pandas.api.types import CategoricalDtype

# Create folder to save plots
faceted_plot_folder = 'SETR_faceted_plots'
os.makedirs(faceted_plot_folder, exist_ok=True)

# Use seaborn style
sns.set(style='whitegrid')

# Define the custom award level order
award_level_order = [
    "Postsecondary certificate < 60 semester credit hours",
    "Postsecondary certificate > 60 semester credit hours",
    "Associate's degree",
    "Bachelor's degree",
    "Master's degree",
    "Doctor's degree – research/scholarship",
    "Doctor's degree – professional practice",
    "Doctor's degree – other",
    "Postbaccalaureate certificate",
    "Post-master's certificate"
]

# Set as categorical with defined order
summary_df['Award level'] = summary_df['Award level'].astype(
    CategoricalDtype(categories=award_level_order, ordered=True)
)

for category in setr_categories:
    cat_df = summary_df[summary_df['SETR Category'] == category]

    # Get all award levels for this category
    award_levels = [lvl for lvl in award_level_order if lvl in cat_df['Award level'].unique()]
    num_levels = len(award_levels)

    # Setup subplots
    cols = 2  # 2 plots per row
    rows = math.ceil(num_levels / cols)
    fig, axes = plt.subplots(rows, cols, figsize=(14, 4 * rows), sharex=True)
    axes = axes.flatten()

    for i, level in enumerate(award_levels):
        level_df = cat_df[cat_df['Award level'] == level].sort_values('Year')
        ax = axes[i]

        ax.plot(level_df['Year'], level_df['US Graduates'], marker='o', label='U.S. Residents')
        ax.plot(level_df['Year'], level_df['US Nonresident Graduates'], marker='o', label='Nonresidents')

        ax.set_title(level, fontsize=12)
        ax.set_xlabel("Year")
        ax.set_ylabel("Graduates")
        ax.legend()
        ax.grid(True)

    # Remove unused subplots
    for j in range(i + 1, len(axes)):
        fig.delaxes(axes[j])

    # Main title and save
    fig.suptitle(f"{category} – U.S. vs Nonresident Graduates by Award Level", fontsize=16)
    plt.tight_layout(rect=[0, 0, 1, 0.97])

    safe_category_name = category.replace('/', '_').replace(' ', '_')
    fig_path = os.path.join(faceted_plot_folder, f"{safe_category_name}_us_vs_nonres.png")
    plt.savefig(fig_path, dpi=300)
    plt.close()

    print(f"Saved faceted plot for category: {category} -> {fig_path}")

# %%
print(summary_df.columns)

# %% 2. Global Talent Dependency Index
summary_df['Dependency Index'] = summary_df['US Nonresident Graduates'] / summary_df['Total Graduates']
dependency = summary_df.groupby(['Year', 'SETR Category'])['Dependency Index'].mean().unstack()
dependency.plot(title="International Talent Dependency by Field", figsize=(14, 6))

# %% 4. Award Level Transition Flow (Lag Inference for Multiple Categories)
import matplotlib.pyplot as plt
import os

# Categories to analyze
target_categories = [
    "Artificial Intelligence",
    "Biotechnology and Synthetic Biology",
    "Cryptography",
    "Lasers",
    "Materials Science",
    "Neuroscience",
    "Robotics",
    "Semiconductors",
    "Space",
    "Sustainable Energy Technology"
]

# Output folder
lag_plot_folder = "SETR_transition_flow"
os.makedirs(lag_plot_folder, exist_ok=True)

# Loop through each category
for category in target_categories:
    # Get Bachelor's and Master's data
    cs_bachelors = summary_df[
        (summary_df['SETR Category'] == category) & 
        (summary_df['Award level'] == "Bachelor's degree")
    ][['Year', 'Total Graduates']].copy()
    
    cs_masters = summary_df[
        (summary_df['SETR Category'] == category) & 
        (summary_df['Award level'] == "Master's degree")
    ][['Year', 'Total Graduates']].copy()
    
    # Skip if no data
    if cs_bachelors.empty or cs_masters.empty:
        print(f"Skipping {category} — missing data")
        continue

    # Simulate pipeline: shift master's years back by 2
    cs_masters['Year'] -= 2

    # Merge on Year
    merged = cs_bachelors.merge(cs_masters, on='Year', suffixes=('_Bachelors', '_Masters'))

    # Plot
    ax = merged.plot(
        x='Year', 
        y=['Total Graduates_Bachelors', 'Total Graduates_Masters'],
        marker='o',
        figsize=(12, 5),
        title=f"{category} – Bachelor's vs Lagged Master's Graduates"
    )
    ax.set_ylabel("Graduates")
    ax.grid(True)

    # Save
    safe_name = category.replace(' ', '_').replace('/', '_')
    plt.tight_layout()
    plt.savefig(os.path.join(lag_plot_folder, f"{safe_name}_transition_flow.png"), dpi=300)
    plt.close()

    print(f"Saved lag plot for {category}")

# %%
growth = summary_df.groupby(['SETR Category', 'Award level'])[['Year', 'Total Graduates']].agg(['min', 'max'])
growth.columns = ['Start Year', 'End Year', 'Start Grads', 'End Grads']
growth['Years'] = growth['End Year'] - growth['Start Year']
growth['CAGR'] = (growth['End Grads'] / growth['Start Grads']) ** (1 / growth['Years']) - 1
growth = growth.sort_values('CAGR', ascending=False)
print(growth[['CAGR']].head(10))

# %% 1. International Dependency Ratio by Field and Degree
summary_df['Dependency Ratio'] = summary_df['US Nonresident Graduates'] / summary_df['Total Graduates']
pivot = summary_df.pivot_table(index='Year', columns='SETR Category', values='Dependency Ratio')
pivot.plot(title="Dependency on Nonresident Students by Field", figsize=(14, 6))

# %%
# Bachelor's → Master's → Doctorate in Biotechnology
eng_df = summary_df[summary_df['SETR Category'] == 'Biotechnology and Synthetic Biology']
pipeline = eng_df.pivot_table(
    index='Year',
    columns='Award level',
    values='Total Graduates'
)[["Bachelor's degree", "Master's degree", "Doctor's degree – research/scholarship"]]
pipeline.plot(title="Biotechnology Degree Pipeline Over Time", figsize=(14, 6))

# %% 3. Residency Distribution by Degree Level
dist = summary_df.groupby('Award level', observed=False)[['US Graduates', 'US Nonresident Graduates']].sum()
dist_percent = dist.div(dist.sum(axis=1), axis=0)
dist_percent.plot(kind='barh', stacked=True, title="Residency Distribution by Award Level", figsize=(10, 6))


# %% 8. Strategic Fields Heatmap of Nonresident Share
import seaborn as sns
heat_df = summary_df[
    summary_df['Award level'] == "Doctor's degree – research/scholarship"
].pivot(index='Year', columns='SETR Category', values='Dependency Ratio')
plt.figure(figsize=(14, 6))
sns.heatmap(heat_df, cmap='Reds', annot=False)
plt.title("Nonresident Share of Doctorate Graduates by Field (Heatmap)")

# %% 10. Pipeline Attrition Visualization
# Bachelor's vs Master's in strategic field
field = 'Artificial Intelligence'
bachelors = summary_df[
    (summary_df['SETR Category'] == field) & 
    (summary_df['Award level'] == "Bachelor's degree")
][['Year', 'Total Graduates']].rename(columns={'Total Graduates': 'Bachelors'}).copy()

masters = summary_df[
    (summary_df['SETR Category'] == field) & 
    (summary_df['Award level'] == "Master's degree")
][['Year', 'Total Graduates']].rename(columns={'Total Graduates': 'Masters'}).copy()

masters['Year'] -= 2  # lagged transition assumption
merged = pd.merge(bachelors, masters, on='Year')
merged.plot(x='Year', y=['Bachelors', 'Masters'], marker='o', figsize=(12, 6), title=f"{field} – Bachelors vs Lagged Masters")

# %% Residency Distribution by Degree Level — Only Bachelor's, Master's, Doctorate (combined)
import pandas as pd
import matplotlib.pyplot as plt
import os

# summary_df = pd.read_csv("SETR_summary_by_year.csv")  # your existing DataFrame

# Fields to process
setr_fields = [
    "Artificial Intelligence",
    "Biotechnology and Synthetic Biology",
    "Cryptography",
    "Lasers",
    "Materials Science",
    "Neuroscience",
    "Robotics",
    "Semiconductors",
    "Space",
    "Sustainable Energy Technology"
]

# Filter years
years = sorted(summary_df['Year'].unique())

# Output directory
output_dir = "SETR_residency_distribution_bmd_only"
os.makedirs(output_dir, exist_ok=True)

# Doctoral labels to combine
doctorate_levels = [
    "Doctor's degree – research/scholarship",
    "Doctor's degree – professional practice",
    "Doctor's degree – other"
]

# Process each category and year
for field in setr_fields:
    field_df = summary_df[summary_df['SETR Category'] == field]

    for year in years:
        year_df = field_df[field_df['Year'] == year].copy()

        # Keep only Bachelors, Masters, Doctorate levels
        bmd_df = year_df[year_df['Award level'].isin(
            ["Bachelor's degree", "Master's degree"] + doctorate_levels
        )].copy()

        # Combine all doctorate rows under "Doctorate degree"
        bmd_df['Award level'] = bmd_df['Award level'].replace(
            doctorate_levels, "Doctorate degree"
        )

        # Group by new simplified award levels
        dist = bmd_df.groupby('Award level', observed=False)[['US Graduates', 'US Nonresident Graduates']].sum()

        if dist.empty:
            print(f"Skipping {field} – {year} (no data)")
            continue

        # Convert to percentage
        dist_percent = dist.div(dist.sum(axis=1), axis=0)

        # Order degree levels
        level_order = ["Bachelor's degree", "Master's degree", "Doctorate degree"]
        dist_percent = dist_percent.reindex(level_order)

        # Output filename
        safe_field = field.replace(" ", "_").replace("/", "_")
        filename = f"{safe_field}_{year}_residency_distribution_bmd.png"
        filepath = os.path.join(output_dir, filename)

        # Plot
        fig, ax = plt.subplots(figsize=(10, 5))

        dist_percent.plot(
            kind='barh',
            stacked=True,
            ax=ax,
            color=['#0A3161', '#cd071e']
        )

        ax.set_xlim(0, 1)
        ax.set_title(f"{field} – Bachelor's, Master's, Doctorate Residency Distribution ({year})")
        ax.set_xlabel("Proportion of Graduates")

        ax.legend(
            loc='center left',
            bbox_to_anchor=(1.0, 0.5),
            frameon=False,
            title='Residency Status'
        )

        fig.subplots_adjust(left=0.3, right=0.75)
        plt.savefig(filepath, dpi=300, bbox_inches='tight')
        plt.close()

        print(f"✅ Saved: {filename}")

# %%
