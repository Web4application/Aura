import sympy as sp

def solve_equations(equations, variables):
    """
    Solve linear/non-linear symbolic equations
    equations: list of strings, e.g. ['x + y = 10', 'x - y = 4']
    variables: string of variable names, e.g. 'x y'
    """
    syms = sp.symbols(variables)
    eqs = [sp.Eq(sp.sympify(eq.split('=')[0]), sp.sympify(eq.split('=')[1])) for eq in equations]
    solution = sp.solve(eqs, syms)
    return solution
