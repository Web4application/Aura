import pytest
from src.backend.utils import calculate_discount

def test_calculate_discount_basic():
    """Premium users get 10% off"""
    assert calculate_discount("premium", 100) == 90

def test_calculate_discount_standard():
    """Standard users pay full price"""
    assert calculate_discount("standard", 100) == 100

def test_calculate_discount_zero_amount():
    """Zero amount returns zero"""
    assert calculate_discount("premium", 0) == 0
