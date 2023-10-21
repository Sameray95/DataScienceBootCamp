import cv2
import numpy as np

# upload image
uploaded_image = cv2.imread('pokhara.jpg') 

# Draw a circle
circle_image = uploaded_image.copy()
cv2.circle(circle_image, (250, 250), 50, (0, 0, 255), -1)  # -1 means filled circle

# Draw a rectangle
rectangle_image = uploaded_image.copy()
cv2.rectangle(rectangle_image, (100, 100), (400, 400), (0, 255, 0), -1)  # -1 means filled rectangle

# Draw a line
line_image = uploaded_image.copy()
cv2.line(line_image, (100, 100), (400, 400), (255, 0, 0), 3)  # 3 is the thickness of the line

# Put text on the image
text_image = uploaded_image.copy()
font = cv2.FONT_HERSHEY_SIMPLEX
cv2.putText(text_image, 'Hello World!', (150, 250), font, 2, (255, 255, 255), 3, cv2.LINE_AA)

# Save images
cv2.imwrite('circle_image.png', circle_image)
cv2.imwrite('rectangle_image.png', rectangle_image)
cv2.imwrite('line_image.png', line_image)
cv2.imwrite('text_image.png', text_image)
