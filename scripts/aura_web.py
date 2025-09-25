import streamlit as st
import pandas as pd
import pickle
import os
import plotly.express as px

st.set_page_config(page_title="Aura Dashboard", layout="wide")
st.title("🌌 Aura Dashboard (.ser-powered)")

ser_folder = "./data/serialized"
ser_files = [f for f in os.listdir(ser_folder) if f.endswith(".ser")]

for ser_file in ser_files:
    path = os.path.join(ser_folder, ser_file)
    with open(path, "rb") as f:
        df = pickle.load(f)
    st.subheader(ser_file.replace(".ser",""))
    st.dataframe(df)
    
    # Plot numeric columns
    numeric_cols = df.select_dtypes(include='number').columns
    for col in numeric_cols:
        fig = px.bar(df, x=df.columns[0], y=col, title=f"{ser_file} - {col}")
        st.plotly_chart(fig, use_container_width=True)
