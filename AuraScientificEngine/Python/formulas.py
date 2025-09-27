import numpy as np

# Trigonometry
def atan(x):
    return np.arctan(x)

def atan2(y, x):
    return np.arctan2(y, x)

# Physics formulas
def kinetic_energy(mass, velocity):
    return 0.5 * mass * velocity**2

def potential_energy(mass, height, g=9.81):
    return mass * g * height
