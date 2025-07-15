import os
import pandas as pd

def get_csv_files(directory):
    return sorted([f for f in os.listdir(directory) if f.endswith('.csv')])

def prompt_file_selection(files):
    print("\nAvailable CSV files:")
    for idx, file in enumerate(files):
        print(f"[{idx}] {file}")
    
    selected_indices = input("\nEnter the numbers of the files to compare, separated by commas (e.g., 0,2,4): ")
    try:
        selected = [files[int(i.strip())] for i in selected_indices.split(',')]
        return selected
    except Exception as e:
        print(f"Invalid input: {e}")
        return []

def find_common_columns(files, directory):
    common_cols = None

    for file in files:
        try:
            df = pd.read_csv(os.path.join(directory, file), nrows=0)
            cols = set(df.columns)

            if common_cols is None:
                common_cols = cols
            else:
                common_cols &= cols

            print(f"Loaded: {file} - {len(cols)} columns")

        except Exception as e:
            print(f"Error reading {file}: {e}")
            return []

    return sorted(common_cols) if common_cols else []

if __name__ == "__main__":
    folder = os.path.join(os.path.dirname(__file__), "SED_dataCleaned")
    all_files = get_csv_files(folder)

    selected_files = prompt_file_selection(all_files)
    if not selected_files:
        print("No valid files selected. Exiting.")
    else:
        common_columns = find_common_columns(selected_files, folder)
        print(f"\n✅ {len(common_columns)} common columns across selected files:")
        for col in common_columns:
            print(f"- {col}")
