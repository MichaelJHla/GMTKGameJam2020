if (instance_exists(PlayerObject) && !stopGame){ //Checks to make sure the player is still movable in its state
	//This if statement limits the range of teleporting to within the player teleport range distance
	//Because of the (-) operator, the small circle must be completely inside the larger circle
	if (point_distance(PlayerObject.x, PlayerObject.y, mouse_x, mouse_y) <= PlayerObject.teleportRange - teleportCircleRadius){
		//These first two lines are used to calculate a random angle to move within the circle
		a = random(1) * 2 * pi;
		r = teleportCircleRadius * sqrt(random(.8));
	
		//Move the player object to the random location
		PlayerObject.x = mouse_x + (r * cos(a));
		PlayerObject.y = mouse_y + (r * sin(a));
	}
} else if (levelFinished){ //If the level is finished, the player will be taken to either the next level or the menu
	if (room_next(room) != -1){
		room_goto_next();
	} else {
		room_goto(IntroScreen);
	}
}
