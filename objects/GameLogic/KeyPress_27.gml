//The escape key pauses or unpauses the game
paused = paused ? false : true;

//The user can press escape to return to the main menu
if (levelFinished){
	room_goto(IntroScreen);
}