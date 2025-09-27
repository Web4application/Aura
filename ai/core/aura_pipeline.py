import pandas as pd
import pickle
import os
from datetime import datetime

# Folder setup
data_folder = "./data"
datasets_folder = os.path.join(data_folder, "datasets")
ser_folder = os.path.join(data_folder, "serialized")
snapshots_folder = os.path.join(data_folder, "snapshots")

for folder in [datasets_folder, ser_folder, snapshots_folder]:
    os.makedirs(folder, exist_ok=True)

# Example: add multiple datasets (AI, Quantum, Telecom)
datasets = {
    "AI_Predictions": pd.DataFrame({"Task": ["Predict","Classify","Simulate"], "Score":[0.95,0.87,0.99]}),
    "Quantum_Results": pd.DataFrame({"Circuit":["C1","C2"], "Outcome_0":[12,34], "Outcome_1":[45,23]}),
    "Telecom_Metrics": pd.DataFrame({"Device":["D1","D2"], "Latency_ms":[12,34], "Throughput_Mbps":[100,200]}),
}

# Save datasets as CSV and .ser
for name, df in datasets.items():
    csv_path = os.path.join(datasets_folder, f"{name}.csv")
    ser_path = os.path.join(ser_folder, f"{name}.ser")
    df.to_csv(csv_path, index=False)
    with open(ser_path, "wb") as f:
        pickle.dump(df, f)
    print(f"✅ {name} saved as CSV and .ser")
