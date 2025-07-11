import os
import pandas as pd

# Define paths
base_dir = os.path.join("SED", "SED_Technical_Tables")
xlsx_dir = os.path.join(base_dir, "xlsx")
csv_dir = os.path.join(base_dir, "csv")

# Create directories if they don't exist
os.makedirs(xlsx_dir, exist_ok=True)
os.makedirs(csv_dir, exist_ok=True)

# Move all .xlsx files to the xlsx/ directory (if not already there)
for file in os.listdir(base_dir):
    if file.endswith(".xlsx"):
        src = os.path.join(base_dir, file)
        dst = os.path.join(xlsx_dir, file)
        if not os.path.exists(dst):
            os.rename(src, dst)

# Convert .xlsx → .csv
for file in os.listdir(xlsx_dir):
    if file.endswith(".xlsx"):
        xlsx_path = os.path.join(xlsx_dir, file)
        csv_name = os.path.splitext(file)[0] + ".csv"
        csv_path = os.path.join(csv_dir, csv_name)

        try:
            df = pd.read_excel(xlsx_path, engine="openpyxl")
            df.to_csv(csv_path, index=False)
            print(f"✅ Converted: {file} → {csv_name}")
        except Exception as e:
            print(f"❌ Failed: {file} ({e})")
