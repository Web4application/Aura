import pandas as pd
import numpy as np
from sklearn.linear_model import LinearRegression
import openpyxl
from pathlib import Path

# Path to your Aura workbook
AURA_FILE = Path("../data/Aura.xlsl")  # treat .xlsl like .xlsx

def load_data(sheet_name="SimulationInput"):
    """Load input parameters from the Aura workbook."""
    df = pd.read_excel(AURA_FILE, sheet_name=sheet_name)
    return df

def run_simulation(params_df, iterations=1000):
    """
    Simple Monte Carlo simulation:
    Population growth with noise.
    """
    results = []
    for _, row in params_df.iterrows():
        base_growth = row["growth_rate"]
        population = row["initial_population"]

        sims = []
        for _ in range(iterations):
            pop = population
            for _ in range(row["years"]):
                # stochastic growth with random noise
                pop = pop * (1 + base_growth + np.random.normal(0, 0.01))
            sims.append(pop)
        results.append({
            "scenario": row["scenario"],
            "expected_population": np.mean(sims),
            "std_dev": np.std(sims)
        })
    return pd.DataFrame(results)

def train_ai_model(results_df, params_df):
    """
    Train regression model to predict population outcome
    from growth rate & years.
    """
    X = params_df[["growth_rate", "years"]].values
    y = results_df["expected_population"].values
    model = LinearRegression().fit(X, y)

    # Predictions
    preds = model.predict(X)
    results_df["ai_prediction"] = preds
    return results_df, model

def export_results(results_df, sheet_name="SimulationResults"):
    """Write results back to the Aura workbook."""
    with pd.ExcelWriter(AURA_FILE, engine="openpyxl", mode="a", if_sheet_exists="replace") as writer:
        results_df.to_excel(writer, sheet_name=sheet_name, index=False)

def main():
    print("Loading Aura data...")
    params_df = load_data()

    print("Running Monte Carlo simulation...")
    results_df = run_simulation(params_df)

    print("Training AI model...")
    results_df, model = train_ai_model(results_df, params_df)

    print("Exporting results back to Aura workbook...")
    export_results(results_df)

    print("Demo complete! Results in 'SimulationResults' sheet.")

if __name__ == "__main__":
    main()
