# %% Create smooth animated GIFs by interpolating data values
import pandas as pd
import matplotlib.pyplot as plt
import os
import imageio.v2 as imageio
import numpy as np
from io import BytesIO

# Load your data
summary_df = pd.read_csv("SETR_summary_by_year.csv")

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

# Output directory
output_dir = "SETR_smooth_gifs"
os.makedirs(output_dir, exist_ok=True)

# Doctoral labels to combine
doctorate_levels = [
    "Doctor's degree – research/scholarship",
    "Doctor's degree – professional practice",
    "Doctor's degree – other"
]

def prepare_data_for_field(field, years):
    """Prepare data for a specific field across all years"""
    field_df = summary_df[summary_df['SETR Category'] == field]
    
    yearly_data = []
    for year in years:
        year_df = field_df[field_df['Year'] == year].copy()
        
        # Keep only BMD levels
        bmd_df = year_df[year_df['Award level'].isin(
            ["Bachelor's degree", "Master's degree"] + doctorate_levels
        )].copy()
        
        # Combine doctorate levels
        bmd_df['Award level'] = bmd_df['Award level'].replace(
            doctorate_levels, "Doctorate degree"
        )
        
        # Group by simplified award levels
        dist = bmd_df.groupby('Award level', observed=False)[['US Graduates', 'US Nonresident Graduates']].sum()
        
        if dist.empty:
            yearly_data.append(None)
            continue
            
        # Convert to percentage
        dist_percent = dist.div(dist.sum(axis=1), axis=0)
        
        # Reindex to ensure consistent ordering
        level_order = ["Bachelor's degree", "Master's degree", "Doctorate degree"]
        dist_percent = dist_percent.reindex(level_order)
        
        yearly_data.append(dist_percent)
    
    return yearly_data

def interpolate_data(data1, data2, num_frames=20):
    """Interpolate between two dataframes"""
    interpolated_frames = []
    
    for i in range(num_frames):
        alpha = i / (num_frames - 1)
        interpolated = (1 - alpha) * data1 + alpha * data2
        interpolated_frames.append(interpolated)
    
    return interpolated_frames

def create_chart_image(data, field, year_text):
    """Create a single chart image from data"""
    fig, ax = plt.subplots(figsize=(12, 6))  # Fixed size
    
    data.plot(
        kind='barh',
        stacked=True,
        ax=ax,
        color=['#0A3161', '#cd071e']
    )
    
    ax.set_xlim(0, 1)
    ax.set_title(f"{field} – Bachelor's, Master's, Doctorate Residency Distribution ({year_text})")
    ax.set_xlabel("Proportion of Graduates")
    ax.set_ylabel("Award level")
    
    ax.legend(
        loc='center left',
        bbox_to_anchor=(1.0, 0.5),
        frameon=False,
        title='Residency Status'
    )
    
    fig.subplots_adjust(left=0.25, right=0.75)
    
    # Convert to image with fixed dimensions
    buf = BytesIO()
    plt.savefig(buf, format='png', dpi=100, bbox_inches=None)  # Remove bbox_inches='tight'
    buf.seek(0)
    img = imageio.imread(buf)
    plt.close()
    
    return img

# Process each field
years = sorted(summary_df['Year'].unique())

for field in setr_fields:
    print(f"Processing {field}...")
    
    # Get data for all years
    yearly_data = prepare_data_for_field(field, years)
    
    # Filter out None values
    valid_data = [(year, data) for year, data in zip(years, yearly_data) if data is not None]
    
    if len(valid_data) < 2:
        print(f"⚠️ Not enough data for {field}")
        continue
    
    # Create smooth animation frames
    all_images = []
    
    for i, (year, data) in enumerate(valid_data):
        # Add the actual frame
        img = create_chart_image(data, field, str(year))
        all_images.append(img)
        
        # Hold the frame
        for _ in range(8):
            all_images.append(img)
        
        # Add interpolated frames to next year (except for last year)
        if i < len(valid_data) - 1:
            next_year, next_data = valid_data[i + 1]
            
            # Create interpolated data
            interpolated_data_list = interpolate_data(data, next_data, num_frames=25)
            
            # Create images for interpolated data
            for j, interp_data in enumerate(interpolated_data_list[1:]):  # Skip first to avoid duplication
                # Create a year text that shows transition
                year_progress = (j + 1) / len(interpolated_data_list)
                year_text = f"{year} → {next_year}"
                
                img = create_chart_image(interp_data, field, year_text)
                all_images.append(img)
    
    # Save as GIF
    safe_field = field.replace(" ", "_").replace("/", "_")
    output_path = os.path.join(output_dir, f"{safe_field}_smooth_animation.gif")
    
    # Ensure all images have the same shape
    if all_images:
        # Get the shape of the first image
        target_shape = all_images[0].shape
        print(f"Target shape: {target_shape}")
        
        # Resize all images to match the first one
        resized_images = []
        for img in all_images:
            if img.shape != target_shape:
                print(f"Resizing image from {img.shape} to {target_shape}")
                # Simple crop/pad to match dimensions
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
        print(f"✅ GIF created: {output_path}")
    else:
        print(f"⚠️ No images created for {field}")

print("All animations created!")