import os
import json
import asyncio
from fastapi import FastAPI, WebSocket, WebSocketDisconnect
from fastapi.responses import FileResponse, JSONResponse
from fastapi.staticfiles import StaticFiles
from watchgod import awatch

app = FastAPI()

STORIES_DIR = "stories"
HISTORY_FILE = os.path.join(STORIES_DIR, "history.json")

# Serve static files (dashboard + charts)
app.mount("/stories", StaticFiles(directory=STORIES_DIR), name="stories")


class ConnectionManager:
    def __init__(self):
        self.active_connections: set[WebSocket] = set()

    async def connect(self, websocket: WebSocket):
        await websocket.accept()
        self.active_connections.add(websocket)

    def disconnect(self, websocket: WebSocket):
        self.active_connections.discard(websocket)

    async def broadcast(self, message: str):
        to_remove = []
        for ws in list(self.active_connections):
            try:
                await ws.send_text(message)
            except Exception:
                to_remove.append(ws)
        for ws in to_remove:
            self.disconnect(ws)


manager = ConnectionManager()


@app.get("/")
def index():
    """Serve the interactive dashboard"""
    return FileResponse(os.path.join(STORIES_DIR, "dashboard_interactive.html"))


@app.get("/history")
def get_history():
    """Serve the current history.json"""
    if not os.path.exists(HISTORY_FILE):
        return JSONResponse(content=[], status_code=200)
    with open(HISTORY_FILE, "r", encoding="utf-8") as f:
        return JSONResponse(content=json.load(f))


@app.websocket("/ws")
async def websocket_endpoint(websocket: WebSocket):
    """WebSocket endpoint for live updates"""
    await manager.connect(websocket)
    try:
        # Send current snapshot immediately
        if os.path.exists(HISTORY_FILE):
            with open(HISTORY_FILE, "r", encoding="utf-8") as f:
                await websocket.send_text(json.dumps(json.load(f)))
        else:
            await websocket.send_text(json.dumps([]))

        # Keep alive
        while True:
            await asyncio.sleep(60)
    except WebSocketDisconnect:
        pass
    finally:
        manager.disconnect(websocket)


# Background task: watch stories folder
async def watch_stories():
    os.makedirs(STORIES_DIR, exist_ok=True)
    async for changes in awatch(STORIES_DIR):
        # Whenever ANY file changes in stories/, reload history.json and broadcast
        try:
            if os.path.exists(HISTORY_FILE):
                with open(HISTORY_FILE, "r", encoding="utf-8") as f:
                    payload = json.dumps(json.load(f))
            else:
                payload = json.dumps([])
        except Exception:
            payload = json.dumps([])

        await manager.broadcast(payload)


@app.on_event("startup")
async def startup_event():
    asyncio.create_task(watch_stories())