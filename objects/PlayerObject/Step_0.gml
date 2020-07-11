if (!place_meeting(x, y, FloorObject)){
	GameLogic.gameOver = true;
	instance_destroy();
}