from setuptools import setup, find_packages
from setuptools import setup, find_packages

setup(
    name="aura_quantum_ide",
    version="0.1",
    packages=find_packages(),
    install_requires=[
        "fastapi",
        "uvicorn",
        "numpy",
        "cupy",
        "pydantic",
        "matplotlib"
    ],
    include_package_data=True,
    python_requires=">=3.9"
)
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
