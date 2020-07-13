if (levelFinished){ //If the level is finished, the player will be taken to either the next level or the menu
	if (room_next(room) != -1){
		room_goto_next();
	} else {
		room_goto(IntroScreen);
	}
}

if (gameOver){//If the player dies and they click, the level will restart
	room_restart();
}
