import asyncio
import websockets
import json
from ai_teacher import explain, suggest_next
from math_engine import compute_formula
from chemistry_engine import simulate_reaction
from physics_engine import compute_physics
from quantum_engine import simulate_quantum

async def handle_client(websocket, path):
    async for message in websocket:
        data = json.loads(message)
        response = {}

        if data["type"] == "math":
            result = compute_formula(data["formula"])
            explanation = explain(data["formula"])
            response = {"result": result, "ai_hint": explanation}

        elif data["type"] == "chemistry":
            result = simulate_reaction(data["reactants"], data["products"])
            explanation = explain(data)
            suggestion = suggest_next(data)
            response = {"result": result, "ai_hint": explanation, "ai_suggestion": suggestion}

        elif data["type"] == "physics":
            result = compute_physics(data)
            explanation = explain(data)
            response = {"result": result, "ai_hint": explanation}

        elif data["type"] == "quantum":
            qubits = simulate_quantum(data["circuit"])
            explanation = explain(data)
            suggestion = suggest_next(data)
            response = {"qubits": qubits, "ai_hint": explanation, "ai_suggestion": suggestion}

        await websocket.send(json.dumps(response))

start_server = websockets.serve(handle_client, "localhost", 8765)
asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()
