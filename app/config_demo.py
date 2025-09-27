# demo_app.py
import streamlit as st
import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
import matplotlib.pyplot as plt

# --- App Title ---
st.title("⚡ Aura Research & Project Hub Demo")
st.subheader("Bridging AI • Data • Quantum • STEM")

# --- Upload CSV for Data Analysis ---
st.header("📊 Data Analysis Module")
uploaded_file = st.file_uploader("Upload a CSV file", type=["csv"])

if uploaded_file:
    df = pd.read_csv(uploaded_file)
    st.write("Preview of Data:", df.head())

    # Basic Stats
    st.write("Summary Statistics:", df.describe())

    # Linear Regression Example
    numeric_cols = df.select_dtypes(include=np.number).columns.tolist()
    if len(numeric_cols) >= 2:
        x_col = st.selectbox("Select X column", numeric_cols)
        y_col = st.selectbox("Select Y column", numeric_cols)

        X = df[[x_col]].values
        y = df[y_col].values
        model = LinearRegression().fit(X, y)
        pred = model.predict(X)

        st.write(f"Model Coeff: {model.coef_[0]}, Intercept: {model.intercept_}")
        
        # Plot
        fig, ax = plt.subplots()
        ax.scatter(X, y, label="Data")
        ax.plot(X, pred, color="red", label="Fit")
        ax.set_xlabel(x_col)
        ax.set_ylabel(y_col)
        ax.legend()
        st.pyplot(fig)

# --- AI Assistant Mock ---
st.header("🤖 AI Assistant")
prompt = st.text_area("Ask Aura a question:")
if st.button("Run AI"):
    st.write(f"Aura AI Response: [placeholder] → '{prompt}'")

# --- Quantum Hook Demo ---
st.header("⚛️ Quantum Computing Demo (Mock)")
qubits = st.slider("Select number of qubits", 1, 8, 2)
st.write(f"Simulating {qubits}-qubit superposition...")
st.latex(r"|\psi\rangle = \frac{1}{\sqrt{2}}(|0\rangle + |1\rangle)^{\otimes %d}" % qubits)

# --- STEM Sandbox ---
st.header("🔬 STEM Sandbox")
x = np.linspace(0, 10, 100)
y = np.sin(x)
fig, ax = plt.subplots()
ax.plot(x, y)
ax.set_title("Sine Wave Example")
st.pyplot(fig)

st.success("✅ Aura demo environment loaded successfully!")
