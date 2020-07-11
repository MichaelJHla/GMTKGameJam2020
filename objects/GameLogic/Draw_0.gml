//Draws an outline of a circle around the player
circX = mouse_x;
circY = mouse_y;

//Changes the color of the teleport circle if the player is aiming within range or not
if (instance_exists(PlayerObject)){
	if (point_distance(PlayerObject.x, PlayerObject.y, mouse_x, mouse_y) <= PlayerObject.teleportRange - teleportCircleRadius){
		draw_set_color(c_blue);
	} else {
		draw_set_color(c_red);
	}
	draw_circle(circX, circY, teleportCircleRadius, true);
}
