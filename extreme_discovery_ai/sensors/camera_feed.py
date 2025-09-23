import cv2

cap = cv2.VideoCapture(0)

def get_local_frame():
    ret, frame = cap.read()
    if ret:
        return frame
    return None
