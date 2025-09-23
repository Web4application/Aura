from flask import Flask, jsonify
from qiskit import QuantumCircuit, Aer, execute

app = Flask(__name__)

@app.route('/run-bell-state')
def run_bell_state():
    # Create a quantum circuit with 2 qubits
    qc = QuantumCircuit(2, 2)
    # Add a Hadamard gate to qubit 0, putting it in superposition
    qc.h(0)
    # Add a CNOT gate to entangle qubit 0 and 1
    qc.cx(0, 1)
    # Measure the qubits
    qc.measure([0, 1], [0, 1])
    
    # Use a local simulator to run the circuit
    simulator = Aer.get_backend('qasm_simulator')
    job = execute(qc, simulator, shots=1024)
    result = job.result()
    counts = result.get_counts(qc)
    
    # The result will almost always be '00' or '11' due to entanglement
    return jsonify(counts)

if __name__ == '__main__':
    app.run(debug=True)
