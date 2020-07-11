//If the game is stopped, then make the screen gradually darker
if (GameLogic.stopGame){
	if (alpha < 0.6){
		alpha += 0.01;
	} else {
		alpha = 0.6;
	}
} else {
	alpha = 0;
}