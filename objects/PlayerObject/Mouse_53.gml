if (!GameLogic.stopGame && tpCooldown <= 0){ //Checks to make sure the player is still movable in its state
	//This if statement limits the range of teleporting to within the player teleport range distance
	//Because of the (-) operator, the small circle must be completely inside the larger circle
	if (point_distance(x, y, mouse_x, mouse_y) <= teleportRange - GameLogic.teleportCircleRadius){
		//These first two lines are used to calculate a random angle to move within the circle
		a = random(1) * 2 * pi;
		r = GameLogic.teleportCircleRadius * sqrt(random(.8));
	
		//Move the player object to the random location
		x = mouse_x + (r * cos(a));
		y = mouse_y + (r * sin(a));
		
		tpCooldown = maxTPCooldown; //Resets the cooldown if the player succesfully teleported
		
		if (place_meeting(x, y, FloorObject)){//Checks if the player is currently on a floor
			//Play a sound if they land on the floor
			audio_sound_pitch(LandingSound, random_range(0.8, 1.2));
			audio_play_sound(LandingSound, 0, 0);
		}
	}
}