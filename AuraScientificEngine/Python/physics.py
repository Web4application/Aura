import numpy as np

def vector_angle(v1, v2):
    """Return angle (radians) between two vectors"""
    v1, v2 = np.array(v1), np.array(v2)
    cos_theta = np.dot(v1, v2) / (np.linalg.norm(v1) * np.linalg.norm(v2))
    return np.arccos(np.clip(cos_theta, -1.0, 1.0))

def compute_physics(data):
    m = data.get("mass",1)
    v = data.get("velocity",1)
    ke = 0.5 * m * v**2
    return {"kinetic_energy": ke}
