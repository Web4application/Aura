import pytest
from src.backend.utils import calculate_discount
from src.backend.orders import process_order

def test_order_flow():
    """Shows interaction between utils and orders modules"""
    order = {"user_id": 1, "amount": 200}
    discounted = calculate_discount("premium", order["amount"])
    receipt = process_order(order, discounted)
    assert receipt["total"] == 180
