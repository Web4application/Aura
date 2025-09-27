# tests/test_validate_workbook.py
from src.validators import assert_valid_workbook


def test_aura_file_present_and_valid():
    # adjust path if your data folder is different
    assert assert_valid_workbook("data/Aura.xlsl")
