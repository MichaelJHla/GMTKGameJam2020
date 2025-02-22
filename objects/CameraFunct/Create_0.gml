camera = camera_create(); //Create a new camera
cameraWidth = 3200;
cameraHeight = 1792;

//Sets the initial position of the camera to the player location
x = PlayerObject.x;
y = PlayerObject.y;

//Choose which viewport to use
view_camera[0] = camera;

//Sets a default value
//These variables are going to be set to what the camera will try and reach
xTo = x;
yTo = y;

//This is the denominator value for the transition of the camera.
//The lower the number the faster the transition speed
cameraTransitionSpeed = 2;

//The speed the camera zooms in and out
cameraZoomSpeed = 20;

//The current zoom level
curZoomLevel = 2;

//The max zoom level so that the player cannot zoom in our out too much
maxZoomLevel = 6;