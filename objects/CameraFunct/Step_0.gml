if (!GameLogic.stopGame && instance_exists(PlayerObject)){ //Only move the camera if the game is still going
	//Used for smooth camera movement when the camera follow is changed
	//The lower the denominator, the faster the camera
	x += round((xTo - x)/cameraTransitionSpeed);
	y += round((yTo - y)/cameraTransitionSpeed);

	//if statement that follows either the player object (if it exists) or the current enemy object
	//These two lines make the camera center on the player object
	xTo = PlayerObject.x;
	yTo = PlayerObject.y;

	var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
	var pm = matrix_build_projection_ortho(cameraWidth, cameraHeight, 1, 10000);

	//Sets the matrices to the camera
	camera_set_proj_mat(camera, pm);
	camera_set_view_mat(camera, vm);
}