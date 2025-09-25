# aura_data_pipeline.py
import pandas as pd
import requests

def fetch_ai_data():
    try:
        return pd.DataFrame(requests.get("https://your-cloud-api.com/ai_predictions").json())
    except:
        # fallback simulated
        return pd.DataFrame({
            "Item": [f"Product {i}" for i in range(1,21)],
            "Prediction": pd.np.random.rand(20),
            "Score": pd.np.random.randint(50,100,20)
        })

def fetch_quantum_data():
    try:
        return pd.DataFrame(requests.get("https://your-cloud-api.com/quantum_results").json())
    except:
        return pd.DataFrame({
            "Circuit": [f"Circuit {i}" for i in range(1,11)],
            "Outcome_0": pd.np.random.randint(0,100,10),
            "Outcome_1": pd.np.random.randint(0,100,10)
        })

def fetch_telecom_data():
    try:
        return pd.DataFrame(requests.get("https://your-cloud-api.com/telecom_metrics").json())
    except:
        return pd.DataFrame({
            "Device": [f"Sensor {i}" for i in range(1,16)],
            "Latency_ms": pd.np.random.randint(10,200,15),
            "Throughput_Mbps": pd.np.random.randint(50,500,15)
        })

# Save all to CSV for Excel
ai_data = fetch_ai_data()
quantum_data = fetch_quantum_data()
telecom_data = fetch_telecom_data()

ai_data.to_csv("ai_predictions.csv", index=False)
quantum_data.to_csv("quantum_results.csv", index=False)
telecom_data.to_csv("telecom_metrics.csv", index=False)
