# tests/run_interactive.py
import pytest

def list_modules():
    print("Available modules to explore:")
    print("1. Utils / Discounts")
    print("2. Orders / Processing")
    print("3. API Endpoints")
    choice = input("Enter the number of the module you want to explore: ")
    return choice

def run_module_tests(choice):
    if choice == "1":
        print("\n--- Teaching: Utils / Discounts ---")
        print("Learn how discounts are applied to users and edge cases.")
        pytest.main(["tests/unit/test_utils.py", "-v"])
    elif choice == "2":
        print("\n--- Teaching: Orders / Processing ---")
        print("Learn the interaction between orders and discounts modules.")
        pytest.main(["tests/integration/test_order_flow.py", "-v"])
    elif choice == "3":
        print("\n--- Teaching: API Endpoints ---")
        print("Explore full system usage via API requests.")
        pytest.main(["tests/e2e/test_api_endpoints.py", "-v"])
    else:
        print("Invalid choice. Please try again.")

if __name__ == "__main__":
    choice = list_modules()
    run_module_tests(choice)
