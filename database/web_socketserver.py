import asyncio, websockets, json
from math_engine import compute_formula
from chemistry_engine import simulate_reaction
from physics_engine import compute_physics
from quantum_engine import simulate_quantum
from ai_teacher import explain, suggest_next

async def handle_client(ws, path):
    async for msg in ws:
        data = json.loads(msg)
        response = {}

        if data["type"]=="math":
            response["result"] = compute_formula(data["formula"])
            response["ai_hint"] = explain(data["formula"])
        elif data["type"]=="chemistry":
            response["result"] = simulate_reaction(data["reactants"], data["products"])
            response["ai_hint"] = explain(data)
            response["ai_suggestion"] = suggest_next(data)
        elif data["type"]=="physics":
            response["result"] = compute_physics(data)
            response["ai_hint"] = explain(data)
        elif data["type"]=="quantum":
            response["qubits"] = simulate_quantum(data["circuit"])
            response["ai_hint"] = explain(data)
            response["ai_suggestion"] = suggest_next(data)

        await ws.send(json.dumps(response))

start_server = websockets.serve(handle_client, "localhost", 8765)
asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()
