import requests

BASE_URL = "http://localhost:8000"

def test_api_user_order():
    """Simulate full API flow"""
    user = {"name": "Alice", "email": "alice@example.com"}
    res = requests.post(f"{BASE_URL}/users", json=user)
    assert res.status_code == 201
    user_id = res.json()["id"]

    order = {"user_id": user_id, "amount": 150}
    res = requests.post(f"{BASE_URL}/orders", json=order)
    assert res.status_code == 201
    assert res.json()["total"] == 150
