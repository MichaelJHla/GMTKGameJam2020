if (!GameLogic.levelFinished){
	if (!place_meeting(x, y, FloorObject)){//Checks if the player is currently on a floor
		livesLeft--;
		if (livesLeft < 1){
			GameLogic.gameOver = true;
			instance_destroy();
		} else {
			x = prevX;
			y = prevY;
		}
	
	}

	//Reduces the cooldown to 0, and avoids overflow
	if (tpCooldown > 0){
		tpCooldown--;
		ready = false;
	} else {
		tpCooldown = 0;
		ready = true;
	}

	//Points the player in the correct direction
	if (mouse_x < x){
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
} else {
	levelEndAlarm --;
	if (levelEndAlarm <= 0){
		y-= 100;
	}
}

