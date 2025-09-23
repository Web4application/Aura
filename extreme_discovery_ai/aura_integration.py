import time
import json
import requests

AURA_API_URL = "http://aura-server/api/events"

def send_to_aura(detection, decision):
    event = {
        "type": detection['type'],
        "object": detection.get('class_id'),
        "confidence": detection['confidence'],
        "quantum_decision": decision,
        "timestamp": time.time()
    }
    try:
        requests.post(AURA_API_URL, json=event)
        print("Sent to Aura:", event)
    except Exception as e:
        print("Error sending event to Aura:", e)
