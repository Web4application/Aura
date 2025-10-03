import pytest

def menu():
    print("1. Utils / Discounts")
    print("2. Orders / Processing")
    print("3. API Endpoints")
    choice = input("Select module: ")
    return choice

def run(choice):
    if choice == "1":
        print("Teaching: Utils / Discounts")
        pytest.main(["tests/unit/test_utils.py", "-v"])
    elif choice == "2":
        print("Teaching: Orders / Processing")
        pytest.main(["tests/integration/test_order_flow.py", "-v"])
    elif choice == "3":
        print("Teaching: API Endpoints")
        pytest.main(["tests/e2e/test_api_endpoints.py", "-v"])
    else:
        print("Invalid choice.")

if __name__ == "__main__":
    run(menu())
