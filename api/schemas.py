from pydantic import BaseModel
from typing import List

class GateOperation(BaseModel):
    gate: str              # e.g., "H", "CNOT", "TOFFOLI"
    targets: List[int]     # qubit indices

class CircuitRequest(BaseModel):
    n_qubits: int
    operations: List[GateOperation]

class CircuitResponse(BaseModel):
    final_state: List[complex]
    measurement: int
