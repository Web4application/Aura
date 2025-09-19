from qiskit import QuantumCircuit, Aer, execute

def simple_qaoa_circuit():
    qc = QuantumCircuit(2)
    qc.h([0,1])
    qc.cx(0,1)
    qc.measure_all()
    simulator = Aer.get_backend('qasm_simulator')
    result = execute(qc, backend=simulator, shots=1024).result()
    counts = result.get_counts()
    return counts
