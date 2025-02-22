if (!GameLogic.stopGame && tpCooldown <= 0){ //Checks to make sure the player is still movable in its state
	//This if statement limits the range of teleporting to within the player teleport range distance
	//Because of the (-) operator, the small circle must be completely inside the larger circle
	if (point_distance(x, y, mouse_x, mouse_y) <= teleportRange - GameLogic.teleportCircleRadius){
		firstTeleport = true; //Allows events taht occur after the first teleport to happen
		
		//These record the previous X and Y
		prevX = x;
		prevY = y;
		
		//These two lines are used to calculate a random angle to move within the circle
		a = random(1) * 2 * pi;
		r = GameLogic.teleportCircleRadius * sqrt(random(.8));
	
		//Move the player object to the random location
		x = round(mouse_x + (r * cos(a)));
		y = round(mouse_y + (r * sin(a)));
		
		attemptedX = x;
		attemptedY = y;
		
		tpCooldown = maxTPCooldown; //Resets the cooldown if the player succesfully teleported
		
		//Play a sound when they try and teleport
		audio_sound_pitch(LandingSound, random_range(0.8, 1.2));
		audio_play_sound(LandingSound, 0, 0);
	}
}