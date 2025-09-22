# Install xlwings if needed:
# pip install xlwings

import xlwings as xw
import numpy as np
import random
from math import exp

# --- 1. Graph & paths setup ---
edges = {
    'A-B': 1.0, 'A-C': 1.3, 'B-D': 1.1, 'C-D': 0.9, 'D-E': 1.2,
    'E-F': 1.0, 'E-G': 1.5, 'F-H': 1.2, 'G-H': 1.1, 'C-F': 1.4, 'B-G': 1.6
}

paths = [
    ['A-B-D-E-F-H'],  # path0
    ['A-B-D-E-G-H'],  # path1
    ['A-C-D-E-F-H'],  # path2
    ['A-C-D-E-G-H'],  # path3
    ['A-C-F-H'],      # path4
    ['A-B-G-H']       # path5
]

num_paths = len(paths)

def path_cost(p):
    edges_in_path = p[0].split('-')
    return sum(edges[e] for e in [f"{edges_in_path[i]}-{edges_in_path[i+1]}" for i in range(len(edges_in_path)-1)])

path_costs = [path_cost(p) for p in paths]

# --- 2. Build QUBO ---
P = 10.0
Q = np.zeros((num_paths,num_paths))
for i in range(num_paths):
    Q[i,i] = path_costs[i] - P
for i in range(num_paths):
    for j in range(i+1,num_paths):
        Q[i,j] = 2*P
        Q[j,i] = 2*P

def qubo_value(y):
    y = np.array(y)
    return float(y @ Q @ y)

# --- 3. Simulated Annealing ---
def simulated_annealing(initial, iterations=2000, T0=1.0, alpha=0.995):
    y = initial.copy()
    best = y.copy()
    best_val = qubo_value(y)
    T = T0
    for it in range(iterations):
        i = random.randrange(num_paths)
        y_new = y.copy()
        y_new[i] = 1 - y_new[i]
        val_new = qubo_value(y_new)
        val = qubo_value(y)
        dE = val_new - val
        if dE < 0 or random.random() < exp(-dE / T):
            y = y_new
            if val_new < best_val:
                best = y_new.copy()
                best_val = val_new
        T *= alpha
    return best, best_val

def sa_solver_excel():
    init = [0]*num_paths
    init[random.randrange(num_paths)] = 1
    best_y, best_val = simulated_annealing(init, iterations=5000, T0=1.0, alpha=0.999)
    chosen = [paths[i][0] for i,b in enumerate(best_y) if b==1]
    return chosen, best_val

# --- 4. QAOA classical simulation (p=1) ---
num_qubits = num_paths
dim = 2**num_qubits
basis_states = [list(map(int, format(k, f'0{num_qubits}b'))) for k in range(dim)]
E = np.zeros(dim)
for k,bs in enumerate(basis_states):
    E[k] = qubo_value(bs)

def U_cost(gamma):
    return np.diag(np.exp(-1j*gamma*E))

def U_mixer_layer(beta):
    rx = lambda th: np.array([[np.cos(th/2), -1j*np.sin(th/2)],
                              [-1j*np.sin(th/2), np.cos(th/2)]])
    U = np.array([1.0])
    for _ in range(num_qubits):
        U = np.kron(U, rx(2*beta))
    return U

plus = (1/np.sqrt(2)) * np.array([1,1])
psi0 = plus
for _ in range(num_qubits-1):
    psi0 = np.kron(psi0, plus)
psi0 = psi0.reshape(-1)

def qaoa_state(params, p):
    gammas = params[:p]
    betas = params[p:]
    psi = psi0.copy()
    for layer in range(p):
        psi = U_cost(gammas[layer]) @ psi
        psi = U_mixer_layer(betas[layer]) @ psi
    return psi

def qaoa_expectation(params, p):
    psi = qaoa_state(params, p)
    probs = np.abs(psi)**2
    return float(np.dot(probs, E)), probs

def qaoa_solver_excel(p=1, samples=1000):
    best_exp = None
    best_params = None
    best_probs = None
    for _ in range(samples):
        gammas = [random.random()*np.pi for _ in range(p)]
        betas = [random.random()*(np.pi/2) for _ in range(p)]
        params = gammas + betas
        expv, probs = qaoa_expectation(params, p)
        if best_exp is None or expv < best_exp:
            best_exp = expv
            best_params = params.copy()
            best_probs = probs.copy()
    feasible = [(i, basis_states[i], best_probs[i], E[i]) for i in range(dim) if sum(basis_states[i])==1]
    feasible_sorted = sorted(feasible, key=lambda x: -x[2])
    # Return top feasible path(s)
    chosen = [paths[i[0]][0] for i in feasible_sorted[:1]]  # top 1
    return chosen, best_exp

# --- 5. xlwings bridge ---
def update_excel():
    wb = xw.Book.caller()   # assumes this script is called from Excel
    sheet = wb.sheets['Sheet1']

    # SA
    chosen_sa, val_sa = sa_solver_excel()
    sheet.range('A1').value = "SA chosen path"
    sheet.range('B1').value = str(chosen_sa)
    sheet.range('A2').value = "SA objective"
    sheet.range('B2').value = val_sa

    # QAOA
    chosen_qaoa, val_qaoa = qaoa_solver_excel()
    sheet.range('A4').value = "QAOA chosen path"
    sheet.range('B4').value = str(chosen_qaoa)
    sheet.range('A5').value = "QAOA objective"
    sheet.range('B5').value = val_qaoa

# If running standalone (testing), uncomment below:
# update_excel()

Sub RunTelecomSolver()
    RunPython ("import telecom_excel; telecom_excel.update_excel()")
End Sub
