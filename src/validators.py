# src/validators.py
from .file_loader import validate_workbook


def assert_valid_workbook(path: str):
ok, report = validate_workbook(path)
if not ok:
raise AssertionError(f"Workbook validation failed: {report}")
return True
