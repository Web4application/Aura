# src/file_loader.py
from pathlib import Path
import pandas as pd
import json
import yaml

SCHEMA_PATH = Path("schema/aura_schema.yaml")


def _read_schema():
    if not SCHEMA_PATH.exists():
        raise FileNotFoundError("schema/aura_schema.yaml not found. Add schema before running validation.")
    with open(SCHEMA_PATH, "r", encoding="utf-8") as f:
        return yaml.safe_load(f)


def load_workbook(path: str):
    """Load .xlsx or .xlsl and return dict of DataFrames."""
    p = Path(path)
    if not p.exists():
        raise FileNotFoundError(path)
    suffix = p.suffix.lower()
    # allow .xlsl as branded extension
    if suffix == ".xlsl":
        # still readable by pandas/openpyxl
        pass
    xl = pd.ExcelFile(p)
    sheets = {name: xl.parse(name) for name in xl.sheet_names}
    return sheets


def validate_workbook(path: str):
    """Validate workbook against schema. Returns (ok: bool, report: dict)."""
    schema = _read_schema()
    sheets = load_workbook(path)
    report = {
        "file": str(path),
        "checks": []
    }
    ok = True

    for sheet_name, spec in schema.get("sheets", {}).items():
        required = spec.get("required", False)
        if required and sheet_name not in sheets:
            ok = False
            report["checks"].append({"sheet": sheet_name, "ok": False, "reason": "missing required sheet"})
            continue
        if sheet_name in sheets:
            df = sheets[sheet_name]
            # check columns
            cols_ok = True
            missing_cols = []
            for col in spec.get("columns", []):
                cname = col["name"]
                if cname not in df.columns:
                    if col.get("required", False):
                        cols_ok = False
                        missing_cols.append(cname)
            if not cols_ok:
                ok = False
                report["checks"].append({"sheet": sheet_name, "ok": False, "missing_columns": missing_cols})
            else:
                report["checks"].append({"sheet": sheet_name, "ok": True})
    return ok, report


if __name__ == "__main__":
    import sys
    target = sys.argv[1] if len(sys.argv) > 1 else "data/Aura.xlsl"
    ok, r = validate_workbook(target)
    print("VALID:" if ok else "INVALID:")
    print(json.dumps(r, indent=2))
