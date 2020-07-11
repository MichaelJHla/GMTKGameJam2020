if (levelFinished){ //If the level is finished, the player will be taken to either the next level or the menu
	if (room_next(room) != -1){
		room_goto_next();
	} else {
		room_goto(IntroScreen);
	}
}
