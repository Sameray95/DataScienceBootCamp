
import cv2

# Load the uploaded image
uploaded_image = cv2.imread('hand.png')

# Convert the image to grayscale
gray_image = cv2.cvtColor(uploaded_image, cv2.COLOR_BGR2GRAY)

# Apply Canny edge detection
edges = cv2.Canny(gray_image, 100, 200)

# Find contours of the edges
contours, _ = cv2.findContours(edges, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

# Draw contours on the original image
cv2.drawContours(uploaded_image, contours, -1, (0, 255, 0), 2)

# Display the image with edges
cv2.imshow('Image with Edges', uploaded_image)
cv2.waitKey(0)
cv2.destroyAllWindows()
