def process_order(order, discounted_amount):
    """Simulate processing an order and returning a receipt."""
    return {"user_id": order["user_id"], "total": discounted_amount}
