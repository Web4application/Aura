from sklearn.ensemble import RandomForestRegressor
import pandas as pd

def train_ai_model(data: pd.DataFrame, features: list, target: str):
    X = data[features]
    y = data[target]
    model = RandomForestRegressor(n_estimators=100, max_depth=10, random_state=42)
    model.fit(X, y)
    preds = model.predict(X)
    data[f"{target}_predicted"] = preds
    return data, model
