//Plays the end of level music
if (!played){
	audio_play_sound(WinnerSound, 1000, 0);
	played = true;
}

//If the level is finished, change the level finished status to true
GameLogic.levelFinished = true;

if (room_next(room) != -1){
	global.curLevel = room + 1;
} else {
	global.curLevel = 0;
}

alarm[0] = 60;