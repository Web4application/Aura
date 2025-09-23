import time
import cv2
from sensors.camera_feed import get_local_frame
from sensors.remote_feed import get_remote_frames
from detection_modules import object_detection, anomaly_detection, resource_detection, disaster_detection
from utils.quantum_utils import quantum_future_decision, simulate_teleport
from utils.flashlight import frame_brightness, turn_on_flashlight
from aura_integration import send_to_aura
from utils.mqtt_client import mqtt_client

detection_history = []

try:
    while True:
        frame = get_local_frame()
        if frame_brightness(frame) < 60:
            turn_on_flashlight()

        remote_frames = get_remote_frames()
        frames_to_process = [frame] + remote_frames

        for f in frames_to_process:
            all_detections = (
                object_detection.detect_objects(f) +
                anomaly_detection.detect_anomalies(f) +
                resource_detection.detect_resources(f) +
                disaster_detection.detect_disasters(f)
            )

            if all_detections:
                decisions = quantum_future_decision(all_detections)
                teleported = simulate_teleport(decisions)

                for idx, det in enumerate(all_detections):
                    x1, y1, x2, y2 = det['x1'], det['y1'], det['x2'], det['y2']
                    cv2.rectangle(f,(x1,y1),(x2,y2),(0,255,0) if det['type']=="object" else (0,0,255),2)
                    cv2.putText(f,f"{det['type']}:{teleported[idx]}",(x1,y1-10), cv2.FONT_HERSHEY_SIMPLEX,0.9,(0,255,0),2)
                    send_to_aura(det, teleported[idx])
                    detection_history.append(det)

            cv2.imshow("Extreme Discovery + Quantum AI", f)

        key = cv2.waitKey(1) & 0xFF
        if key==ord('q'):
            break

finally:
    cv2.destroyAllWindows()
    mqtt_client.loop_stop()
