# examples/run_demo.py
"""
Small demonstration: load Aura.xlsl, run a trivial AI model on AI_Input (if present),
run a tiny Qiskit circuit, and persist a Results sheet.

Run: python examples/run_demo.py
"""
from pathlib import Path
import pandas as pd
from src.file_loader import load_workbook, validate_workbook

DATA_PATH = Path("data/Aura.xlsl")


def run_demo():
    print("Loading workbook...", DATA_PATH)
    sheets = load_workbook(DATA_PATH)

    # Simple AI demo: if AI_Input present and numeric features exist, fit a random forest
    if "AI_Input" in sheets:
        df = sheets["AI_Input"].copy()
        numeric_features = [c for c in df.columns if c.startswith("Feature")]
        if numeric_features:
            try:
                from sklearn.ensemble import RandomForestRegressor
                model = RandomForestRegressor(n_estimators=10, random_state=42)
                X = df[numeric_features].astype(float)
                # for demo create a pseudo-target from first feature if Label not numeric
                if "Label" in df.columns and pd.api.types.is_numeric_dtype(df["Label"]):
                    y = df["Label"].astype(float)
                else:
                    y = X.iloc[:, 0] * 0.5 + 1.0
                model.fit(X, y)
                preds = model.predict(X)
                df["Predicted"] = preds
                sheets["AI_Input"] = df
                print("AI demo done — predictions added to AI_Input (Predicted)")
            except Exception as e:
                print("AI demo skipped (missing packages)", e)

    # Simple quantum demo (counts)
    try:
        from qiskit import QuantumCircuit, Aer, execute
        qc = QuantumCircuit(2)
        qc.h([0,1])
        qc.cx(0,1)
        qc.measure_all()
        simulator = Aer.get_backend('qasm_simulator')
        result = execute(qc, backend=simulator, shots=256).result()
        counts = result.get_counts()
        # Attach to Quantum_Results sheet or create it
        qr = pd.DataFrame([{"Run": 1, "Circuit": "Demo-QC", "Energy": None, "Convergence": str(counts)}])
        sheets["Quantum_Results"] = pd.concat([sheets.get("Quantum_Results", pd.DataFrame()), qr], ignore_index=True)
        print("Quantum demo done — counts saved to Quantum_Results")
    except Exception as e:
        print("Quantum demo skipped (Qiskit not installed or backend unavailable):", e)

    # Save back (overwrite) - IMPORTANT: use .xlsx for compatibility, but keep .xlsl if you prefer
    out_path = DATA_PATH
    with pd.ExcelWriter(out_path, engine="openpyxl") as writer:
        for name, df in sheets.items():
            try:
                df.to_excel(writer, sheet_name=name, index=False)
            except Exception as ex:
                print(f"Could not write sheet {name}:", ex)

    print("Saved updated workbook to", out_path)


if __name__ == '__main__':
    run_demo()
