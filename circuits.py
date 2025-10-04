import numpy as np

try:
    import cupy as cp
    xp = cp  # GPU acceleration if available
except ImportError:
    xp = np  # fallback to CPU

class AuraQuantumCircuit:
    def __init__(self, n_qubits):
        self.n = n_qubits
        self.state = xp.zeros(2**n_qubits, dtype=xp.complex128)
        self.state[0] = 1.0  # Initialize |00...0>

    # -------------------------
    # Utility Methods
    # -------------------------
    def normalize(self):
        norm = xp.linalg.norm(self.state)
        if norm != 0:
            self.state /= norm

    def measure(self):
        probs = xp.abs(self.state) ** 2
        outcome = xp.random.choice(len(probs), p=probs.get() if xp == cp else probs)
        collapsed = xp.zeros_like(self.state)
        collapsed[outcome] = 1
        self.state = collapsed
        return outcome

    def save_state(self, filename):
        arr = self.state.get() if xp == cp else self.state
        np.save(filename, arr)

    def load_state(self, filename):
        arr = np.load(filename)
        self.state = xp.array(arr, dtype=xp.complex128)

    def tensor_product(self, *states):
        result = states[0]
        for s in states[1:]:
            result = xp.kron(result, s)
        return result

    # -------------------------
    # Gate Builders
    # -------------------------
    @staticmethod
    def hadamard_gate():
        return (1/np.sqrt(2)) * xp.array([[1,1],[1,-1]], dtype=xp.complex128)

    @staticmethod
    def pauli_x_gate():
        return xp.array([[0,1],[1,0]], dtype=xp.complex128)

    @staticmethod
    def pauli_y_gate():
        return xp.array([[0,-1j],[1j,0]], dtype=xp.complex128)

    @staticmethod
    def pauli_z_gate():
        return xp.array([[1,0],[0,-1]], dtype=xp.complex128)

    @staticmethod
    def cnot_gate():
        return xp.array([[1,0,0,0],
                         [0,1,0,0],
                         [0,0,0,1],
                         [0,0,1,0]], dtype=xp.complex128)

    @staticmethod
    def toffoli_gate():
        g = xp.eye(8, dtype=xp.complex128)
        g[6,6], g[7,7] = 0,0
        g[6,7], g[7,6] = 1,1
        return g

    # -------------------------
    # Gate Application
    # -------------------------
    def apply_single_qubit_gate(self, gate, target):
        full_gate = xp.array([[1]], dtype=xp.complex128)
        for i in range(self.n):
            full_gate = xp.kron(full_gate, gate if i == target else xp.eye(2, dtype=xp.complex128))
        self.state = full_gate @ self.state

    def apply_multi_qubit_gate(self, gate_matrix, targets):
        full_gate = xp.eye(1, dtype=xp.complex128)
        t_set = set(targets)
        target_idx = 0
        for i in range(self.n):
            if i in t_set:
                dim = gate_matrix.shape[0] if target_idx == 0 else 1
                full_gate = xp.kron(full_gate, gate_matrix if target_idx == 0 else xp.eye(dim, dtype=xp.complex128))
                target_idx += 1
            else:
                full_gate = xp.kron(full_gate, xp.eye(2, dtype=xp.complex128))
        self.state = full_gate @ self.state

function saveCircuit(filename="circuit.json") {
    const data = JSON.stringify(circuit, null, 2);
    const blob = new Blob([data], {type: "application/json"});
    const a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = filename;
    a.click();
}

function loadCircuit(file) {
    const reader = new FileReader();
    reader.onload = e => {
        circuit = JSON.parse(e.target.result);
        renderCircuit();
    };
    reader.readAsText(file);
}
