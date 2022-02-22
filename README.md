# Automated Classification with Robotic Manipulation
**Image Processing:**
  - An image of the workspace of the robotic arm is captured.
  - Different objects with a rectangular, square, circular or triangular shapes are placed on a white background in the robot workspace. The objects are black to give the best contrast against the white background.
  - Captured image is then imported into MATLAB using the imread function. The image is cropped in MATLAB so that the image only represents the reachable workspace of the arm and so that the reference point can be the (0,0) position of the image.
  - The image is converted to a grayscale image using the rgb2gray command since most image processing algorithms only work for gray scale images. This image is then stored into another bmp file. 
  - This image is filtered for noise because the image contains noise which can interfere with the processing of the image. This is achieved by using the median value filtering method. 
  - The command medfilt2 is used for the median filtering of “salt and pepper” noise. 
  - In order to remove Gaussian noise, a 5x5 mean filter is implemented using the imfilter command which uses the average value around a particular pixel to represent thepixel value. 
  - After the filtering, the image is complemented using the imcomplement command which replaces all the black values with white and white values with black. This was done to make it easier to see the target objects and target destinations.

  Segmentation and Recognition of Objects and Shape Classification:
  - From the filtered image, we can get the coordinates of the center of each object using the regionprops command for centroids. 
  - We can also use regionprops to get the area of each object in the image using the regionprops(image, 'Area') function. Other regionprops functions will allow us to sort the different objects and targets in the scene according to their respective properties.

  Object’s Position Estimation:
  - It was stated before that one can get the center point of each object using the regionprops(image, ‘Centroid’) function. 
  - This will give us the x and y coordinates of the center of each object in an array. 
  - These coordinates represent how many pixels away from the origin of the image the object is. 
  - The origin is located at the top left corner of the image.
  - We can extract the coordinates for each object from the array and convert them using the scaling factor of 0.0641 to real world measurements which represent how far away from the reference point the objects are, in centimeters.

  Object’s Orientation Estimation:
  - Similar to finding the other properties of the image, one can use regionprops again to find the orientation of each object with respect to the reference point. This can be achieved using the regionprops(image, ‘Orientation’) command.

**Inverse Kinematics:**
- The center coordinates of each object, once converted to real world coordinates in centimeters, can be used to find the transformation A matrices.
- We have two transformation matrices. One for the transformation from the robotic arm gripper to the reference frame of the camera image and one for the transformation from the reference frame to the location of the object. 
- We can multiply these matrices to get the forward kinematic model.
- This can be used to compute the inverse kinematic model. This will return us the exact joint parameters needed to move the robotic arm to the specified object.
