if (GameLogic.stopGame){ //If a stop status is true, then do the following to dim the screen
	draw_set_color(c_black);
	draw_set_alpha(alpha);//This variable is gradually increased in the Step function
	draw_rectangle(0, 0, CameraFunct.cameraWidth, CameraFunct.cameraHeight, false);
	draw_set_alpha(1);
}

//If the level is finished, display some text about what they can do
if (GameLogic.levelFinished){
	draw_set_color(c_white);
	draw_set_font(GUISmallFont);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/3, "Level complete. Click anywhere to continue.\nPress ESC to return to menu.");
} else if (GameLogic.gameOver){ //If the player dies, display some text saying they died
	draw_set_color(c_white);
	draw_set_font(GUISmallFont);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/3, "Your laziness was the end of you.\nClick or press R to restart the level or ESC to return to the menu.");
} else if (GameLogic.paused){ //If the game is paused, display some text saying the game is paused
	draw_set_color(c_white);
	draw_set_font(GUILargeFont);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/3, "PAUSED");
} 
