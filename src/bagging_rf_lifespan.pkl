import os  
import joblib  
import pandas as pd  
import requests  
  
# =========================  
# Load congen-ai models  
# =========================  
STACK_MODEL = "congen-ai/models/stacking_lifespan.pkl"  
BAGGING_MODEL = "congen-ai/models/bagging_rf_lifespan.pkl"  
  
stack_model = joblib.load(STACK_MODEL)  
bagging_model = joblib.load(BAGGING_MODEL)  
  
# Example test input (replace with real data)  
example_data = pd.DataFrame([{  
    "age": 45,  
    "smoking": 1,  
    "exercise": 3,  
    "diet_score": 7,  
    "income": 50000  
}])  
  
# Predict lifespan from models  
stack_pred = stack_model.predict(example_data)[0]  
bagging_pred = bagging_model.predict(example_data)[0]  
  
# =========================  
# Send results to gpt-5-mini  
# =========================  
GPT5_API = os.getenv("GPT5_API", "http://127.0.0.1:8000/complete")  
prompt = f"""  
The ML models predicted:  
- Stacking lifespan: {stack_pred:.2f} years  
- Bagging lifespan: {bagging_pred:.2f} years  
  
Write a clear, human-readable explanation of what this means.  
"""  
  
resp = requests.post(GPT5_API, json={"prompt": prompt, "max_tokens": 200})  
if resp.status_code == 200:  
    print("\n=== GPT-5-Mini Explanation ===")  
    print(resp.json()["completion"])  
else:  
    print("Error:", resp.text)  
