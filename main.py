from src.file_loader import load_workbook, save_workbook
from src.utils import print_sheet_overview
from src.ai_pipeline import train_ai_model
from src.quantum_pipeline import simple_qaoa_circuit

# Load Aura.xlsl
sheets = load_workbook("data/Aura.xlsl")
print_sheet_overview(sheets)

# Example AI training on AI_Input
if "AI_Input" in sheets:
    df = sheets["AI_Input"]
    features = [col for col in df.columns if "Feature" in col]
    target = "Label"  # categorical, but for demo using regression
    df, model = train_ai_model(df, features, features[0])
    sheets["AI_Input"] = df

# Example quantum execution
qc_counts = simple_qaoa_circuit()
print("Quantum circuit result:", qc_counts)

# Save back to Aura.xlsl
save_workbook(sheets, "data/Aura.xlsl")
