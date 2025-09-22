# Install required packages if not already installed
# pip install qiskit qiskit-optimization

from qiskit_optimization import QuadraticProgram
from qiskit_optimization.algorithms import MinimumEigenOptimizer
from qiskit.algorithms import QAOA
from qiskit.primitives import Sampler
import numpy as np

# --- 1. Graph & path setup ---
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

def path_cost(p):
    edges_in_path = p[0].split('-')
    return sum(edges[e] for e in [f"{edges_in_path[i]}-{edges_in_path[i+1]}" for i in range(len(edges_in_path)-1)])

path_costs = [path_cost(p) for p in paths]
num_paths = len(paths)

# --- 2. Build QUBO matrix ---
P = 10.0  # penalty weight for single-path selection
qubo_matrix = np.zeros((num_paths, num_paths))
for i in range(num_paths):
    qubo_matrix[i,i] = path_costs[i] - P
for i in range(num_paths):
    for j in range(i+1, num_paths):
        qubo_matrix[i,j] = 2*P
        qubo_matrix[j,i] = 2*P

# --- 3. Create QuadraticProgram ---
qp = QuadraticProgram()
for i in range(num_paths):
    qp.binary_var(name=f"x{i}")

# Set objective using QUBO
linear = {f"x{i}": qubo_matrix[i,i] for i in range(num_paths)}
quadratic = {}
for i in range(num_paths):
    for j in range(i+1, num_paths):
        if qubo_matrix[i,j] != 0:
            quadratic[(f"x{i}", f"x{j}")] = qubo_matrix[i,j]

qp.minimize(linear=linear, quadratic=quadratic)

# --- 4. QAOA setup ---
sampler = Sampler()            # default simulator backend
qaoa = QAOA(sampler=sampler, reps=2)  # p=2 layers
optimizer = MinimumEigenOptimizer(qaoa)

# --- 5. Solve ---
result = optimizer.solve(qp)
print("Optimal path selection (binary vector):", result.x)
print("Objective value:", result.fval)

# Map chosen paths
chosen_paths = [paths[i][0] for i,b in enumerate(result.x) if b==1]
print("Chosen path(s):", chosen_paths)
