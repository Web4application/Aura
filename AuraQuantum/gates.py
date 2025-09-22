import numpy as np
try:
    import cupy as cp
    xp = cp
except ImportError:
    xp = np

# Single qubit gates
H = (1/np.sqrt(2)) * xp.array([[1,1],[1,-1]], dtype=xp.complex128)
X = xp.array([[0,1],[1,0]], dtype=xp.complex128)
Y = xp.array([[0,-1j],[1j,0]], dtype=xp.complex128)
Z = xp.array([[1,0],[0,-1]], dtype=xp.complex128)
I = xp.eye(2, dtype=xp.complex128)

# Multi-qubit gates
CNOT = xp.array([[1,0,0,0],
                 [0,1,0,0],
                 [0,0,0,1],
                 [0,0,1,0]], dtype=xp.complex128)

TOFFOLI = xp.eye(8, dtype=xp.complex128)
TOFFOLI[6,6], TOFFOLI[7,7] = 0,0
TOFFOLI[6,7], TOFFOLI[7,6] = 1,1
