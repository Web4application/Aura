import streamlit as st
import pandas as pd
import pickle
import os
import plotly.express as px

st.set_page_config(page_title="Aura General Dashboard", layout="wide")
st.title("🌌 Aura General Dashboard (.ser-powered)")

ser_folder = "./data/serialized"
ser_files = [f for f in os.listdir(ser_folder) if f.endswith(".ser")]

for ser_file in ser_files:
    path = os.path.join(ser_folder, ser_file)
    with open(path, "rb") as f:
        df = pickle.load(f)
    st.subheader(ser_file.replace(".ser",""))
    st.dataframe(df)
    
    # Plot example for numerical columns
    numeric_cols = df.select_dtypes(include='number').columns
    if len(numeric_cols) > 0:
        for col in numeric_cols:
            fig = px.bar(df, x=df.columns[0], y=col, title=f"{ser_file} - {col}")
            st.plotly_chart(fig, use_container_width=True)
