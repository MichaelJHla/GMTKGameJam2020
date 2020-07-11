if (GameLogic.stopGame){ //If a stop status is true, then do the following to dim the screen
	draw_set_color(c_black);
	draw_set_alpha(alpha);
	draw_rectangle(0, 0, CameraFunct.cameraWidth, CameraFunct.cameraHeight, false);
	draw_set_alpha(1);
}