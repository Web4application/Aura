import pandas as pd
from pathlib import Path

def load_workbook(file_path: str):
    """Load Aura.xlsx or Aura.xlsl as pandas sheets."""
    path = Path(file_path)
    if not path.exists():
        raise FileNotFoundError(f"{file_path} not found.")
    
    # If custom .xlsl, treat as .xlsx internally
    ext = path.suffix.lower()
    if ext == ".xlsl":
        ext = ".xlsx"
    xl = pd.ExcelFile(path)
    
    sheets = {sheet_name: xl.parse(sheet_name) for sheet_name in xl.sheet_names}
    return sheets

def save_workbook(data_dict: dict, file_path: str):
    """Save dictionary of DataFrames to .xlsx or .xlsl."""
    with pd.ExcelWriter(file_path, engine="openpyxl") as writer:
        for sheet_name, df in data_dict.items():
            df.to_excel(writer, sheet_name=sheet_name, index=False)
