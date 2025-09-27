from quantum import qubit_zero, H, apply_gate, measure

q = qubit_zero()
q = apply_gate(H, q)   # Superposition
result, probs = measure(q)
print("Measurement:", result)
print("Probabilities:", probs)
