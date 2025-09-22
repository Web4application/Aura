from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from aura_quantum.builder import QuantumCircuitBuilder
from aura_quantum.gates import H, X, Y, Z, CNOT, TOFFOLI
from api.schemas import CircuitRequest, CircuitResponse
from typing import List

app = FastAPI(title="Aura Quantum IDE API")
app.add_middleware(CORSMiddleware, allow_origins=["*"], allow_methods=["*"], allow_headers=["*"])

GATE_MAP = {"H": H, "X": X, "Y": Y, "Z": Z, "CNOT": CNOT, "TOFFOLI": TOFFOLI}

@app.post("/run_circuit", response_model=CircuitResponse)
def run_circuit(request: CircuitRequest):
    builder = QuantumCircuitBuilder(request.n_qubits)
    for op in request.operations:
        gate = GATE_MAP.get(op.gate)
        if gate is None:
            raise ValueError(f"Unknown gate: {op.gate}")
        builder.add_gate(gate, op.targets)
    final_state = builder.run()
    measurement = builder.measure()
    return CircuitResponse(
        final_state=final_state.get().tolist() if hasattr(final_state,"get") else final_state.tolist(),
        measurement=measurement
    )

@app.post("/run_batch_circuits")
def run_batch(circuits: List[CircuitRequest]):
    results = []
    for c in circuits:
        builder = QuantumCircuitBuilder(c.n_qubits)
        for op in c.operations:
            gate = GATE_MAP[op.gate]
            builder.add_gate(gate, op.targets)
        final_state = builder.run()
        measurement = builder.measure()
        results.append({
            "final_state": final_state.get().tolist() if hasattr(final_state,"get") else final_state.tolist(),
            "measurement": measurement
        })
    return results
