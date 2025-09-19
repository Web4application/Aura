import pandas as pd
import os

def load_excel(file_path):
    # Normalize .xlsl to .xlsx
    if file_path.endswith(".xlsl"):
        fixed_path = file_path[:-1] + "x"   # replace .xlsl with .xlsx
        if not os.path.exists(fixed_path):
            os.rename(file_path, fixed_path)
        file_path = fixed_path
    return pd.ExcelFile(file_path)

def save_excel(writer_path, dfs: dict):
    # dfs = {sheet_name: dataframe}
    if writer_path.endswith(".xlsl"):
        writer_path = writer_path[:-1] + "x"   # save as .xlsx internally
    with pd.ExcelWriter(writer_path, engine="openpyxl") as writer:
        for sheet, df in dfs.items():
            df.to_excel(writer, sheet_name=sheet, index=False)
