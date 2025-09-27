import { qubitZero, applyGate, H, X, CNOT, measure } from './quantum.js';
import { Visualizer } from './visualizer.js';
import { AITeacher } from './lab.js';

// Multi-qubit example
let qubits = [qubitZero(), qubitZero()];
applyGate(H, qubits[0]);    // Apply Hadamard on first qubit
applyGate(CNOT, qubits);    // Apply CNOT (entanglement)
Visualizer.drawQuantumMulti(qubits, "quantumCanvasMulti");

// AI guidance
const suggestions = qubits.map(q => AITeacher.guideQuantum(q));
console.log("AI Quantum Guidance:", suggestions);
