if (!place_meeting(x, y, FloorObject)){//Checks if the player is currently on a floor
	//If not, then the game is ended and the instance is destroyed
	GameLogic.gameOver = true;
	instance_destroy();
}

//Reduces the cooldown to 0, and avoids overflow
if (tpCooldown > 0){
	tpCooldown--;
	ready = false;
} else {
	tpCooldown = 0;
	ready = true;
}