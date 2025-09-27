import numpy as np

# Basic qubit state: |0> = [1,0], |1> = [0,1]
def qubit_zero():
    return np.array([1,0], dtype=complex)

def qubit_one():
    return np.array([0,1], dtype=complex)

# Superposition: alpha|0> + beta|1>
def superposition(alpha, beta):
    state = np.array([alpha, beta], dtype=complex)
    norm = np.linalg.norm(state)
    return state / norm

# Quantum gates
H = (1/np.sqrt(2)) * np.array([[1,1],[1,-1]])   # Hadamard gate
X = np.array([[0,1],[1,0]])                     # Pauli-X gate

def apply_gate(gate, qubit):
    return np.dot(gate, qubit)

# Measure qubit probabilistically
def measure(qubit):
    probs = np.abs(qubit)**2
    result = np.random.choice([0,1], p=probs)
    return result, probs
