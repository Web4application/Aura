# aura_middleware.py
import pandas as pd
import requests
import json

# === AI Predictions ===
ai_api = "https://your-cloud-api.com/ai_predictions"
ai_data = pd.DataFrame(requests.get(ai_api).json())
ai_data.to_csv("ai_predictions.csv", index=False)

# === Quantum Simulation Outputs ===
quantum_api = "https://your-cloud-api.com/quantum_results"
quantum_data = pd.DataFrame(requests.get(quantum_api).json())
quantum_data.to_csv("quantum_results.csv", index=False)

# === Telecom / IoT Metrics ===
telecom_api = "https://your-cloud-api.com/telecom_metrics"
telecom_data = pd.DataFrame(requests.get(telecom_api).json())
telecom_data.to_csv("telecom_metrics.csv", index=False)

print("All live data fetched and saved for Aura Dashboard.")
