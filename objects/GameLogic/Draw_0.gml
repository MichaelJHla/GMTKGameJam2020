//Draws an outline of a circle around the player
circX = mouse_x;
circY = mouse_y;

//This if statement will avoid the game crashing when the player object does not exist
if (instance_exists(PlayerObject)){
	//Changes the color of the teleport circle if the player is aiming within range or not
	//Because of the (-) operator, the small circle must be completely inside the larger circle
	if (point_distance(PlayerObject.x, PlayerObject.y, mouse_x, mouse_y) <= PlayerObject.teleportRange - teleportCircleRadius){
		draw_set_color(c_blue); //Blue circle if the character can move
	} else {
		draw_set_color(c_red); //Red if the character is unable to move
	}
	draw_circle(circX, circY, teleportCircleRadius, true);
}
