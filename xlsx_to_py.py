import pandas as pd
import os

def excel_to_csvs(excel_file, output_dir=None):
    # Load the Excel file
    xls = pd.ExcelFile(excel_file)
    
    # Set the output directory
    if output_dir is None:
        output_dir = os.path.splitext(excel_file)[0] + "_csvs"
    os.makedirs(output_dir, exist_ok=True)
    
    # Iterate through each sheet and save as CSV
    for sheet_name in xls.sheet_names:
        df = pd.read_excel(xls, sheet_name)
        
        # Clean sheet name for filename safety
        safe_sheet_name = "".join(c if c.isalnum() or c in " _-" else "_" for c in sheet_name)
        
        csv_file = os.path.join(output_dir, f"{safe_sheet_name}.csv")
        df.to_csv(csv_file, index=False)
        print(f"Saved: {csv_file}")

# Run the function with your file
excel_to_csvs("c2023_a.xlsx")
