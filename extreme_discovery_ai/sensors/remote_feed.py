import base64
import numpy as np
from utils.mqtt_client import mqtt_client

remote_frames = []

def on_remote_frame(client, userdata, message):
    try:
        img_bytes = base64.b64decode(message.payload.decode('utf-8'))
        nparr = np.frombuffer(img_bytes, np.uint8)
        frame = cv2.imdecode(nparr, cv2.IMREAD_COLOR)
        remote_frames.append(frame)
    except:
        pass

mqtt_client.subscribe("extreme_discovery/remote_frame")
mqtt_client.on_message = on_remote_frame

def get_remote_frames():
    frames = remote_frames.copy()
    remote_frames.clear()
    return frames
