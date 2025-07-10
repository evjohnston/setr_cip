import pandas as pd
import os
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import seaborn as sns
import math
from pandas.api.types import CategoricalDtype

# === 1. Load and Summarize SETR Category Data ===
folder_path = 'IPEDS/IPEDS_additionalCSVs/IPEDS_additionalCSVs_SETR_gradCountCSVs_byCIPCode'
df_list = []

for year in range(2014, 2024):
    file_path = os.path.join(folder_path, f"{year}_SETR_data.csv")
    if os.path.exists(file_path):
        df = pd.read_csv(file_path)
        df['Year'] = year
        df_list.append(df)

combined_df = pd.concat(df_list, ignore_index=True)

summary_df = combined_df.groupby(
    ['Year', 'SETR Category', 'Award level'], as_index=False
)[[
    'Grand total',
    'U.S. Resident/Citizen total',
    'U.S. Nonresident total'
]].sum()

summary_df.rename(columns={
    'Grand total': 'Total Graduates',
    'U.S. Resident/Citizen total': 'US Graduates',
    'U.S. Nonresident total': 'US Nonresident Graduates'
}, inplace=True)

# === 2. Save Summary CSVs by SETR Category ===
setr_categories = summary_df['SETR Category'].unique()
output_folder = 'IPEDS/IPEDS_additionalCSVs/IPEDS_additionalCSVs_SETR_gradCountCSVs_summary'
os.makedirs(output_folder, exist_ok=True)

for category in setr_categories:
    category_df = summary_df[summary_df['SETR Category'] == category]
    category_df = category_df.sort_values(by=['Award level', 'Year'])
    safe_category_name = category.replace('/', '_').replace(' ', '_')
    category_df.to_csv(os.path.join(output_folder, f"{safe_category_name}_summary.csv"), index=False)

# === 3. Line Plot – Trend of Total Graduates by Award Level ===
output_plot_folder = 'IPEDS/IPEDS_visualizations/IPEDS_visuals_plotTrendLine'
os.makedirs(output_plot_folder, exist_ok=True)

plt.style.use('default')
plt.rcParams.update({
    'font.size': 12,
    'figure.figsize': (14, 6),
    'axes.titlesize': 16,
    'axes.labelsize': 14,
    'xtick.labelsize': 12,
    'ytick.labelsize': 12,
    'legend.fontsize': 11
})

for category in setr_categories:
    category_df = summary_df[summary_df['SETR Category'] == category]
    pivot_df = category_df.pivot_table(index='Year', columns='Award level', values='Total Graduates', aggfunc='sum')

    fig, ax = plt.subplots()
    pivot_df.plot(ax=ax, marker='o')
    ax.set_title(f"{category} – Total Graduates by Award Level")
    ax.set_xlabel("Year")
    ax.set_ylabel("Total Graduates")
    ax.grid(True, linestyle='--', linewidth=0.5)
    ax.xaxis.set_major_locator(ticker.MaxNLocator(integer=True))
    ax.legend(title='Award Level', bbox_to_anchor=(1.01, 1), loc='upper left', frameon=False)

    plt.tight_layout()
    plt.savefig(os.path.join(output_plot_folder, f"{category.replace('/', '_').replace(' ', '_')}_trend.png"), dpi=300)
    plt.close()
    print("Plot created, no errors")

# === 4. Faceted Plot – U.S. vs Nonresident Graduates by Award Level ===
faceted_plot_folder = 'IPEDS/IPEDS_visualizations/IPEDS_visuals_plotFaceted'
os.makedirs(faceted_plot_folder, exist_ok=True)
sns.set(style='whitegrid')

award_level_order = [
    "Postsecondary certificate < 60 semester credit hours",
    "Postsecondary certificate > 60 semester credit hours",
    "Associate's degree", "Bachelor's degree", "Master's degree",
    "Doctor's degree – research/scholarship", "Doctor's degree – professional practice",
    "Doctor's degree – other", "Postbaccalaureate certificate", "Post-master's certificate"
]

summary_df['Award level'] = summary_df['Award level'].astype(
    CategoricalDtype(categories=award_level_order, ordered=True)
)

for category in setr_categories:
    cat_df = summary_df[summary_df['SETR Category'] == category]
    award_levels = [lvl for lvl in award_level_order if lvl in cat_df['Award level'].unique()]
    rows = math.ceil(len(award_levels) / 2)
    fig, axes = plt.subplots(rows, 2, figsize=(14, 4 * rows))
    axes = axes.flatten()

    for i, level in enumerate(award_levels):
        level_df = cat_df[cat_df['Award level'] == level].sort_values('Year')
        ax = axes[i]
        ax.plot(level_df['Year'], level_df['US Graduates'], marker='o', label='U.S. Residents')
        ax.plot(level_df['Year'], level_df['US Nonresident Graduates'], marker='o', label='Nonresidents')
        ax.set_title(level)
        ax.set_xlabel("Year")
        ax.set_ylabel("Graduates")
        ax.legend()
        ax.grid(True)
        ax.set_xticks(level_df['Year'])
        ax.set_xticklabels(level_df['Year'], rotation=45)

    for j in range(i + 1, len(axes)):
        fig.delaxes(axes[j])

    fig.suptitle(f"{category} – U.S. vs Nonresident Graduates by Award Level", fontsize=16)
    plt.tight_layout(rect=[0, 0, 1, 0.97])
    plt.savefig(os.path.join(faceted_plot_folder, f"{category.replace('/', '_').replace(' ', '_')}_us_vs_nonres.png"), dpi=300)
    plt.close()
    print("Plot created, no errors")

# === 5. Line Chart – International Talent Dependency by Field ===
summary_df['Dependency Index'] = summary_df['US Nonresident Graduates'] / summary_df['Total Graduates']
dependency = summary_df.groupby(['Year', 'SETR Category'])['Dependency Index'].mean().unstack()
dependency.plot(title="International Talent Dependency by Field", figsize=(14, 6))
plt.tight_layout()
plt.savefig('IPEDS/IPEDS_visualizations/international_dependency_trend.png', dpi=300)
plt.close()

# === 6. Line Chart – Award Level Transition Flow (Lagged) ===
target_categories = [
    "Artificial Intelligence", "Biotechnology and Synthetic Biology", "Cryptography", "Lasers",
    "Materials Science", "Neuroscience", "Robotics", "Semiconductors", "Space", "Sustainable Energy Technology"
]

lag_plot_folder = "IPEDS/IPEDS_visualizations/IPEDS_visuals_plotLagged"
os.makedirs(lag_plot_folder, exist_ok=True)

for category in target_categories:
    cs_bachelors = summary_df[
        (summary_df['SETR Category'] == category) &
        (summary_df['Award level'] == "Bachelor's degree")
    ][['Year', 'Total Graduates']].copy()

    cs_masters = summary_df[
        (summary_df['SETR Category'] == category) &
        (summary_df['Award level'] == "Master's degree")
    ][['Year', 'Total Graduates']].copy()

    if cs_bachelors.empty or cs_masters.empty:
        continue

    cs_masters['Year'] -= 2
    merged = cs_bachelors.merge(cs_masters, on='Year', suffixes=('_Bachelors', '_Masters'))

    ax = merged.plot(x='Year', y=['Total Graduates_Bachelors', 'Total Graduates_Masters'],
                     marker='o', figsize=(12, 5),
                     title=f"{category} – Bachelor's vs Lagged Master's Graduates")
    ax.set_ylabel("Graduates")
    ax.grid(True)

    plt.tight_layout()
    plt.savefig(os.path.join(lag_plot_folder, f"{category.replace('/', '_').replace(' ', '_')}_transition_flow.png"), dpi=300)
    plt.close()
    print("Plot created, no errors")

# === 7. Bar Plot – Top 10 Fields by CAGR ===
growth = summary_df.groupby(['SETR Category', 'Award level'], observed=False)[['Year', 'Total Graduates']].agg(['min', 'max'])
growth.columns = ['Start Year', 'End Year', 'Start Grads', 'End Grads']
growth['Years'] = growth['End Year'] - growth['Start Year']
growth['CAGR'] = (growth['End Grads'] / growth['Start Grads']) ** (1 / growth['Years']) - 1

top_growth = growth[['CAGR']].sort_values('CAGR', ascending=False).head(10).reset_index()
top_growth['Label'] = top_growth['SETR Category'].astype(str) + ' – ' + top_growth['Award level'].astype(str)

plt.figure(figsize=(10, 6))
sns.barplot(x='CAGR', y='Label', data=top_growth, palette='viridis')
plt.title('Top 10 Fields by Compound Annual Growth Rate (CAGR)')
plt.xlabel('CAGR')
plt.ylabel('')
plt.tight_layout()

cagr_plot_folder = 'IPEDS/IPEDS_visualizations/'
os.makedirs(cagr_plot_folder, exist_ok=True)
plt.savefig(os.path.join(cagr_plot_folder, 'top10_cagr_fields.png'), dpi=300)
plt.close()
print("Plot created, no errors")

# === 8. Line Chart – International Dependency Ratio by Field ===
summary_df['Dependency Ratio'] = summary_df['US Nonresident Graduates'] / summary_df['Total Graduates']
pivot = summary_df.pivot_table(index='Year', columns='SETR Category', values='Dependency Ratio')
pivot.plot(title="Dependency on Nonresident Students by Field", figsize=(14, 6))
plt.tight_layout()
plt.savefig('IPEDS/IPEDS_visualizations/dependency_ratio_by_field.png', dpi=300)
plt.close()
print("Plot created, no errors")

# === 9. Line Plot – Degree Pipeline in All Fields ===
pipeline_folder = 'IPEDS/IPEDS_visualizations/IPEDS_visuals_pipeline'
os.makedirs(pipeline_folder, exist_ok=True)

for category in setr_categories:
    eng_df = summary_df[summary_df['SETR Category'] == category]
    pipeline = eng_df.pivot_table(index='Year', columns='Award level', values='Total Graduates')

    # Only plot if all three degree levels are present
    required_levels = ["Bachelor's degree", "Master's degree", "Doctor's degree – research/scholarship"]
    if not all(level in pipeline.columns for level in required_levels):
        continue

    subset = pipeline[required_levels]

    subset.plot(title=f"{category} Degree Pipeline Over Time", figsize=(14, 6))
    plt.tight_layout()
    filename = f"{category.replace('/', '_').replace(' ', '_')}_pipeline.png"
    plt.savefig(os.path.join(pipeline_folder, filename), dpi=300)
    plt.close()
    print("Plot created, no errors")

# === 10. Horizontal Bar – Residency Distribution by Degree Level ===
dist = summary_df.groupby('Award level', observed=False)[['US Graduates', 'US Nonresident Graduates']].sum()
dist_percent = dist.div(dist.sum(axis=1), axis=0)
dist_percent.plot(kind='barh', stacked=True, title="Residency Distribution by Award Level", figsize=(10, 6))
plt.tight_layout()
plt.savefig('IPEDS/IPEDS_visualizations/residency_distribution_by_award.png', dpi=300)
plt.close()
print("Plot created, no errors")

# === 11. Heatmap – Nonresident Share of Doctorate Graduates by Field ===
heat_df = summary_df[
    summary_df['Award level'] == "Doctor's degree – research/scholarship"
].pivot(index='Year', columns='SETR Category', values='Dependency Ratio')
plt.figure(figsize=(14, 6))
sns.heatmap(heat_df, cmap='Reds')
plt.title("Nonresident Share of Doctorate Graduates by Field (Heatmap)")
plt.tight_layout()
plt.savefig('IPEDS/IPEDS_visualizations/heatmap_nonresident_doctorates.png', dpi=300)
plt.close()
print("Plot created, no errors")

# === 12. Line Chart – Pipeline Attrition Visualization for All Fields ===
attrition_folder = 'IPEDS/IPEDS_visualizations/IPEDS_visuals_pipeline_attrition'
os.makedirs(attrition_folder, exist_ok=True)

for category in setr_categories:
    bachelors = summary_df[
        (summary_df['SETR Category'] == category) & 
        (summary_df['Award level'] == "Bachelor's degree")
    ][['Year', 'Total Graduates']].rename(columns={'Total Graduates': 'Bachelors'}).copy()

    masters = summary_df[
        (summary_df['SETR Category'] == category) & 
        (summary_df['Award level'] == "Master's degree")
    ][['Year', 'Total Graduates']].rename(columns={'Total Graduates': 'Masters'}).copy()

    # Shift master's data back by 2 years to align with bachelor's
    masters['Year'] -= 2

    merged = pd.merge(bachelors, masters, on='Year')
    if merged.empty:
        continue

    merged.plot(x='Year', y=['Bachelors', 'Masters'], marker='o', figsize=(12, 6),
                title=f"{category} – Bachelors vs Lagged Masters")
    plt.tight_layout()
    filename = f"{category.replace('/', '_').replace(' ', '_')}_pipeline_attrition.png"
    plt.savefig(os.path.join(attrition_folder, filename), dpi=300)
    plt.close()
    print("Plot created, no errors")
