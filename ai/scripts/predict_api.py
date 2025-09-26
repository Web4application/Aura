from fastapi import FastAPI, Request
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
import joblib

app = FastAPI()

# Enable CORS so your frontend can access this API
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # Change this in production
    allow_methods=["*"],
    allow_headers=["*"],
)

# Load your trained model
model = joblib.load("models/trained_model.pkl")  # Update path as needed

# Define expected input format
class InputData(BaseModel):
    features: list  # or use Dict[str, Any] if you're passing more complex inputs

@app.post("/predict")
async def predict(data: InputData):
    try:
        prediction = model.predict([data.features])
        return {"prediction": int(prediction[0])}
    except Exception as e:
        return {"error": str(e)}
