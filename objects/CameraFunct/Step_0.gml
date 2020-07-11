if (!GameLogic.levelComplete){ //Only move the camera if the level is not finished
	//Used for smooth camera movement when the camera follow is changed
	//The lower the denominator, the faster the camera
	x += (xTo - x)/cameraTransitionSpeed;
	y += (yTo - y)/cameraTransitionSpeed;

	//if statement that follows either the player object (if it exists) or the current enemy object
	//These two lines make the camera center on the player object
	xTo = (PlayerObject.x*3 + mouse_x)/4;
	yTo = (PlayerObject.y*3 + mouse_y)/4;

	var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
	var pm = matrix_build_projection_ortho(cameraWidth, cameraHeight, 1, 10000);

	//Sets the matrices to the camera
	camera_set_proj_mat(camera, pm);
	camera_set_view_mat(camera, vm);
}