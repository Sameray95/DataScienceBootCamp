import cv2
import numpy as np

# Initialize the video capture
cap = cv2.VideoCapture(0)  # 0 for the default webcam

# Create a background subtractor
bg_subtractor = cv2.createBackgroundSubtractorMOG2()

while True:
    # Read a frame from the webcam
    ret, frame = cap.read()

    # Apply the background subtractor
    fg_mask = bg_subtractor.apply(frame)

    # Show the original frame and the foreground mask
    cv2.imshow('Original Frame', frame)
    cv2.imshow('Foreground Mask', fg_mask)

    k = cv2.waitKey(30)
    if k == 20:  # Check if the 'Esc' key is pressed
        break

# Release the video capture and destroy all OpenCV windows
cap.release()
cv2.destroyAllWindows()
