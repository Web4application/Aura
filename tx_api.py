from fastapi import FastAPI
from pydantic import BaseModel
from web3 import Web3
from fastapi.middleware.cors import CORSMiddleware
import os

# Use environment variable for RPC endpoint
FADAKA_RPC = os.getenv("FADAKA_RPC", "http://localhost:8545")
w3 = Web3(Web3.HTTPProvider(FADAKA_RPC))

app = FastAPI()

# CORS (allow all origins for demo, restrict in prod)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

class TxRequest(BaseModel):
    tx_hash: str

@app.post("/track")
def track_transaction(req: TxRequest):
    try:
        tx = w3.eth.get_transaction(req.tx_hash)
        receipt = w3.eth.get_transaction_receipt(req.tx_hash)
        return {
            "hash": tx.hash.hex(),
            "from": tx["from"],
            "to": tx["to"],
            "value_fdak": float(w3.from_wei(tx["value"], "ether")),
            "gas_used": receipt["gasUsed"],
            "gas_price_gwei": float(w3.from_wei(tx["gasPrice"], "gwei")),
            "block_number": tx["blockNumber"],
            "status": "Success" if receipt["status"] == 1 else "Failed",
            "confirmations": w3.eth.block_number - tx["blockNumber"]
        }
    except Exception as e:
        return {"error": str(e)}
