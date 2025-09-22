from .circuit import AuraQuantumCircuit

class QuantumCircuitBuilder:
    def __init__(self, n_qubits):
        self.n = n_qubits
        self.engine = AuraQuantumCircuit(n_qubits)
        self.gate_sequence = []

    def add_gate(self, gate, targets):
        self.gate_sequence.append((gate, targets))

    def run(self):
        for gate, targets in self.gate_sequence:
            if gate.shape[0] == 2:
                self.engine.apply_single_qubit_gate(gate, targets[0])
            else:
                self.engine.apply_multi_qubit_gate(gate, targets)
        self.engine.normalize()
        return self.engine.state

    def measure(self):
        return self.engine.measure()
