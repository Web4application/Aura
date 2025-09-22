from setuptools import setup, find_packages

setup(
    name="aura_quantum",
    version="0.1.0",
    packages=find_packages(),
    install_requires=[
        "numpy",
        "cupy"
    ],
    description="Aura Quantum Circuit Simulator - multi-qubit, GPU-ready, Serai/Aura integration",
    author="Your Name",
)
