from fastapi import FastAPI
import torch

app = FastAPI(title="Aura AI Worker")

@app.post("/run")
async def run_model(prompt: str):
    # Example stub: could integrate HuggingFace or LLaMA
    return {"output": f"AI response to: {prompt}"}
