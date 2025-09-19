import pandas as pd

def print_sheet_overview(sheets: dict):
    for name, df in sheets.items():
        print(f"Sheet: {name}, Rows: {len(df)}, Columns: {len(df.columns)}")
