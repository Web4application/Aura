def calculate_discount(user_type, amount):
    """Apply discount based on user type."""
    if amount <= 0:
        return 0
    if user_type == "premium":
        return amount * 0.9
    return amount
