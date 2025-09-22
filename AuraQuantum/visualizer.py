import numpy as np
import matplotlib.pyplot as plt

def plot_state(state_vector, title="Quantum State Amplitudes"):
    n = int(np.log2(len(state_vector)))
    labels = [bin(i)[2:].zfill(n) for i in range(len(state_vector))]
    amplitudes = np.abs(state_vector)
    
    plt.figure(figsize=(8,4))
    plt.bar(labels, amplitudes)
    plt.ylabel("Amplitude Magnitude")
    plt.title(title)
    plt.show()
