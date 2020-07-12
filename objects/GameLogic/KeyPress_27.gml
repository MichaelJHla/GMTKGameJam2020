//The escape key pauses or unpauses the game
paused = paused ? false : true;

//The user can press escape to return to the main menu from either a death screen or a level beat screen
if (levelFinished || gameOver){
	room_goto(IntroScreen);
}