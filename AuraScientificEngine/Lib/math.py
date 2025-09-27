from sympy import sympify, N

def compute_formula(formula_str):
    try:
        expr = sympify(formula_str)
        return float(N(expr))
    except Exception as e:
        return f"Error: {e}"
