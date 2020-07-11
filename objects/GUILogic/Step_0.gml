if (levelFinished || gameOver || paused){ //If any of these are true, begin a stop the game status
	stopGame = true;
} else {
	stopGame = false;
}

//If the game is stopped, then make the screen gradually darker
if (stopGame){
	if (alpha < 0.6){
		alpha += 0.01;
	} else {
		alpha = 0.6;
	}
} else {
	alpha = 0;
}