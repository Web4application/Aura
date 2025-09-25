# aura_web_dashboard.py
import streamlit as st
import pandas as pd
import numpy as np
import requests
import plotly.express as px

st.set_page_config(page_title="Aura Ultimate Dashboard", layout="wide")
st.title("🌌 Aura Ultimate Control Panel")

# === Fetch Live Data ===
@st.cache_data(ttl=60)  # refresh every 60 seconds
def get_ai_data():
    try:
        ai_api = "https://your-cloud-api.com/ai_predictions"
        return pd.DataFrame(requests.get(ai_api).json())
    except:
        # fallback simulated data
        return pd.DataFrame({
            "Item": [f"Product {i}" for i in range(1,21)],
            "Prediction": np.random.rand(20),
            "Score": np.random.randint(50,100,20)
        })

@st.cache_data(ttl=60)
def get_quantum_data():
    try:
        quantum_api = "https://your-cloud-api.com/quantum_results"
        return pd.DataFrame(requests.get(quantum_api).json())
    except:
        return pd.DataFrame({
            "Circuit": [f"Circuit {i}" for i in range(1,11)],
            "Outcome_0": np.random.randint(0,100,10),
            "Outcome_1": np.random.randint(0,100,10)
        })

@st.cache_data(ttl=60)
def get_telecom_data():
    try:
        telecom_api = "https://your-cloud-api.com/telecom_metrics"
        return pd.DataFrame(requests.get(telecom_api).json())
    except:
        return pd.DataFrame({
            "Device": [f"Sensor {i}" for i in range(1,16)],
            "Latency_ms": np.random.randint(10,200,15),
            "Throughput_Mbps": np.random.randint(50,500,15)
        })

ai_data = get_ai_data()
quantum_data = get_quantum_data()
telecom_data = get_telecom_data()

# === Interactive Filters / Slicers ===
st.sidebar.header("Filters")
selected_items = st.sidebar.multiselect("AI Items", ai_data["Item"].unique(), default=ai_data["Item"].unique())
selected_circuits = st.sidebar.multiselect("Quantum Circuits", quantum_data["Circuit"].unique(), default=quantum_data["Circuit"].unique())
selected_devices = st.sidebar.multiselect("Devices", telecom_data["Device"].unique(), default=telecom_data["Device"].unique())

# Filter data
ai_filtered = ai_data[ai_data["Item"].isin(selected_items)]
quantum_filtered = quantum_data[quantum_data["Circuit"].isin(selected_circuits)]
telecom_filtered = telecom_data[telecom_data["Device"].isin(selected_devices)]

# === AI Dashboard ===
st.subheader("🤖 AI Predictions")
st.dataframe(ai_filtered)
fig_ai = px.bar(ai_filtered, x="Item", y="Score", color="Prediction", title="AI Prediction Scores")
st.plotly_chart(fig_ai, use_container_width=True)

# === Quantum Dashboard ===
st.subheader("🧬 Quantum Simulation Results")
st.dataframe(quantum_filtered)
fig_quantum = px.line(quantum_filtered, x="Circuit", y=["Outcome_0","Outcome_1"], title="Quantum Outcomes")
st.plotly_chart(fig_quantum, use_container_width=True)

# === Telecom / IoT Dashboard ===
st.subheader("📡 Telecom / IoT Metrics")
st.dataframe(telecom_filtered)
fig_telecom = px.scatter(telecom_filtered, x="Latency_ms", y="Throughput_Mbps", color="Device", size="Throughput_Mbps", title="Telecom Device Performance")
st.plotly_chart(fig_telecom, use_container_width=True)
