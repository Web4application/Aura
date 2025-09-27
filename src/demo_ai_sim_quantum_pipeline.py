import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
import openpyxl
from pathlib import Path

# Quantum imports
from qiskit import QuantumCircuit, Aer, execute

# Path to Aura workbook
AURA_FILE = Path("../data/Aura.xlsl")

# ---------- AI + SIMULATION PART ----------

def load_data(sheet_name="SimulationInput"):
    return pd.read_excel(AURA_FILE, sheet_name=sheet_name)

def run_simulation(params_df, iterations=1000):
    results = []
    for _, row in params_df.iterrows():
        base_growth = row["growth_rate"]
        population = row["initial_population"]

        sims = []
        for _ in range(iterations):
            pop = population
            for _ in range(row["years"]):
                pop = pop * (1 + base_growth + np.random.normal(0, 0.01))
            sims.append(pop)
        results.append({
            "scenario": row["scenario"],
            "expected_population": np.mean(sims),
            "std_dev": np.std(sims)
        })
    return pd.DataFrame(results)

def train_ai_model(results_df, params_df):
    X = params_df[["growth_rate", "years"]].values
    y = results_df["expected_population"].values
    model = LinearRegression().fit(X, y)

    preds = model.predict(X)
    results_df["ai_prediction"] = preds
    return results_df, model

def export_results(df, sheet_name):
    with pd.ExcelWriter(AURA_FILE, engine="openpyxl", mode="a", if_sheet_exists="replace") as writer:
        df.to_excel(writer, sheet_name=sheet_name, index=False)

# ---------- QUANTUM PART ----------

def load_quantum_instructions(sheet_name="QuantumInput"):
    """
    Expected sheet format:
    | qubits | gate | target | param |
    | 2      | h    | 0      |       |
    | 2      | cx   | 0,1    |       |
    | 2      | rx   | 0      | 1.57  |
    """
    return pd.read_excel(AURA_FILE, sheet_name=sheet_name)

def build_and_run_quantum(qdf, shots=1024):
    num_qubits = int(qdf["qubits"].max())  # assume first row has total qubits
    qc = QuantumCircuit(num_qubits)

    for _, row in qdf.iterrows():
        gate = str(row["gate"]).lower()
        targets = str(row["target"]).split(",")
        param = row.get("param", None)

        if gate == "h":
            qc.h(int(targets[0]))
        elif gate == "x":
            qc.x(int(targets[0]))
        elif gate == "rx" and pd.notna(param):
            qc.rx(float(param), int(targets[0]))
        elif gate == "cx":
            qc.cx(int(targets[0]), int(targets[1]))

    qc.measure_all()

    backend = Aer.get_backend("qasm_simulator")
    job = execute(qc, backend, shots=shots)
    counts = job.result().get_counts()
    return counts

def format_quantum_results(counts):
    df = pd.DataFrame(list(counts.items()), columns=["state", "counts"])
    return df

# ---------- MAIN ----------

def main():
    # AI + Simulation
    print("Loading simulation data...")
    params_df = load_data()
    print("Running Monte Carlo simulation...")
    results_df = run_simulation(params_df)
    print("Training AI model...")
    results_df, _ = train_ai_model(results_df, params_df)
    export_results(results_df, "SimulationResults")

    # Quantum
    print("Loading quantum instructions...")
    qdf = load_quantum_instructions()
    print("Building and running quantum circuit...")
    counts = build_and_run_quantum(qdf)
    q_results = format_quantum_results(counts)
    export_results(q_results, "QuantumResults")

    print("✅ Demo complete: AI + Simulation + Quantum results written to Aura.xlsl")

if __name__ == "__main__":
    main()
