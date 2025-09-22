from aura_quantum import AuraQuantumCircuit

engine = AuraQuantumCircuit(3)  # 3-qubit system

# Apply Hadamard on qubit 0
engine.apply_single_qubit_gate(engine.hadamard_gate(), 0)

# Apply CNOT on qubits 0 and 1
engine.apply_multi_qubit_gate(engine.cnot_gate(), [0,1])

# Measure qubit 2
result = engine.measure()
print("Measurement of qubit 2:", result)

# Save state
engine.save_state("quantum_state.npy")

# Load state
engine.load_state("quantum_state.npy")
print("Loaded state:", engine.state)
