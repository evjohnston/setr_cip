
import pandas as pd
import os
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
import seaborn as sns
import math
from pandas.api.types import CategoricalDtype

from IPEDS_utilities import load_yearly_data, award_level_order, safe_filename

# === 1. Load and summarize data ===
summary_df = load_yearly_data(
    folder_path='IPEDS/IPEDS_additionalCSVs/IPEDS_additionalCSVs_SETR_gradCountCSVs_byCIPCode',
    file_prefix='SETR_data',
    start=2014,
    end=2023
)

summary_df = summary_df.groupby(
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

# === 2. Save summaries ===
setr_categories = summary_df['SETR Category'].unique()
output_folder = 'IPEDS/IPEDS_additionalCSVs/IPEDS_additionalCSVs_SETR_gradCountCSVs_summary'
os.makedirs(output_folder, exist_ok=True)

for category in setr_categories:
    df_cat = summary_df[summary_df['SETR Category'] == category].sort_values(by=['Award level', 'Year'])
    df_cat.to_csv(os.path.join(output_folder, f"{safe_filename(category)}_summary.csv"), index=False)

# === 3. Line plots of total grads ===
plot_folder = 'IPEDS/IPEDS_visualizations/IPEDS_visuals_plotTrendLine'
os.makedirs(plot_folder, exist_ok=True)
plt.style.use('default')
plt.rcParams.update({'font.size': 12, 'figure.figsize': (14, 6)})

for category in setr_categories:
    df_cat = summary_df[summary_df['SETR Category'] == category]
    pivot = df_cat.pivot_table(index='Year', columns='Award level', values='Total Graduates', aggfunc='sum')
    ax = pivot.plot(marker='o', title=f"{category} – Total Graduates by Award Level")
    ax.set(xlabel="Year", ylabel="Total Graduates")
    ax.grid(True, linestyle='--', linewidth=0.5)
    ax.xaxis.set_major_locator(ticker.MaxNLocator(integer=True))
    ax.legend(title='Award Level', bbox_to_anchor=(1.01, 1), loc='upper left', frameon=False)
    plt.tight_layout()
    plt.savefig(os.path.join(plot_folder, f"{safe_filename(category)}_trend.png"), dpi=300)
    plt.close()

# === 4. Faceted plots ===
faceted_folder = 'IPEDS/IPEDS_visualizations/IPEDS_visuals_plotFaceted'
os.makedirs(faceted_folder, exist_ok=True)
sns.set(style='whitegrid')
summary_df['Award level'] = summary_df['Award level'].astype(
    CategoricalDtype(categories=award_level_order, ordered=True)
)

for category in setr_categories:
    cat_df = summary_df[summary_df['SETR Category'] == category]
    levels = [lvl for lvl in award_level_order if lvl in cat_df['Award level'].unique()]
    fig, axes = plt.subplots(math.ceil(len(levels)/2), 2, figsize=(14, 4 * math.ceil(len(levels)/2)))
    axes = axes.flatten()
    for i, level in enumerate(levels):
        sub = cat_df[cat_df['Award level'] == level]
        ax = axes[i]
        ax.plot(sub['Year'], sub['US Graduates'], marker='o', label='U.S. Residents')
        ax.plot(sub['Year'], sub['US Nonresident Graduates'], marker='o', label='Nonresidents')
        ax.set(title=level, xlabel="Year", ylabel="Graduates")
        ax.legend()
        ax.grid(True)
        ax.set_xticks(sub['Year'])
        ax.set_xticklabels(sub['Year'], rotation=45)
    for j in range(i + 1, len(axes)):
        fig.delaxes(axes[j])
    fig.suptitle(f"{category} – U.S. vs Nonresident Graduates", fontsize=16)
    plt.tight_layout(rect=[0, 0, 1, 0.97])
    plt.savefig(os.path.join(faceted_folder, f"{safe_filename(category)}_us_vs_nonres.png"), dpi=300)
    plt.close()

# === 5. Line: Dependency Index ===
summary_df['Dependency Index'] = summary_df['US Nonresident Graduates'] / summary_df['Total Graduates']
summary_df.pivot_table(index='Year', columns='SETR Category', values='Dependency Index')    .plot(title="International Talent Dependency by Field", figsize=(14, 6))
plt.tight_layout()
plt.show()

# === 6. Lag plot for pipeline ===
lag_folder = "IPEDS/IPEDS_visualizations/IPEDS_visuals_plotLagged"
os.makedirs(lag_folder, exist_ok=True)
for category in setr_categories:
    b = summary_df[(summary_df['SETR Category'] == category) & (summary_df['Award level'] == "Bachelor's degree")]
    m = summary_df[(summary_df['SETR Category'] == category) & (summary_df['Award level'] == "Master's degree")]
    if b.empty or m.empty:
        continue
    m['Year'] -= 2
    merged = b.merge(m, on='Year', suffixes=('_Bachelors', '_Masters'))
    ax = merged.plot(x='Year', y=['Total Graduates_Bachelors', 'Total Graduates_Masters'], marker='o',
                     title=f"{category} – Bachelors vs Lagged Masters", figsize=(12, 5))
    ax.set_ylabel("Graduates")
    ax.grid(True)
    plt.tight_layout()
    plt.savefig(os.path.join(lag_folder, f"{safe_filename(category)}_transition_flow.png"), dpi=300)
    plt.close()
