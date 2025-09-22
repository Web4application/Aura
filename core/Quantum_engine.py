import numpy as np

try:
    import cupy as cp
    xp = cp  # GPU acceleration if CuPy available
except ImportError:
    xp = np  # fallback to NumPy

class AuraQuantumEngine:
    def __init__(self, qubits=1):
        self.n = qubits
        self.state = xp.zeros(2**qubits, dtype=xp.complex128)
        self.state[0] = 1.0  # Initialize |00...0>

    # -------------------------
    # State Manipulation
    # -------------------------
    def apply_single_qubit_gate(self, gate, target):
        """Apply a single-qubit gate to the target qubit"""
        full_gate = 1
        for i in range(self.n):
            full_gate = xp.kron(full_gate, gate if i == target else xp.eye(2, dtype=xp.complex128))
        self.state = full_gate @ self.state

    def apply_multi_qubit_gate(self, gate_matrix, targets):
        """Apply multi-qubit gate on specified qubits"""
        # targets = list of qubit indices
        full_matrix = xp.eye(1, dtype=xp.complex128)
        for i in range(self.n):
            if i in targets:
                full_matrix = xp.kron(full_matrix, gate_matrix)
            else:
                full_matrix = xp.kron(full_matrix, xp.eye(2, dtype=xp.complex128))
        self.state = full_matrix @ self.state

    # -------------------------
    # Quantum Gates
    # -------------------------
    @staticmethod
    def hadamard_gate():
        return (1 / np.sqrt(2)) * xp.array([[1,1],[1,-1]], dtype=xp.complex128)

    @staticmethod
    def pauli_x_gate():
        return xp.array([[0,1],[1,0]], dtype=xp.complex128)

    @staticmethod
    def cnot_gate():
        return xp.array([[1,0,0,0],
                         [0,1,0,0],
                         [0,0,0,1],
                         [0,0,1,0]], dtype=xp.complex128)

    # -------------------------
    # Measurement
    # -------------------------
    def measure(self):
        """Simulate probabilistic measurement"""
        probabilities = xp.abs(self.state) ** 2
        outcome = xp.random.choice(len(probabilities), p=probabilities.get() if xp == cp else probabilities)
        # Collapse
        collapsed = xp.zeros_like(self.state)
        collapsed[outcome] = 1
        self.state = collapsed
        return outcome

    # -------------------------
    # Utilities
    # -------------------------
    def normalize(self):
        norm = xp.linalg.norm(self.state)
        if norm != 0:
            self.state /= norm

    def tensor_product(self, *states):
        result = states[0]
        for s in states[1:]:
            result = xp.kron(result, s)
        return result
