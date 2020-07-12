//If the level is finished then pause the music
if (instance_exists(GameLogic)){
	if (GameLogic.levelFinished){
		audio_pause_sound(BackgroundMusic);
	}
}