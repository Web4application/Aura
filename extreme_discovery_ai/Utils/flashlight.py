import cv2
import numpy as np

def frame_brightness(frame):
    return np.mean(cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY))

def turn_on_flashlight():
    print("Flashlight / IR activated for low-light detection.")
