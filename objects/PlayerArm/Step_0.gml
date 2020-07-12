if (instance_exists(PlayerObject)){ //If the player exists, place the arm and point it in the proper direction
	x = PlayerObject.x;
	y = PlayerObject.y;

	image_angle = point_direction(x, y, mouse_x, mouse_y) + 90;
} else { //Else destroy the instance of the arm
	instance_destroy();
}