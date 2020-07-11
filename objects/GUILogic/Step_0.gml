//If the game is stopped, then make the screen gradually darker
//The alpha value is slowly increased to create a darker screen to display GUI elements easier
maxAlpha = 0.7;
darkenRate = 0.02;

if (GameLogic.stopGame){
	if (alpha < maxAlpha){
		alpha += darkenRate;
	} else {
		alpha = maxAlpha;
	}
} else {
	alpha = 0;
}