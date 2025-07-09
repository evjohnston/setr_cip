import pandas as pd
import matplotlib.pyplot as plt
import os
import imageio.v2 as imageio
import numpy as np
from io import BytesIO

summary_df = pd.read_csv("IPEDS/IPEDS_additionalCSVs/SETR_summary_by_year.csv")

setr_fields = [
    "Artificial Intelligence", "Biotechnology and Synthetic Biology", "Cryptography",
    "Lasers", "Materials Science", "Neuroscience", "Robotics",
    "Semiconductors", "Space", "Sustainable Energy Technology"
]

output_dir = "IPEDS/IPEDS_visualizations/IPEDS_visuals_gifs"
os.makedirs(output_dir, exist_ok=True)

doctorate_levels = [
    "Doctor's degree – research/scholarship",
    "Doctor's degree – professional practice",
    "Doctor's degree – other"
]

def prepare_data_for_field(field, years):
    field_df = summary_df[summary_df['SETR Category'] == field]
    yearly_data = []
    for year in years:
        year_df = field_df[summary_df['Year'] == year].copy()
        bmd_df = year_df[year_df['Award level'].isin(["Bachelor's degree", "Master's degree"] + doctorate_levels)].copy()
        bmd_df['Award level'] = bmd_df['Award level'].replace(doctorate_levels, "Doctorate degree")
        dist = bmd_df.groupby('Award level', observed=False)[['US Graduates', 'US Nonresident Graduates']].sum()
        if dist.empty:
            yearly_data.append(None)
            continue
        dist_percent = dist.div(dist.sum(axis=1), axis=0)
        level_order = ["Bachelor's degree", "Master's degree", "Doctorate degree"]
        dist_percent = dist_percent.reindex(level_order)
        yearly_data.append(dist_percent)
    return yearly_data

def interpolate_data(data1, data2, num_frames=20):
    return [(1 - i / (num_frames - 1)) * data1 + (i / (num_frames - 1)) * data2 for i in range(num_frames)]

def create_chart_image(data, field, year_text):
    fig, ax = plt.subplots(figsize=(12, 6))
    data.plot(kind='barh', stacked=True, ax=ax, color=['#0A3161', '#cd071e'])
    ax.set_xlim(0, 1)
    ax.set_title(f"{field} – Bachelor's, Master's, Doctorate Residency Distribution ({year_text})")
    ax.set_xlabel("Proportion of Graduates")
    ax.set_ylabel("Award level")
    ax.legend(loc='center left', bbox_to_anchor=(1.0, 0.5), frameon=False, title='Residency Status')
    fig.subplots_adjust(left=0.25, right=0.75)
    buf = BytesIO()
    plt.savefig(buf, format='png', dpi=100)
    buf.seek(0)
    img = imageio.imread(buf)
    plt.close()
    return img

years = sorted(summary_df['Year'].unique())

for field in setr_fields:
    yearly_data = prepare_data_for_field(field, years)
    valid_data = [(year, data) for year, data in zip(years, yearly_data) if data is not None]
    if len(valid_data) < 2:
        continue
    all_images = []
    for i, (year, data) in enumerate(valid_data):
        img = create_chart_image(data, field, str(year))
        all_images.extend([img] * 5)
        if i < len(valid_data) - 1:
            next_year, next_data = valid_data[i + 1]
            interpolated_data_list = interpolate_data(data, next_data, num_frames=40)
            for j, interp_data in enumerate(interpolated_data_list[1:]):
                year_text = f"{year} → {next_year}"
                img = create_chart_image(interp_data, field, year_text)
                all_images.append(img)
    safe_field = field.replace(" ", "_").replace("/", "_")
    output_path = os.path.join(output_dir, f"{safe_field}_smooth_animation.gif")
    if all_images:
        target_shape = all_images[0].shape
        resized_images = []
        for img in all_images:
            if img.shape != target_shape:
                if len(img.shape) == 3:
                    resized_img = np.zeros(target_shape, dtype=img.dtype)
                    min_h = min(img.shape[0], target_shape[0])
                    min_w = min(img.shape[1], target_shape[1])
                    resized_img[:min_h, :min_w] = img[:min_h, :min_w]
                    resized_images.append(resized_img)
                else:
                    resized_images.append(img)
            else:
                resized_images.append(img)
        imageio.mimsave(output_path, resized_images, fps=10, loop=0)

print("All animations created.")
