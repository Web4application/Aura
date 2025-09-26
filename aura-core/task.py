import redis
import os
import json

REDIS_URL = os.getenv("REDIS_URL", "redis://localhost:6379/0")
redis_client = redis.Redis.from_url(REDIS_URL)

def enqueue_task(session_id: str, task_name: str):
    task = {"session_id": session_id, "task": task_name}
    redis_client.lpush("aura:tasks", json.dumps(task))
    return task
